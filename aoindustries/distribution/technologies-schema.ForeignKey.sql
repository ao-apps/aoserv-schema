select "schema".add_foreign_key('distribution', 'technologies', 'name',  'distribution', 'technology_names',   'name', '1.0a100', null);
select "schema".add_foreign_key('distribution', 'technologies', 'class', 'distribution', 'technology_classes', 'name', '1.0a100', null);
