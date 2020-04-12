create table account."Profile.technicalEmail{}" (
  id integer
    not null,
  index smallint
    not null
    check (index >= 0),
  "technicalEmail" "com.aoindustries.net"."Email"
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
  -- ,"com.aoindustries.net"."Email.validate"(trim("technicalEmail")) AS validation
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
