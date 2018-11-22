select aosh.add_command(
  'add_email_smtp_relay',
  'email',
  'email_smtp_relays',
  'adds a SMTP relay rule',
  '<i>package</i> {""|<i>ao_server</i>} <i>host</i> <i>type</i> {""|<i>duration</i>}',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_email_smtp_relay',
  'email',
  'email_smtp_relays',
  'disables a SMTP access rule',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_email_smtp_relay',
  'email',
  'email_smtp_relays',
  'enables a SMTP access rule',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'refresh_email_smtp_relay',
  'email',
  'email_smtp_relays',
  'refreshes a SMTP access rule',
  '<i>pkey</i> {""|<i>min_duration</i>}',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_smtp_relay',
  'email',
  'email_smtp_relays',
  'removes a SMTP access rule',
  '<i>pkey</i>',
  '1.0a100',
  null
);
