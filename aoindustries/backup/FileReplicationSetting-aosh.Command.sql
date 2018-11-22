select aosh.add_command(
  'add_file_backup_setting',
  'backup',
  'file_backup_settings',
  'creates a new FileBackupSetting',
  '<i>server</i> <i>path</i> <i>package</i> <i>backup_level</i> <i>backup_retention</i> <i>recurse</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'add_file_backup_setting',
  'backup',
  'file_backup_settings',
  'creates a new FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i>',
  '1.31',
  '1.61'
);
select aosh.add_command(
  'add_file_backup_setting',
  'backup',
  'file_backup_settings',
  'creates a new FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i> <i>required</i>',
  '1.62',
  null
);
select aosh.add_command(
  'remove_file_backup_setting',
  'backup',
  'file_backup_settings',
  'removes a FileBackupSetting',
  '<i>server</i> <i>path</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_file_backup_setting',
  'backup',
  'file_backup_settings',
  'removes a FileBackupSetting',
  '<i>replication</i> <i>path</i>',
  '1.31',
  null
);
select aosh.add_command(
  'set_file_backup_setting',
  'backup',
  'file_backup_settings',
  'sets the values in a FileBackupSetting',
  '<i>server</i> <i>path</i> <i>package</i> <i>backup_level</i> <i>backup_retention</i> <i>recurse</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_file_backup_setting',
  'backup',
  'file_backup_settings',
  'sets the values in a FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i>',
  '1.31',
  '1.61'
);
select aosh.add_command(
  'set_file_backup_setting',
  'backup',
  'file_backup_settings',
  'sets the values in a FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i> <i>required</i>',
  '1.62',
  null
);
