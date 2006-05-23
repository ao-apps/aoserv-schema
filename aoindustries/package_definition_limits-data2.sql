\echo AOINDUSTRIES,virtual,personal,2005-04
begin;
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='personal' and version='2005-04'),
    'backup_disk',
    2,
    null,
    5.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='personal' and version='2005-04'),
    'backup_files',
    1,
    10,
    1.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='personal' and version='2005-04'),
    'bandwidth',
    3,
    null,
    1.00,
    'bandwidth'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='personal' and version='2005-04'),
    'disk',
    1,
    10,
    5.00,
    'disk'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='personal' and version='2005-04'),
    'ip',
    0,
    10,
    5.00,
    'ip'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='personal' and version='2005-04'),
    'pop',
    5,
    50,
    1.00,
    'pop'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='personal' and version='2005-04'),
    'site',
    1,
    10,
    2.00,
    'site'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='personal' and version='2005-04'),
    'user',
    1,
    10,
    2.00,
    'user'
);
commit;
\echo AOINDUSTRIES,virtual,budget,2005-04
begin;
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='budget' and version='2005-04'),
    'backup_disk',
    4,
    null,
    5.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='budget' and version='2005-04'),
    'backup_files',
    2,
    20,
    1.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='budget' and version='2005-04'),
    'bandwidth',
    6,
    null,
    1.00,
    'bandwidth'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='budget' and version='2005-04'),
    'disk',
    2,
    20,
    5.00,
    'disk'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='budget' and version='2005-04'),
    'ip',
    0,
    20,
    5.00,
    'ip'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='budget' and version='2005-04'),
    'pop',
    10,
    100,
    1.00,
    'pop'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='budget' and version='2005-04'),
    'site',
    2,
    20,
    2.00,
    'site'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='budget' and version='2005-04'),
    'user',
    2,
    20,
    2.00,
    'user'
);
commit;
\echo AOINDUSTRIES,virtual,developer,2005-04
begin;
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='developer' and version='2005-04'),
    'backup_disk',
    6,
    null,
    5.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='developer' and version='2005-04'),
    'backup_files',
    3,
    30,
    1.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='developer' and version='2005-04'),
    'bandwidth',
    10,
    null,
    1.00,
    'bandwidth'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='developer' and version='2005-04'),
    'disk',
    3,
    30,
    5.00,
    'disk'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='developer' and version='2005-04'),
    'ip',
    1,
    30,
    5.00,
    'ip'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='developer' and version='2005-04'),
    'javavm',
    1,
    10,
    5.00,
    'javavm'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='developer' and version='2005-04'),
    'pop',
    20,
    200,
    1.00,
    'pop'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='developer' and version='2005-04'),
    'site',
    3,
    30,
    2.00,
    'site'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='developer' and version='2005-04'),
    'user',
    3,
    30,
    2.00,
    'user'
);
commit;
\echo AOINDUSTRIES,virtual,production,2005-04
begin;
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='production' and version='2005-04'),
    'backup_disk',
    10,
    null,
    5.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='production' and version='2005-04'),
    'backup_files',
    5,
    50,
    1.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='production' and version='2005-04'),
    'bandwidth',
    20,
    null,
    1.00,
    'bandwidth'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='production' and version='2005-04'),
    'disk',
    5,
    50,
    5.00,
    'disk'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='production' and version='2005-04'),
    'httpd',
    1,
    10,
    5.00,
    'httpd'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='production' and version='2005-04'),
    'ip',
    2,
    50,
    5.00,
    'ip'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='production' and version='2005-04'),
    'javavm',
    2,
    20,
    5.00,
    'javavm'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='production' and version='2005-04'),
    'pop',
    40,
    400,
    1.00,
    'pop'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='production' and version='2005-04'),
    'site',
    5,
    50,
    2.00,
    'site'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='production' and version='2005-04'),
    'user',
    5,
    50,
    2.00,
    'user'
);
commit;
\echo AOINDUSTRIES,virtual,premium,2005-04
begin;
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='premium' and version='2005-04'),
    'backup_disk',
    20,
    null,
    5.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='premium' and version='2005-04'),
    'backup_files',
    10,
    100,
    1.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='premium' and version='2005-04'),
    'bandwidth',
    40,
    null,
    1.00,
    'bandwidth'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='premium' and version='2005-04'),
    'disk',
    10,
    100,
    5.00,
    'disk'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='premium' and version='2005-04'),
    'httpd',
    1,
    20,
    5.00,
    'httpd'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='premium' and version='2005-04'),
    'ip',
    4,
    100,
    5.00,
    'ip'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='premium' and version='2005-04'),
    'javavm',
    4,
    40,
    5.00,
    'javavm'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='premium' and version='2005-04'),
    'pop',
    100,
    null,
    1.00,
    'pop'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='premium' and version='2005-04'),
    'site',
    10,
    100,
    2.00,
    'site'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='virtual' and name='premium' and version='2005-04'),
    'user',
    12,
    120,
    2.00,
    'user'
);
commit;
\echo AOINDUSTRIES,aoserv,daemon_license,2005-04
begin;
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='aoserv' and name='daemon_license' and version='2005-04'),
    'aoserv_daemon',
    1,
    null,
    50.00,
    'aoserv'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='aoserv' and name='master_license' and version='2005-04'),
    'aoserv_master',
    1,
    null,
    500.00,
    'aoserv'
);
commit;
\echo AOINDUSTRIES,backup,*,2005-04
begin;
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='1' and version='2005-04'),
    'backup_disk',
    1,
    1,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='1' and version='2005-04'),
    'backup_files',
    1,
    1,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='2' and version='2005-04'),
    'backup_disk',
    2,
    2,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='2' and version='2005-04'),
    'backup_files',
    2,
    2,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='4' and version='2005-04'),
    'backup_disk',
    4,
    4,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='4' and version='2005-04'),
    'backup_files',
    2,
    2,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='8' and version='2005-04'),
    'backup_disk',
    8,
    8,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='8' and version='2005-04'),
    'backup_files',
    3,
    3,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='16' and version='2005-04'),
    'backup_disk',
    16,
    16,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='16' and version='2005-04'),
    'backup_files',
    5,
    5,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='32' and version='2005-04'),
    'backup_disk',
    32,
    32,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='32' and version='2005-04'),
    'backup_files',
    8,
    8,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='64' and version='2005-04'),
    'backup_disk',
    64,
    64,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='64' and version='2005-04'),
    'backup_files',
    12,
    12,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='128' and version='2005-04'),
    'backup_disk',
    128,
    128,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='128' and version='2005-04'),
    'backup_files',
    17,
    17,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='256' and version='2005-04'),
    'backup_disk',
    256,
    256,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='256' and version='2005-04'),
    'backup_files',
    25,
    25,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='512' and version='2005-04'),
    'backup_disk',
    512,
    512,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='512' and version='2005-04'),
    'backup_files',
    38,
    38,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='1024' and version='2005-04'),
    'backup_disk',
    1024,
    1024,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='1024' and version='2005-04'),
    'backup_files',
    57,
    57,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='2048' and version='2005-04'),
    'backup_disk',
    2048,
    2048,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='2048' and version='2005-04'),
    'backup_files',
    86,
    86,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='4096' and version='2005-04'),
    'backup_disk',
    4096,
    4096,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='backup' and name='4096' and version='2005-04'),
    'backup_files',
    130,
    130,
    null,
    null
);
\echo Add bandwidth to all package_definitions in backup category
insert into
  package_definition_limits
select
  nextval('package_definition_limits_pkey_seq'),
  pkey,
  'bandwidth',
  0,
  null,
  1.00,
  'bandwidth'
from
  package_definitions
where
  accounting='AOINDUSTRIES'
  and category='backup'
;
commit;
\echo AOINDUSTRIES,sysadmin,sysadmin,2005-04
begin;
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='sysadmin' and name='sysadmin' and version='2005-04'),
    'backup_disk',
    64,
    null,
    5.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='sysadmin' and name='sysadmin' and version='2005-04'),
    'backup_files',
    12,
    120,
    1.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='sysadmin' and name='sysadmin' and version='2005-04'),
    'bandwidth',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='sysadmin' and name='sysadmin' and version='2005-04'),
    'disk',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='sysadmin' and name='sysadmin' and version='2005-04'),
    'failover',
    0,
    null,
    0.50,
    'sysadmin'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='sysadmin' and name='sysadmin' and version='2005-04'),
    'javavm',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='sysadmin' and name='sysadmin' and version='2005-04'),
    'httpd',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='sysadmin' and name='sysadmin' and version='2005-04'),
    'ip',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='sysadmin' and name='sysadmin' and version='2005-04'),
    'pop',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='sysadmin' and name='sysadmin' and version='2005-04'),
    'site',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='sysadmin' and name='sysadmin' and version='2005-04'),
    'sysadmin',
    1,
    null,
    200.00,
    'sysadmin'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='sysadmin' and name='sysadmin' and version='2005-04'),
    'user',
    null,
    null,
    null,
    null
);
commit;
\echo AOINDUSTRIES,colocation,*,2005-04
begin;
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='colocation' and name='2' and version='2005-04'),
    'rack',
    2,
    2,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='colocation' and name='4' and version='2005-04'),
    'rack',
    4,
    4,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='colocation' and name='8' and version='2005-04'),
    'rack',
    8,
    8,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='colocation' and name='12' and version='2005-04'),
    'rack',
    12,
    12,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='colocation' and name='16' and version='2005-04'),
    'rack',
    16,
    16,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='colocation' and name='half_rack' and version='2005-04'),
    'rack',
    20,
    20,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='colocation' and name='full_rack' and version='2005-04'),
    'rack',
    40,
    40,
    null,
    null
);
commit;
\echo AOINDUSTRIES,dedicated,*,2005-04
begin;
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='p4' and version='2005-04'),
    'hardware_processor_p4_32',
    1,
    1,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='p4' and version='2005-04'),
    'hardware_processor_p4_34',
    0,
    1,
    35.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='p4' and version='2005-04'),
    'hardware_ram_ddr400_nonecc',
    1,
    4,
    20.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='p4' and version='2005-04'),
    'hardware_disk_ata_7200_120',
    2,
    4,
    20.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='p4' and version='2005-04'),
    'hardware_disk_ata_7200_250',
    0,
    4,
    15.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='p4' and version='2005-04'),
    'hardware_disk_ata_10000_74',
    0,
    4,
    10.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='p4' and version='2005-04'),
    'hardware_disk_scsi_10000_73',
    0,
    4,
    20.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='p4' and version='2005-04'),
    'hardware_disk_scsi_15000_36',
    0,
    4,
    20.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='p4' and version='2005-04'),
    'hardware_disk_scsi_15000_73',
    0,
    4,
    40.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='p4' and version='2005-04'),
    'bandwidth',
    40,
    null,
    1.00,
    'bandwidth'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='p4' and version='2005-04'),
    'ip',
    4,
    null,
    5.00,
    'ip'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='xeon' and version='2005-04'),
    'hardware_processor_xeon_306',
    2,
    2,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='xeon' and version='2005-04'),
    'hardware_processor_xeon_34',
    0,
    2,
    50.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='xeon' and version='2005-04'),
    'hardware_ram_ddr400_ecc',
    1,
    8,
    40.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='xeon' and version='2005-04'),
    'hardware_disk_ata_7200_120',
    2,
    6,
    20.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='xeon' and version='2005-04'),
    'hardware_disk_ata_7200_250',
    0,
    6,
    15.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='xeon' and version='2005-04'),
    'hardware_disk_ata_10000_74',
    0,
    6,
    10.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='xeon' and version='2005-04'),
    'hardware_disk_scsi_10000_73',
    0,
    6,
    20.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='xeon' and version='2005-04'),
    'hardware_disk_scsi_15000_36',
    0,
    6,
    20.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='xeon' and version='2005-04'),
    'hardware_disk_scsi_15000_73',
    0,
    6,
    40.00,
    'dedicated'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='xeon' and version='2005-04'),
    'bandwidth',
    40,
    null,
    1.00,
    'bandwidth'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='dedicated' and name='xeon' and version='2005-04'),
    'ip',
    4,
    null,
    5.00,
    'ip'
);
commit;
\echo AOINDUSTRIES,managed,*,2005-04
begin;
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'hardware_processor_p4_32',
    1,
    1,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'hardware_processor_p4_34',
    0,
    1,
    35.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'hardware_ram_ddr400_nonecc',
    1,
    4,
    20.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'hardware_disk_ata_7200_120',
    2,
    4,
    20.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'hardware_disk_ata_7200_250',
    0,
    4,
    15.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'hardware_disk_ata_10000_74',
    0,
    4,
    10.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'hardware_disk_scsi_10000_73',
    0,
    4,
    20.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'hardware_disk_scsi_15000_36',
    0,
    4,
    20.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'hardware_disk_scsi_15000_73',
    0,
    4,
    40.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'backup_disk',
    64,
    null,
    5.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'backup_files',
    12,
    120,
    1.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'bandwidth',
    40,
    null,
    1.00,
    'bandwidth'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'disk',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'failover',
    120,
    null,
    .50,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'javavm',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'httpd',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'ip',
    4,
    null,
    5.00,
    'ip'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'pop',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'site',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='p4' and version='2005-04'),
    'user',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'hardware_processor_xeon_306',
    2,
    2,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'hardware_processor_xeon_34',
    0,
    2,
    50.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'hardware_ram_ddr400_ecc',
    1,
    8,
    40.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'hardware_disk_ata_7200_120',
    2,
    6,
    20.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'hardware_disk_ata_7200_250',
    0,
    6,
    15.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'hardware_disk_ata_10000_74',
    0,
    6,
    10.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'hardware_disk_scsi_10000_73',
    0,
    6,
    20.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'hardware_disk_scsi_15000_36',
    0,
    6,
    20.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'hardware_disk_scsi_15000_73',
    0,
    6,
    40.00,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'backup_disk',
    64,
    null,
    5.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'backup_files',
    12,
    120,
    1.00,
    'backup'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'bandwidth',
    40,
    null,
    1.00,
    'bandwidth'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'disk',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'failover',
    120,
    null,
    .50,
    'managed'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'javavm',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'httpd',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'ip',
    4,
    null,
    5.00,
    'ip'
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'pop',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'site',
    null,
    null,
    null,
    null
);
insert into package_definition_limits values(
    nextval('package_definition_limits_pkey_seq'),
    (select pkey from package_definitions where accounting='AOINDUSTRIES' and category='managed' and name='xeon' and version='2005-04'),
    'user',
    null,
    null,
    null,
    null
);
commit;
\echo Allow consulting for all package_definitions
insert into
  package_definition_limits
select
  nextval('package_definition_limits_pkey_seq'),
  pkey,
  'consulting',
  0,
  null,
  120.00,
  'consulting'
from
  package_definitions
where
  accounting='AOINDUSTRIES'
;
