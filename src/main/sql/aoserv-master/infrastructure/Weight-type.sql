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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

CREATE DOMAIN infrastructure."Weight" AS smallint
  CHECK (value in (1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024));
COMMENT ON DOMAIN infrastructure."Weight" IS
'Weights are powers of two, between 1 and 1024, that represent how much of a
resource is allocated.  1024 represents 100% of the resource.  Powers of two are
selected because it is simple, and always possible, to split and combine them to
total 1024 (100%).';
