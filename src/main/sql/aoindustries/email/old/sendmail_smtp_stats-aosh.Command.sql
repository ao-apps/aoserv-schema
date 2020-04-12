select aosh.add_command(
  'add_sendmail_smtp_stat',
  'email',
  'sendmail_smtp_stats',
  'adds to the daily SMTP statistics',
  '<i>package</i> <i>date</i> <i>ao_server</i> <i>in_count</i> <i>in_bandwidth</i> <i>out_count</i> <i>out_bandwidth</i>',
  '1.0a100',
  '1.30'
);
