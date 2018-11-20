select aosh.add_command(
  'remove_blackhole_email_address',
  'email',
  'blackhole_email_addresses',
  'stops emails from being discarded sent to /dev/null',
  '<i>address</i> <i>ao_server</i>',
  '1.0a100',
  null
);
