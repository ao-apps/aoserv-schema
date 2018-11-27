create sequence         net."Host_id_seq" cycle;
grant all            on net."Host_id_seq" to aoadmin;
grant select, update on net."Host_id_seq" to aoserv_app;

create table net."Host" (
  id integer
    default nextval('net."Host_id_seq"')
    primary key,
  farm text
    not null,
  description text not null,
  operating_system_version integer,
  package integer not null,
  "name" text not null check (length("name") > 0 and "name" not like '%/%'),
  monitoring_enabled boolean not null default true
);
grant all                    on net."Host" to aoadmin;
grant select, insert, update on net."Host" to aoserv_app;
grant select, update         on net."Host" to billing; -- TODO: Access is for update net.Host.monitoring_enabled only
grant select, update         on net."Host" to infrastructure;
