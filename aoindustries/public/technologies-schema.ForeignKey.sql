select "schema".add_foreign_key('public', 'technologies', 'name',  'public', 'technology_names',   'name', '1.0a100', null);
select "schema".add_foreign_key('public', 'technologies', 'class', 'public', 'technology_classes', 'name', '1.0a100', null);
