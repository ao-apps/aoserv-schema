select "schema".add_column('email', 'email_attachment_types', 'extension',        'string',  false,  true, true, 'the unique filename extension', '1.0a116', null);
select "schema".add_column('email', 'email_attachment_types', 'description',      'string',  false, false, true, 'a brief description of the attachment type', '1.0a116', null);
select "schema".add_column('email', 'email_attachment_types', 'is_default_block', 'boolean', false, false, true, 'indicates that the type will be blocked by default', '1.0a116', null);
