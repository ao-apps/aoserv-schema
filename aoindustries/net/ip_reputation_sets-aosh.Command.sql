select aosh.add_command(
  'add_ip_reputation',
  'net',
  'ip_reputation_sets',
  'adds reputation for a host and its network',
  '<i>identifier</i> <i>ip_address</i> {<b>uncertain</b>|<b>definite</b>} {<b>good</b>|<b>bad</b>} <i>score</i>',
  '1.65',
  null
);
