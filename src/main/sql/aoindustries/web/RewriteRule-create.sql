create sequence         web."RewriteRule_id_seq" cycle;
grant all            on web."RewriteRule_id_seq" to aoadmin;
grant select         on web."RewriteRule_id_seq" to aoserv_app;
grant select, update on web."RewriteRule_id_seq" to management;

create table web."RewriteRule" (
  id            integer
    default nextval('web."RewriteRule_id_seq"')
    primary key,
  -- TODO: Allow a RewriteRule to be attached to either a site or a virtualHost
  "virtualHost" integer  not null,
  "sortOrder"   smallint not null
  check (
    "sortOrder" >= 0
  ),
  pattern       text     not null,
  substitution  text     not null,
  flags         text
    CHECK (flags IS NULL OR flags != ''),
  comment       text,
  unique("virtualHost", "sortOrder")
);
grant all            on web."RewriteRule" to aoadmin;
grant select, delete on web."RewriteRule" to aoserv_app;
grant insert         on web."RewriteRule" to management;
