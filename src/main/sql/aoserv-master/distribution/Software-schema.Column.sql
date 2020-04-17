/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoserv-schema.
 *
 * aoserv-schema is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aoserv-schema is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

select "schema".add_column('distribution', 'technology_names', 'name',           'string', false,  true, true, 'the name of the package', '1.0a100', null);
select "schema".add_column('distribution', 'technology_names', 'image_filename', 'string',  true, false, true, 'the name of the file containing the image', '1.0a100', null);
select "schema".add_column('distribution', 'technology_names', 'image_width',    'int',     true, false, true, 'the width of the image', '1.0a100', null);
select "schema".add_column('distribution', 'technology_names', 'image_height',   'int',     true, false, true, 'the height of the image', '1.0a100', null);
select "schema".add_column('distribution', 'technology_names', 'image_alt',      'string',  true, false, true, 'the alt attribute of the image', '1.0a100', null);
select "schema".add_column('distribution', 'technology_names', 'home_page_url',  'url',     true, false, true, 'the URL of the technology home page', '1.0a100', null);
