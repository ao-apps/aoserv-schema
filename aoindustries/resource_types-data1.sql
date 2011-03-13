COPY "resource_types" FROM stdin;
aoserv_daemon
aoserv_master
bandwidth
consulting
disk
javavm
virtuemart
hardware_processor_p4_32
hardware_processor_p4_34
hardware_processor_xeon_306
hardware_processor_xeon_34
hardware_ram_ddr400_nonecc
hardware_ram_ddr400_ecc
sysadmin
hardware_ram_ddr2_667_nonecc
hardware_ram_ddr2_800_ecc
hardware_power_redundant_500
zimbra
phpnuke
radiant
moinmoin
hardware_processor_coreduo_t2500
hardware_processor_xeon_e5335
hardware_processor_xeon_e5355
hardware_processor_coreduo_t2600
vanilla
vbulletin
typo
b2evolution
gallery
pligg
moodle
coppermine
bbpress
nucleus
hardware_ram_ddr2_667_nonecc_2x1024
hardware_ram_ddr2_667_nonecc_2x0512
hardware_processor_coreduo_t2300e
hardware_processor_coreduo_t2400
hardware_power_550
hardware_ram_ddr2_667_ecc_2x2048
hardware_ram_ddr2_667_ecc_4x2048
hardware_ram_ddr2_667_ecc_6x2048
hardware_ram_ddr2_667_ecc_8x2048
hardware_ram_ddr2_667_ecc_2x4096
hardware_ram_ddr2_667_ecc_4x4096
hardware_ram_ddr2_667_ecc_6x4096
hardware_ram_ddr2_667_ecc_8x4096
hardware_processor_xeon_5060
hardware_processor_xeon_5080
hardware_processor_xeon_5110
hardware_processor_xeon_5130
hardware_processor_xeon_5140
hardware_processor_xeon_5150
hardware_processor_xeon_5160
hardware_processor_xeon_e5310
hardware_processor_xeon_e5320
hardware_processor_xeon_e5345
dolphin
geeklog
expressionengine
plone
socialengine
textpattern
xaraya
xmb
hardware_disk_controller_scsi_16
hardware_disk_controller_scsi_16_raid5
hardware_disk_10000_036
hardware_disk_10000_073
hardware_disk_15000_036
zencart
hardware_disk_15000_073
hardware_disk_10000_146
hardware_disk_15000_146
hardware_disk_15000_300
hardware_disk_10000_300
hardware_disk_15000_030_raid1
hardware_disk_15000_060_raid1
hardware_disk_15000_120_raid1
hardware_disk_15000_300_raid1
hardware_disk_7200_500
hardware_disk_7200_750
hardware_disk_7200_120
hardware_disk_7200_250
hardware_disk_7200_160
hardware_disk_7200_080
hardware_disk_10000_150
hardware_disk_10000_074
hardware_disk_7200_120_raid1
hardware_disk_7200_250_raid1
hardware_disk_7200_030_raid1
hardware_disk_7200_060_raid1
hardware_disk_10000_018_raid1
hardware_disk_10000_037_raid1
hardware_disk_10000_075_raid1
hardware_disk_10000_150_raid1
hardware_ram_ddr2_667_ecc_16384
hardware_disk_7200_500_raid1
hardware_disk_controller_scsi_16_raid5_battery
hardware_disk_controller_scsi_8
hardware_disk_controller_scsi_8_raid5
hardware_disk_controller_scsi_8_raid5_battery
hardware_ram_ddr2_667_ecc_2x0512
hardware_ram_ddr2_667_ecc_2x1024
hardware_ram_ddr2_667_ecc_4x1024
hardware_processor_core2duo_e4300
hardware_processor_core2duo_e4400
hardware_processor_core2duo_e6320
hardware_processor_core2duo_e6420
hardware_processor_core2duo_e6600
hardware_processor_core2duo_e6700
hardware_processor_core2quad_q6600
hardware_processor_core2extreme_qx6700
hardware_processor_core2extreme_x6800
hardware_processor_xeon_3040
hardware_processor_xeon_3050
hardware_processor_xeon_3060
hardware_processor_xeon_3070
backup_dvd_first
backup_dvd_remaining
distribution_scan
hardware_disk_controller_sata_16
hardware_disk_controller_sata_16_battery
hardware_disk_controller_sata_8
hardware_disk_controller_sata_8_battery
backup_offsite_007
backup_offsite_014
backup_offsite_021
backup_offsite_031
backup_offsite_061
backup_offsite_092
backup_offsite_183
backup_offsite_274
backup_offsite_365
backup_onsite_007
backup_onsite_014
backup_onsite_021
backup_onsite_031
backup_onsite_061
backup_onsite_092
backup_onsite_183
backup_onsite_274
backup_onsite_365
failover
hardware_processor_virtual.125
hardware_processor_virtual.25
hardware_processor_virtual.5
hardware_disk_7200_1000_raid1
hardware_disk_7200_2000_raid1
hardware_disk_15000_146_raid1
hardware_ram_ddr2_667_ecc_0256
hardware_ram_ddr2_667_ecc_0512
hardware_ram_ddr2_667_ecc_1024
hardware_ram_ddr2_667_ecc_2048
hardware_processor_virtual
mysql_replication
hardware_ram_ddr2_667_ecc_4096
hardware_ram_ddr2_667_ecc_8192
joomla
drupal
wordpress
xoops
mediawiki
tikiwiki
mambo
smf
phpbb
phpgroupware
oscommerce
\.
begin;
insert into resource_types values('mysql_database');            -- + 9000000
insert into resource_types values('mysql_server');              -- + 8000000
insert into resource_types values('mysql_user');                -- +10000000
insert into resource_types values('shell_group');               -- + 4000000
insert into resource_types values('system_group');              -- + 4000000
insert into resource_types values('shell_account');             -- + 5000000
insert into resource_types values('email_inbox');               -- + 5000000
insert into resource_types values('ftponly_account');           -- + 5000000
insert into resource_types values('system_account');            -- + 5000000
insert into resource_types values('httpd_server');              -- +14000000
insert into resource_types values('httpd_shared_tomcat');       -- +16000000 (TODO)
insert into resource_types values('httpd_jboss_site');          -- +15000000
insert into resource_types values('httpd_static_site');         -- +15000000
insert into resource_types values('httpd_tomcat_shared_site');  -- +15000000
insert into resource_types values('httpd_tomcat_std_site');     -- +15000000
insert into resource_types values('ip_address');                -- + 2000000
insert into resource_types values('cvs_repository');            -- + 6000000
insert into resource_types values('dns_record');                -- + 1000000
insert into resource_types values('dns_zone');                  -- +17000000
insert into resource_types values('private_ftp_server');        -- + 7000000
insert into resource_types values('email_domain');              -- + 3000000 (TODO)
insert into resource_types values('postgresql_database');       -- +12000000
insert into resource_types values('postgresql_server');         -- +11000000
insert into resource_types values('postgresql_user');           -- +13000000
insert into resource_types values('backup_server');             -- +       0
insert into resource_types values('physical_server');           -- +       0
insert into resource_types values('virtual_server');            -- +       0
insert into resource_types values('rack');                      -- +18000000
insert into resource_types values('server_farm');               -- +19000000
commit;
