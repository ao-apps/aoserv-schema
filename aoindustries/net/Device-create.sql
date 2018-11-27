create sequence         net."Device_id_seq" cycle;
grant all            on net."Device_id_seq" to aoadmin;
grant select, update on net."Device_id_seq" to infrastructure;

create table net."Device" (
  id integer
    default nextval('net."Device_id_seq"')
    primary key,
  server integer
    not null,
  "deviceID" text
    not null,
  description text
    not null,
  delete_route text,
  gateway inet,
  network inet,
  broadcast inet,
  mac_address macaddr,
  max_bit_rate bigint,
  monitoring_bit_rate_low bigint,
  monitoring_bit_rate_medium bigint check (monitoring_bit_rate_medium is null or monitoring_bit_rate_low is not null and monitoring_bit_rate_medium>monitoring_bit_rate_low),
  monitoring_bit_rate_high bigint check (monitoring_bit_rate_high is null or monitoring_bit_rate_medium is not null and monitoring_bit_rate_high>monitoring_bit_rate_medium),
  monitoring_bit_rate_critical bigint check (monitoring_bit_rate_critical is null or monitoring_bit_rate_high is not null and monitoring_bit_rate_critical>monitoring_bit_rate_high),
  monitoring_enabled boolean
    not null
    default true,
  unique(server, "deviceID")
);
grant all                    on net."Device" to aoadmin;
grant select                 on net."Device" to aoserv_app;
grant select, insert, update on net."Device" to infrastructure;
