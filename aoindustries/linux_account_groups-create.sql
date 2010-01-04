create sequence linux_account_groups_pkey_seq cycle;
grant all on linux_account_groups_pkey_seq to aoadmin;
grant select, update on linux_account_groups_pkey_seq to aoserv_app;

create table linux_account_groups (
  pkey integer default nextval('linux_account_groups_pkey_seq') primary key,
  linux_account integer not null,
  linux_account_type text not null,  -- Hidden, for integrity constraints only to linux_accounts table
  ao_server integer not null, -- Hidden, for integrity constraints only to linux_accounts and linux_groups tables
  linux_group integer not null,
  linux_group_type text not null, -- Hidden, for integrity constraints only to linux_groups table
  group_name text not null, -- Hidden, for integrity constraints only to linux_groups table
  is_primary bool not null,
  -- Check constraint to make sure account tye and group type match
  check (
    case
      when linux_account_type='shell_account'   then linux_group_type='shell_group'
      when linux_account_type='email_inbox'     then group_name='mailonly' and is_primary -- No secondary groups allowed
      when linux_account_type='ftponly_account' then linux_group_type='shell_group'
      when linux_account_type='system_account'  then linux_group_type='system_group'
      else false
    end
  )
);
grant all on linux_account_groups to aoadmin;
grant select, insert, update, delete on linux_account_groups to aoserv_app;
