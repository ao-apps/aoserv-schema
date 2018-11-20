select aosh.add_command(
  'check_ssl_certificate',
  'pki',
  'ssl_certificates',
  'checks an SSL certificate status',
  '<i>ao_server</i> <i>key_file_or_certbot_name</i>',
  '1.81.10',
  null
);
