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

create table account."Profile.technicalEmail{}" (
  id integer
    not null,
  index smallint
    not null
    check (index >= 0),
  "technicalEmail" "com.aoapps.net"."Email"
    not null,
  primary key (id, index),
  unique("technicalEmail", id)
);

/* Conversion
BEGIN;

update account."Profile" set "technical_email"=replace("technical_email", ' ', ',') where technical_email like '% %';
update account."Profile" set "technical_email"=replace("technical_email", ',,', ',') where technical_email like '%,,%';

INSERT INTO account."Profile.technicalEmail{}"
SELECT
  p1.id AS id,
  "ordinality" - 1 AS index,
  trim("technicalEmail") AS "technicalEmail"
  -- ,"com.aoapps.net"."Email.validate"(trim("technicalEmail")) AS validation
FROM
  "Profile" p1,
  UNNEST(
    ARRAY(
      SELECT DISTINCT trim("technicalEmail") FROM
        UNNEST(string_to_array(p1.technical_email, ',')) AS "technicalEmail"
    )
  ) WITH ORDINALITY as "technicalEmail"
ORDER BY p1.id, "index";
-- ORDER BY validation, p1.id, index;

COMMIT;

VACUUM FULL VERBOSE ANALYZE account."Profile.technicalEmail{}";
*/

grant all            on account."Profile.technicalEmail{}" to aoadmin;
grant select, insert on account."Profile.technicalEmail{}" to aoserv_app;
