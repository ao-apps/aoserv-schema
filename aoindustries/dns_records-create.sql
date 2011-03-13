create table dns_records (
  resource integer primary key,
  resource_type text not null check (resource_type='dns_record'), -- Used as hidden constant type reference constraint
  accounting text not null, -- Used as hidden reference to dns_zones and resources
  "zone" integer not null,
  "domain" text not null check ("domain"=lower("domain")),
  "type" text not null,
  mx_priority integer check (
    case
      when "type"='MX' then mx_priority is not null
      else mx_priority is null
    end
  ),
  data_ip_address text check (
    case
      when "type"='A' then data_ip_address is not null and data_ip_address not like '%:%'
      when "type"='AAAA' then data_ip_address like '%:%'
      else data_ip_address is null
    end
  ),
  data_domain_name text check (
    case
      when "type" in ('CNAME', 'MX', 'NS', 'PTR') then data_domain_name is not null
      else data_domain_name is null
    end
  ),
  data_text text check (
    case
      when "type" in ('TXT', 'SPF') then data_text is not null
      else data_text is null
    end
  ),
  dhcp_address integer check (
    "type" in ('A', 'AAAA') or dhcp_address is null -- Only allowed for A and AAAA records
  ),
  ttl integer check (ttl is null or ttl>0)
);
grant all on dns_records to aoadmin;
grant select, insert, update, delete on dns_records to aoserv_app;
