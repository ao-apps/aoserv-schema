create sequence distribution."OperatingSystemVersion_id_seq" cycle;
grant all    on distribution."OperatingSystemVersion_id_seq" to aoadmin;
grant select on distribution."OperatingSystemVersion_id_seq" to aoserv_app;

create table distribution."OperatingSystemVersion" (
  id integer
    default nextval('distribution."OperatingSystemVersion_id_seq"')
    primary key,
  operating_system text
    not null,
  version_number text
    not null,
  version_name text
    not null,
  architecture text
    not null,
  display text
    not null
    unique,
  is_aoserv_daemon_supported boolean
    not null,
  sort_order smallint
    not null
    unique,
  unique(operating_system, version_number, architecture),
  unique(operating_system, version_name, architecture)
);
grant all    on distribution."OperatingSystemVersion" to aoadmin;
grant select on distribution."OperatingSystemVersion" to aoserv_app;
grant select on distribution."OperatingSystemVersion" to management;
