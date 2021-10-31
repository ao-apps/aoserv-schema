/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020, 2021  AO Industries, Inc.
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

/**********************************************************************
 *
 * Finds the first business that is not canceled, searching up the parents.
 * If the business itself is not canceled, it is returned.
 *
 * $1  the accounting code of the business
 *
 *********************************************************************/
create or replace function "account.management"."Account.findBusinessNotCanceled" (text)
returns text
as $$
  select
    case
      when (select canceled is null from account."Account" where accounting = $1 ) then $1
      when (select parent is null from account."Account" where accounting = $1 ) then null
      else "account.management"."Account.findBusinessNotCanceled"( (select parent from account."Account" where accounting = $1 ))
    end
  ;
$$ LANGUAGE sql
STABLE
RETURNS NULL ON NULL INPUT;
