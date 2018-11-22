create sequence httpd.httpd_site_bind_headers_pkey_seq cycle;
grant all    on httpd.httpd_site_bind_headers_pkey_seq to aoadmin;
grant select on httpd.httpd_site_bind_headers_pkey_seq to aoserv_app; -- , update

-- See https://httpd.apache.org/docs/2.4/mod/mod_headers.html
create table httpd_site_bind_headers (
  pkey            integer
    default nextval('httpd.httpd_site_bind_headers_pkey_seq')
    primary key,
  httpd_site_bind integer  not null,
  sort_order      smallint not null
  check (
    sort_order >= 0
  ),
  "type"          text     not null default 'Header'
                           check ("type" in ('Header', 'RequestHeader')),
  always          boolean  not null default false,
  "action"        text     not null default 'set'
                           check ("action" in ('add', 'append', 'echo', 'edit', 'edit*', 'merge', 'set', 'setifempty', 'unset', 'note'))
                           check ("type"='Header' or "action" not in ('echo', 'note')),
  header          text     not null
                           check (
                             length(header) > 0
                             and header not like '%:'
                           ),
  "value"         text     check (("value" is not null)=("action" in ('add', 'append', 'edit', 'edit*', 'merge', 'set', 'setifempty', 'note'))),
  replacement     text     check ((replacement is not null)=("action" in ('edit', 'edit*'))),
  "when"          text     check (
                             "when" is null
                             or "when"='early'
                             or "when" like 'env=%'
                             or "when" like 'expr=%'
                           ),
  comment         text,
  unique(httpd_site_bind, sort_order)
);
grant all            on httpd_site_bind_headers to aoadmin;
grant select, delete on httpd_site_bind_headers to aoserv_app; -- , insert, update
