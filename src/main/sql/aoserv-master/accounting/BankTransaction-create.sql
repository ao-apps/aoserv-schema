/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020  AO Industries, Inc.
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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

create sequence         accounting."BankTransaction_id_seq" cycle;
grant all            on accounting."BankTransaction_id_seq" to aoadmin;
grant select         on accounting."BankTransaction_id_seq" to aoserv_app;
grant select, update on accounting."BankTransaction_id_seq" to accounting;

create table accounting."BankTransaction" (
  id integer
    default nextval('accounting."BankTransaction_id_seq"')
    primary key,
  "time" timestamp with time zone
    not null,
  account text
    not null
    default 'southtrust',
  processor text,
  administrator text
    not null
    default 'orion',
  "type" text
    not null,
  "expenseCategory" text,
  description text
    not null,
  "checkNo" text,
  amount numeric(9,2)
    not null,
  confirmed boolean
    not null
--  constraint amount_chk
--    check ( case when ( select is_negative from accounting."BankTransactionType" t1 where t1."name"=type )=true then amount<=0 else amount>=0 end )
);

grant all                            on accounting."BankTransaction" to aoadmin;
grant select                         on accounting."BankTransaction" to aoserv_app;
grant select, update, insert, delete on accounting."BankTransaction" to accounting;
