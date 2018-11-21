create table businesses (
  accounting text
    primary key,
  contract_version text,
  created timestamp with time zone
    default now()
    not null,
  canceled timestamp with time zone,
  cancel_reason text,
  parent text,
  can_add_backup_server bool
    not null,
  can_add_businesses bool
    not null,
  can_see_prices bool
    not null,
  disable_log integer,
  do_not_disable_reason text,
  auto_enable bool
    not null,
  bill_parent bool
    not null
);
grant all                            on businesses to aoadmin;
grant select, insert, update, delete on businesses to aoserv_app;
grant select                         on businesses to kaori;

/**********************************************************************
 *
 * Checks if a <code>business</code> is the same as, or the parent of
 * another <code>business</code>.
 *
 * $1  the accounting code of the business
 * $2  the accounting code of the business or parent
 *
 *********************************************************************/
create or replace function is_business_or_parent (text,text)
  returns bool
  as 'select false;'
  language 'sql'
  stable
  with(isstrict)
;
create or replace function is_business_or_parent_recurse (text,text)
  returns bool
  as 'select is_business_or_parent( $1 , $2 );'
  language 'sql'
  stable
  with(isstrict)
;
create or replace function is_business_or_parent (text,text)
  returns bool
  as '
    select
      $1 = $2
      or (
        case when
          (select parent from businesses where accounting = $2 ) is null
        then
          false
        else
          is_business_or_parent_recurse( $1 , (select parent from businesses where accounting = $2 ))
        end
      )
    ;
  '
  language 'sql'
  stable
  with(isstrict)
;
