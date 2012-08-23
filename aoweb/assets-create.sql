create sequence assets_pkey_seq cycle;
grant all on assets_pkey_seq to aoadmin;
grant select, update on assets_pkey_seq to aoweb_app;

create table assets (
  pkey integer
    default nextval('assets_pkey_seq')
    constraint assets_pkey
      primary key,
  label text
    unique,
  contained_by integer,
  location text,
  description text
    not null,
  date_acquired date
    not null,
  vendor text,
  cost decimal(9,2)
    not null,
  date_removed date,
  reason_removed text,
  is_taxed bool
    default true
    not null
);
grant all on assets to aoadmin;
grant select, insert, update on assets to aoweb_app;

create or replace function get_assets_by_pkey (integer)
  returns setof integer
  as '
    select
      as1.pkey
    from
      assets as1
      left outer join assets as2 on as1.contained_by=as2.pkey
      left outer join assets as3 on as2.contained_by=as3.pkey
    where
      as1.pkey= $1
      or as1.contained_by= $1
      or as2.contained_by= $1
      or as3.contained_by= $1
    '
  language 'sql'
  stable
;


create or replace function get_assets_by_label (text)
  returns setof integer
  as '
    select
      as1.pkey
    from
      assets as1
      left outer join assets as2 on as1.contained_by=as2.pkey
      left outer join assets as3 on as2.contained_by=as3.pkey
      left outer join assets as4 on as3.contained_by=as4.pkey
    where
      as1.label= $1
      or as2.label= $1
      or as3.label= $1
      or as4.label= $1
    '
  language 'sql'
  stable
;
