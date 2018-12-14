create sequence web."RewriteRule_id_seq" cycle;
grant all    on web."RewriteRule_id_seq" to aoadmin;
grant select on web."RewriteRule_id_seq" to aoserv_app;

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

-- Conversion
insert into web."RewriteRule"
select
  r.id,
  r.httpd_site_bind,
  r.sort_order,
  r.pattern,
  r.substitution,
  case
    when r.substitution='-' then 'L'
    when r.no_escape and nh.operating_system_version = 70 then 'END,NE,R=permanent'
    when r.no_escape and nh.operating_system_version = 67 then 'L,NE,R=permanent'
    when !r.no_escape and nh.operating_system_version = 70 then 'END,R=permanent'
    when !r.no_escape and nh.operating_system_version = 67 then 'L,R=permanent'
    else '' -- Intentionally invalid to catch error
  end,
  r.comment
  -- nh.operating_system_version
from
  web."Redirect_20181214" r
  inner join web."VirtualHost" vh on r.httpd_site_bind = vh.id
  inner join web."Site" ws on vh.httpd_site = ws.id
  inner join net."Host" nh on ws.ao_server = nh.id;
