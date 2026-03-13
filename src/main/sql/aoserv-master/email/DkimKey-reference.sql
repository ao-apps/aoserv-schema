/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2026  AO Industries, Inc.
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

ALTER TABLE email."DkimKey"
  ADD CONSTRAINT domain_fkey
  FOREIGN KEY ("domain")
  REFERENCES email."Domain" (id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE
;
ALTER TABLE email."DkimKey"
  ADD CONSTRAINT "dnsRecord_fkey"
  FOREIGN KEY ("dnsRecord")
  REFERENCES dns."Record" (id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE
;
