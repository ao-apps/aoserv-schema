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

alter table aoserv_howtos
  add constraint category_fkey
  foreign key (category)
  references aoserv_howto_categories (category)
  on delete restrict
  on update cascade
;
