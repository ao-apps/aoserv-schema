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

CREATE SEQUENCE         email."DkimKey_id_seq" CYCLE;
GRANT ALL            ON email."DkimKey_id_seq" TO aoadmin;
GRANT SELECT, UPDATE ON email."DkimKey_id_seq" TO management;

CREATE TABLE email."DkimKey" (
  id INTEGER
    DEFAULT nextval('email."DkimKey_id_seq"')
    PRIMARY KEY,
  "domain" INTEGER
    NOT NULL,
  selector TEXT
    NOT NULL
    DEFAULT 'default',
  created TIMESTAMP WITH TIME ZONE
    NOT NULL
    DEFAULT now(),
  status email."DkimKey.Status"
    NOT NULL
    DEFAULT 'new',
  "statusTime" TIMESTAMP WITH TIME ZONE
    NOT NULL
    DEFAULT now(),
  "dnsRecord" INTEGER
    UNIQUE
    CHECK (
      -- must be null for status removal, optional otherwise
      status != 'removal' OR "dnsRecord" IS NULL
    ),
  "dnsConfirmed" TIMESTAMP WITH TIME ZONE
    CHECK (
      -- non-null required for statuses: signing, old, optional otherwise
      status NOT IN ('signing', 'old') OR "dnsConfirmed" IS NOT NULL
    ),
  unique ("domain", selector)
);
GRANT ALL            ON email."DkimKey" TO aoadmin;
GRANT SELECT         ON email."DkimKey" TO aoserv_app;
GRANT INSERT, UPDATE ON email."DkimKey" TO management;
