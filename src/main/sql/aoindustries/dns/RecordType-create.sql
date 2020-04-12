create table dns."RecordType" (
  "type" text
    primary key,
  description  text    not null,
  has_priority boolean not null,
  has_weight   boolean not null,
  has_port     boolean not null,
  param_ip     boolean not null
);
grant all    on dns."RecordType" to aoadmin;
grant select on dns."RecordType" to aoserv_app;
