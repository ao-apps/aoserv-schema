/*
 * aoindustries.com - https://aoindustries.com/
 * Copyright (C) 2000-2006, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoindustries.com.
 *
 * aoindustries.com is non-exclusive, non-transferable, non-redistributable.
 *
 * aoindustries.com is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */

alter table info_categories
  add constraint type_fkey
  foreign key (type)
  references info_types (type)
  on delete restrict
  on update cascade
;
