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

create table account."Profile.billingEmail{}" (
  id integer
    not null,
  index smallint
    not null
    check (index >= 0),
  "billingEmail" "com.aoapps.net"."Email"
    not null,
  primary key (id, index),
  unique("billingEmail", id)
);

/* Conversion
BEGIN;

update account."Profile" set "billing_email"=replace("billing_email", ' ', ',') where billing_email like '% %';
update account."Profile" set "billing_email"=replace("billing_email", ',,', ',') where billing_email like '%,,%';

INSERT INTO account."Profile.billingEmail{}"
SELECT
  p1.id,
  "ordinality" - 1 AS index,
  trim("billingEmail") AS "billingEmail"
  -- ,"com.aoapps.net"."Email.validate"(trim("billingEmail")) AS validation
FROM
  "Profile" p1,
  UNNEST(
    ARRAY(
      SELECT DISTINCT trim("billingEmail") FROM
        UNNEST(string_to_array(p1.billing_email, ',')) AS "billingEmail"
    )
  ) WITH ORDINALITY as "billingEmail"
ORDER BY p1.id, "index";
-- ORDER BY validation, p1.id, index;

COMMIT;

VACUUM FULL VERBOSE ANALYZE account."Profile.billingEmail{}";
*/

grant all            on account."Profile.billingEmail{}" to aoadmin;
grant select, insert on account."Profile.billingEmail{}" to aoserv_app;
