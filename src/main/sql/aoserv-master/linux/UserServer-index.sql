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

create index "UserServer_ao_server_uid_idx" on linux."UserServer" (
  ao_server,
  uid
);
create index "UserServer_uid_idx" on linux."UserServer" (
  uid
);
create index "UserServer_autoresponder_from_fkey" on linux."UserServer" (
  autoresponder_from
);
create index "UserServer_disable_log_fkey" on linux."UserServer" (
  disable_log
);
create index "UserServer_sa_integration_mode_fkey" on linux."UserServer" (
  sa_integration_mode
);
