create table linux_accounts (
  ao_server_resource integer primary key,
  linux_account_type text not null,
  accounting text not null, -- Used as hidden reference to usernames and ao_server_resources only
  ao_server integer not null, -- Used as hidden reference to ao_server_resources only
  username text not null constraint username_chk check (
    username not in ('etc', 'lib', 'postmaster', 'mailer-daemon')
  ),
  uid integer not null constraint uid_chk check (
    case
      when linux_account_type='shell_account' then uid between 500 and 65533
      when linux_account_type='email_inbox' then uid between 500 and 65533
      when linux_account_type='ftponly_account' then uid between 500 and 65533
      when linux_account_type='system_account' then uid between 0 and 499 or uid in (65534, 65535)
      else false
    end
  ),
  home text not null,
  "name" text not null,
  office_location text check (office_location is null or length(office_location)>0),
  office_phone text check (office_phone is null or length(office_phone)>0),
  home_phone text check (home_phone is null or length(home_phone)>0),
  shell text not null constraint shell_chk check (
    -- This matches that checked by LinuxAccountType.Constant
    case
      when linux_account_type='shell_account' then shell in ('/sbin/nologin', '/bin/bash', '/bin/ksh', '/bin/sh', '/bin/tcsh')
      when linux_account_type='email_inbox' then shell in ('/sbin/nologin', '/usr/bin/passwd')
      when linux_account_type='ftponly_account' then shell in ('/sbin/nologin', '/usr/bin/ftppasswd')
      when linux_account_type='system_account' then shell in ('/sbin/nologin', '/bin/bash', '/bin/sync', '/sbin/halt', '/sbin/shutdown')
      else false
    end
  ),
  predisable_password text
);
grant all on linux_accounts to aoadmin;
grant select, insert, update, delete on linux_accounts to aoserv_app;
