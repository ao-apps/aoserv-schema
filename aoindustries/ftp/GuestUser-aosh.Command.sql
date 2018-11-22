select aosh.add_command(
  'add_ftp_guest_user',
  'ftp',
  'ftp_guest_users',
  'adds a new FTP guest user',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_ftp_guest_user',
  'ftp',
  'ftp_guest_users',
  'removes a FTP guest user',
  '<i>username</i>',
  '1.0a100',
  null
);
