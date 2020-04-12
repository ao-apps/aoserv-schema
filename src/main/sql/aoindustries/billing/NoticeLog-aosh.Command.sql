select aosh.add_command(
  'add_notice_log',
  'billing',
  'notice_log',
  'adds a notice log entry to a business',
  '<i>business</i> <i>billing_contact</i> <i>email_address</i> <i>balance</i> <i>type</i> <i>transaction_id</i>',
  '1.0a100',
  '1.82.1'
);
select aosh.add_command(
  'add_notice_log',
  'billing',
  'notice_log',
  'adds a notice log entry to a business',
  '<i>business</i> <i>billing_contact</i> <i>email_address</i> <i>type</i> {""|<i>transaction_id</i>}',
  '1.83.0',
  null
);
