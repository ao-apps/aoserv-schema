create table linux_groups (
  ao_server_resource integer primary key,
  linux_group_type text not null,
  accounting text not null, -- Used as hidden reference to group_names and ao_server_resources only
  ao_server integer not null, -- Used as hidden reference to ao_server_resources only
  group_name text not null,
  gid integer not null check (
    case
      when linux_group_type='shell_group' then gid between 500 and 65533
      when linux_group_type='system_group' then gid between 0 and 499 or gid in (65534, 65535)
      else false
    end
  )
);
grant all on linux_groups to aoadmin;
grant select, insert, update, delete on linux_groups to aoserv_app;
