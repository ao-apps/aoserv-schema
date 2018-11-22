create sequence web."VirtualHostHeader_pkey_seq" cycle;
grant all    on web."VirtualHostHeader_pkey_seq" to aoadmin;
grant select on web."VirtualHostHeader_pkey_seq" to aoserv_app;

-- See https://httpd.apache.org/docs/2.4/mod/mod_headers.html
create table web."VirtualHostHeader" (
  pkey            integer
    default nextval('web."VirtualHostHeader_pkey_seq"')
    primary key,
  -- TODO: Allow a Header to be attached to either a site or a virtualHost
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
grant all            on web."VirtualHostHeader" to aoadmin;
grant select, delete on web."VirtualHostHeader" to aoserv_app; -- , insert, update
