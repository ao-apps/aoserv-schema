select aosh.add_command(
  'check_ssl_certificate',
  'pki',
  'ssl_certificates',
  'checks an SSL certificate status',
  '<i>ao_server</i> <i>key_file_or_certbot_name</i>',
  '1.81.10',
  '1.82.1'
);
select aosh.add_command(
  'pki.Certificate.check',
  'pki',
  'ssl_certificates',
  'checks an SSL certificate status',
  '<i>server</i> <i>keyFile_or_certbotName</i> <i>allowCached</i>',
  '1.83.0',
  null
);
