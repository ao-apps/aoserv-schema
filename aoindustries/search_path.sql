/*
The search path is set of a per-role basis, to include only the schemas they have any access to

To see all users:
\du+

To see who has access to which schema:
\dn+

The schemas are added to the search path in the same order as reported by \dn+,
but with "public" always first.
 */

ALTER ROLE aoadmin SET search_path TO
  public,
  account,
  "account.management",
  accounting,
  aosh,
  backup,
  billing,
  distribution,
  dns,
  email,
  "email.management",
  ftp,
  infrastructure,
  linux,
  "linux.management",
  management,
  master,
  monitoring,
  mysql,
  "mysql.management",
  net,
  "net.management",
  "net.monitoring",
  "net.reputation",
  payment,
  pki,
  "pki.management",
  postgresql,
  "postgresql.management",
  reseller,
  "schema",
  scm,
  "scm.management",
  signup,
  ticket,
  web,
  "web.jboss",
  "web.management",
  "web.tomcat",
  "web.tomcat.management";

-- aoserv_app is used by the master server.  For maximum reliability as schemas
-- change over time, it does not have any special search_path.
ALTER ROLE aoserv_app SET search_path TO public;

ALTER ROLE kaori SET search_path TO
  public,
  account,
  billing;
