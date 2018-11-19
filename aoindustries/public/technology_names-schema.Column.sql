select "schema".add_column('technology_names', 'name', 0, 'string', false, true, true, 'the name of the package', '1.0a100', null);
select "schema".add_column('technology_names', 'image_filename', 1, 'string', true, false, true, 'the name of the file containing the image', '1.0a100', null);
select "schema".add_column('technology_names', 'image_width', 2, 'int', true, false, true, 'the width of the image', '1.0a100', null);
select "schema".add_column('technology_names', 'image_height', 3, 'int', true, false, true, 'the height of the image', '1.0a100', null);
select "schema".add_column('technology_names', 'image_alt', 4, 'string', true, false, true, 'the alt attribute of the image', '1.0a100', null);
select "schema".add_column('technology_names', 'home_page_url', 5, 'url', true, false, true, 'the URL of the technology home page', '1.0a100', null);
