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
  "distribution.management",
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

ALTER ROLE accounting SET search_path TO
  public,
  account,
  accounting,
  billing,
  master,
  payment;

ALTER ROLE billing SET search_path TO
  public,
  account,
  billing,
  net; -- TODO: Access is for update net.Host.monitoring_enabled only

ALTER ROLE distribution SET search_path TO
  public,
  distribution;

ALTER ROLE infrastructure SET search_path TO
  public,
  billing,
  infrastructure,
  linux,
  net;

ALTER ROLE management SET search_path TO
  public,
  account,
  "account.management",
  linux,
  management,
  mysql,
  net;

ALTER ROLE monitoring SET search_path TO
  public,
  linux,
  net,
  "net.monitoring";

ALTER ROLE reseller SET search_path TO
  public,
  reseller;
