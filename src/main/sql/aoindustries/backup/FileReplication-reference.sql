/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2010, 2011, 2013, 2018, 2020  AO Industries, Inc.
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

alter table backup."FileReplication"
  add constraint server_fkey
  foreign key (server)
  references net."Host" (id)
  on delete restrict
  on update cascade
;
alter table backup."FileReplication"
  add constraint backup_partition_fkey
  foreign key (backup_partition)
  references backup."BackupPartition" (id)
  on delete restrict
  on update cascade
;
alter table backup."FileReplication"
  add constraint retention_fkey
  foreign key (retention)
  references backup."BackupRetention" (days)
  on delete restrict
  on update cascade
;
