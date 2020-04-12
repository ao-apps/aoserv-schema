create sequence web."Header_id_seq" cycle;
grant all    on web."Header_id_seq" to aoadmin;
grant select on web."Header_id_seq" to aoserv_app;

-- See https://httpd.apache.org/docs/2.4/mod/mod_headers.html
create table web."Header" (
  id              integer
    default nextval('web."Header_id_seq"')
    primary key,
  -- TODO: Allow a Header to be attached to either a site or a virtualHost
  httpd_site_bind integer  not null,
  sort_order      smallint not null
  check (
    sort_order >= 0
  ),
  "type" web."Header.Type"
    not null
    default 'Header',
  always          boolean  not null default false,
  -- TODO: Make an enum both in PostgreSQL and Java??? What happens if new values appear in the future?
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
grant all            on web."Header" to aoadmin;
grant select, delete on web."Header" to aoserv_app; -- , insert, update
