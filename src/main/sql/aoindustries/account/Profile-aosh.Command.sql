select aosh.add_command(
  'add_business_profile',
  'account',
  'business_profiles',
  'adds a new business profile to a business',
  '<i>business</i> <i>name</i> <i>is_private</i> <i>phone</i> {""|<i>fax</i>} <i>address1</i> {""|<i>address2</i>} <i>city</i> {""|<i>state</i>} <i>country</i> {""|<i>zip</i>} <i>send_invoice</i> <i>billing_contact</i> <i>billing_email</i> <i>technical_contact</i> <i>technical_email</i>',
  '1.0a100',
  '1.81.19'
);
select aosh.add_command(
  'add_business_profile',
  'account',
  'business_profiles',
  'adds a new business profile to a business',
  '<i>business</i> <i>name</i> <i>is_private</i> <i>phone</i> {""|<i>fax</i>} <i>address1</i> {""|<i>address2</i>} <i>city</i> {""|<i>state</i>} <i>country</i> {""|<i>zip</i>} <i>send_invoice</i> <i>billing_contact</i> <i>billing_email</i> <i>billingEmailFormat</i> <i>technical_contact</i> <i>technical_email</i> <i>technicalEmailFormat</i>',
  '1.81.20',
  null
);
