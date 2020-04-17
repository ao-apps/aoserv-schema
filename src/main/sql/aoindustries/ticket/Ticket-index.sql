/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020  AO Industries, Inc.
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

create index "Ticket_brand_fkey" on ticket."Ticket" (
  brand
);
create index "Ticket_reseller_fkey" on ticket."Ticket" (
  reseller
);
create index "Ticket_accounting_fkey" on ticket."Ticket" (
  accounting
);
create index "Ticket_language_fkey" on ticket."Ticket" (
  language
);
create index "Ticket_created_by_fkey" on ticket."Ticket" (
  created_by
);
create index "Ticket_category_fkey" on ticket."Ticket" (
  category
);
create index "Ticket_ticket_type_fkey" on ticket."Ticket" (
  ticket_type
);
create index "Ticket_client_priority_fkey" on ticket."Ticket" (
  client_priority
);
create index "Ticket_admin_priority_fkey" on ticket."Ticket" (
  admin_priority
);
create index "Ticket_status_fkey" on ticket."Ticket" (
  status
);
