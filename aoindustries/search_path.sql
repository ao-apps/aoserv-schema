/*
The search path is set of a per-role basis, to include only the schemas they have any access to

To see all users:
\du+

To see who has access to which schema:
\dn+

The schemas are added to the search path in the same order as reported by \dn+,
but with "public" always last.
 */

-- TODO: Remove "public" entirely once nothing in it or it is gone

ALTER ROLE aoadmin SET search_path TO
  account,
  accounting,
  aosh,
  backup,
  billing,
  distribution,
  dns,
  email,
  ftp,
  httpd,
  infrastructure,
  linux,
  management,
  master,
  monitoring,
  mysql,
  net,
  payment,
  pki,
  postgresql,
  reseller,
  "schema",
  scm,
  server,
  signup,
  ticket,
  public;

-- aoserv_app is used by the master server.  For maximum reliability as schemas
-- change over time, it does not have any special search_path.
ALTER ROLE aoserv_app SET search_path TO public;

ALTER ROLE kaori SET search_path TO
  account,
  billing,
  server,
  public;