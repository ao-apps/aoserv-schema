create sequence         net."Host_id_seq" cycle;
grant all            on net."Host_id_seq" to aoadmin;
grant select, update on net."Host_id_seq" to aoserv_app;
grant select, update on net."Host_id_seq" to infrastructure;

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
  -- TODO: Move linux.Server.hostname back to here as "fqdn" (unique)?
  --       Will be required when this host is a linux.Server?
  --       Also, will "name" have to be the first part of fqdn, when present?  If so, it will not be unique per package.
  --       If not, will "name" have to equal fqdn?  This name thing came into existence for backup clients, so they could name their own computers arbitrarily.
  --       Finally, how does this connect into the instance names used in our infrastructure (VirtualServer).
  monitoring_enabled boolean not null default true
);
grant all                    on net."Host" to aoadmin;
grant select, insert, update on net."Host" to aoserv_app;
grant select, update         on net."Host" to billing; -- TODO: Access is for update net.Host.monitoring_enabled only
grant select, insert, update on net."Host" to infrastructure;
grant select, update         on net."Host" to management;
