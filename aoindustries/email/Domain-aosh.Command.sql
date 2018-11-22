select aosh.add_command(
  'add_email_domain',
  'email',
  'email_domains',
  'adds a new email domain',
  '<i>domain</i> <i>ao_server</i> <i>package</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_email_domain',
  'email',
  'email_domains',
  'checks the format of an email domain',
  '<i>domain</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_email_domain_available',
  'email',
  'email_domains',
  'checks the availability of an email domain',
  '<i>domain</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_domain',
  'email',
  'email_domains',
  'removes an email domain and all associated email addresses',
  '<i>domain</i> <i>ao_server</i>',
  '1.0a100',
  null
);
