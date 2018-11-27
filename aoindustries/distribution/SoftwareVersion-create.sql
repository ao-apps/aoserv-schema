create sequence distribution."SoftwareVersion_id_seq" cycle;
grant all    on distribution."SoftwareVersion_id_seq" to aoadmin;
grant select on distribution."SoftwareVersion_id_seq" to aoserv_app;

create table distribution."SoftwareVersion" (
  id integer
    default nextval('distribution."SoftwareVersion_id_seq"')
    primary key,
  "name" text
    not null,
  version text
    not null
    check (version!='' and version=trim(version)),
  updated timestamp with time zone
    default now()
    not null,
  owner text
    default 'orion'
    not null,
  operating_system_version integer,
  disable_time timestamp with time zone,
  disable_reason text,
  check (
	-- Either both null or both non-null
    (disable_time = null) = (disable_reason = null)
  ),
  unique("name", version, operating_system_version)
);
grant all            on distribution."SoftwareVersion" to aoadmin;
grant select         on distribution."SoftwareVersion" to aoserv_app;
grant select, update on distribution."SoftwareVersion" to distribution;
