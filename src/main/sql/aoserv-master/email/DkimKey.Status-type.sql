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

CREATE TYPE email."DkimKey.Status" AS ENUM (
  'new',
  'signing',
  'old',
  'removal'
);
COMMENT ON TYPE email."DkimKey.Status" IS
'┌─────────┬─────────────────────────────────────────────────────────────────────────────────────────────────┐
│ Element │                                             Comment                                             │
├─────────┼─────────────────────────────────────────────────────────────────────────────────────────────────┤
│ new     │ A key that has been created but not yet used, could be waiting for DNS propagation time        ↵│
│         │ or on reserve for quick deployment in case of security compromise.                              │
│ signing │ The key used for current signing, only one may be active per email.Domain.                      │
│ old     │ A key left for some time after rotation for verifying older messages.                           │
│ removal │ Old key remains until DNS is confirmed to be removed, after which it may be deleted completely. │
└─────────┴─────────────────────────────────────────────────────────────────────────────────────────────────┘

Matches enum com.aoindustries.aoserv.client.email.DkimKey.Status';
