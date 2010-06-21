create table ip_addresses (
  server_resource integer primary key,
  resource_type text not null
    constraint resource_type_chk check (resource_type='ip_address'), -- Used as hidden constant type reference constraint
  server integer not null, -- Used as hidden reference to net_devices and server_resources only
  ip_address text not null
    constraint ip_address_chk check (ip_address!='0.0.0.0' and ip_address!='::'),
  net_device int,
  is_alias bool not null
    constraint is_alias_chk check (
    -- May only be flagged as an alias while assigned to a net_device
    net_device is not null or not is_alias
  ),
  hostname text not null,
  available bool not null,
  is_overflow bool not null,
  is_dhcp bool not null,
  ping_monitor_enabled bool not null,
  external_ip_address text,
  netmask smallint not null
    constraint netmask_chk check (
    netmask>0 and (
      case
        when ip_address like '%:%' then netmask<=128
        else netmask<=32
      end
    )
  ),
  constraint loopback_chk check (
    -- loopback restrictions
    case
      when ip_address like '127.%.%.%' then
        net_device is not null
        and is_alias=ip_address!='127.0.0.1'
        and not available
        and not is_overflow
        and not is_dhcp
        and not ping_monitor_enabled
        and external_ip_address is null
        and netmask=8
      when ip_address='::1' then
        net_device is not null
        and not is_alias
        and not available
        and not is_overflow
        and not is_dhcp
        and not ping_monitor_enabled
        and external_ip_address is null
        and netmask=128
      else
        true
    end
  )
);
grant all on ip_addresses to aoadmin;
grant select, update on ip_addresses to aoserv_app;
