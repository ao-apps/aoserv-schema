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
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

-- Gets the portion of the current month to the provided moment in time
CREATE OR REPLACE FUNCTION billing.month_portion(timestamp with time zone)
RETURNS double precision AS
$$
  SELECT
    (
      extract('epoch' from $1)
      - extract('epoch' from billing.first_day($1::date))
    ) / (
      extract('epoch' from billing.first_day(($1 + interval '1 month')::date))
      - extract('epoch' from billing.first_day($1::date))
    )
  ;
$$ LANGUAGE sql
IMMUTABLE
RETURNS NULL ON NULL INPUT;
