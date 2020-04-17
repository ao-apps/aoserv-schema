/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2009, 2010, 2012, 2018, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoserv-schema.
 *
 * aoserv-schema is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aoserv-schema is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

create table ticket."Ticket" (
  id integer primary key,
  brand text not null, -- The brand that the ticket originated from
  reseller text not null, -- The currently allocated reseller (escalataion level) - should never be allocated to a auto-escelate reseller - how to enforce in PostgreSQL?
  accounting text, -- The accounting code that submitted the ticket, if available
  "language" text not null,
  created_by text, -- The business_administrator who created the ticket, if available
  category integer, -- An optional category
  ticket_type text not null,
  from_address "com.aoindustries.net"."Email", -- The from email address, if submitted by email
  summary text not null, -- From email subject
  details text, -- Directly submitted or converted from email, cannot be changed
  raw_email text, -- Only available when submitted via email
  open_date timestamp with time zone not null,
  client_priority text not null,
  admin_priority text,
  -- TODO: Make an enum both in PostgreSQL and Java
  status text not null,
  status_timeout timestamp with time zone, -- Will change back to "open" at this time
  contact_emails text not null, -- Comma/space-separated, populated to include cc
  contact_phone_numbers text not null, -- Comma-separated
  internal_notes text not null, -- May be modified, filtered from client
  -- Enforce status/status_timeout consistency
  check (
    case
        when status in ('junk', 'deleted', 'closed', 'open') then (status_timeout is null)
        else (status_timeout is not null)
    end
  ),
  -- Enforce time consistency
  check (status_timeout is null or status_timeout>=open_date)
);
grant all                            on ticket."Ticket" to aoadmin;
grant select, insert, update, delete on ticket."Ticket" to aoserv_app;




/* Conversion:
insert into
    ticket."Ticket"
select
    id,
    'AOINDUSTRIES',
    accounting,
    'en',
    created_by,
    case
        when ticket_type='Accounting' then '19'
        when ticket_type='AOServ' then '92'
        when ticket_type='CGI' then '23'
        when ticket_type='Control Panel' then '109'
        when ticket_type='CVS' then '55'
        when ticket_type='DNS/Host Names' then '57'
        when ticket_type='Email' then '1'
        when ticket_type='InterBase' then '18'
        when ticket_type='Java Virtual Machine' then '24'
        when ticket_type='Logging/Stats' then '64'
        when ticket_type='MySQL' then '13'
        when ticket_type='NOTE: Install Note' then null
        when ticket_type='Performance' then '98'
        when ticket_type='PHP' then '36'
        when ticket_type='PostgreSQL' then '16'
        when ticket_type='Shell Account' then '44'
        when ticket_type='Tickets' then '102'
        when ticket_type='TODO: Event' then null
        when ticket_type='TODO: Hardware' then '104'
        when ticket_type='TODO: Monitoring' then '100'
        when ticket_type='TODO: Payment' then '21'
        when ticket_type='TODO: Reliability' then '99'
        when ticket_type='TODO: Security' then '66'
        when ticket_type='TODO: Support Tools' then '101'
        when ticket_type='Websites' then '49'
        when ticket_type='XML' then null
        when ticket_type='' or ticket_type is null then null
        else ticket_type -- Cause error
    end :: integer,
    case when
        ticket_type in ('TODO: Event', 'NOTE: Install Note') then 'internal'
        else 'support'
    end,
    null,
    '(No summary)',
    details,
    null,
    open_date,
    client_priority,
    admin_priority,
    case
        when status='Admin Hold' then 'hold'
        when status='Admin Kill' then 'deleted'
        when status='Bounced' then 'bounced'
        when status='Client Hold' then 'hold'
        when status='Client Kill' then 'deleted'
        when status='Completed' then 'closed'
        when status='New' then 'open'
        when status='Underway' then 'open'
        else 'bad_status'
    end,
    case
        when status in ('Admin Hold', 'Bounced', 'Client Hold') then (now()+'1 month'::interval)
        else null
    end,
    contact_emails,
    contact_phone_numbers,
    ''
from
    tickets_20090611
;
*/
