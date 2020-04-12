create table account."Profile.billingEmail{}" (
  id integer
    not null,
  index smallint
    not null
    check (index >= 0),
  "billingEmail" "com.aoindustries.net"."Email"
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
  -- ,"com.aoindustries.net"."Email.validate"(trim("billingEmail")) AS validation
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
