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

create index "Action_ticket_fkey" on ticket."Action" (ticket);
create index "Action_administrator_fkey" on ticket."Action" (administrator);
create index "Action_time_fkey" on ticket."Action" ("time");
create index "Action_action_type_fkey" on ticket."Action" (action_type);
create index "Action_old_accounting_fkey" on ticket."Action" (old_accounting);
create index "Action_new_accounting_fkey" on ticket."Action" (new_accounting);
create index "Action_old_priority_fkey" on ticket."Action" (old_priority);
create index "Action_new_priority_fkey" on ticket."Action" (new_priority);
create index "Action_old_type_fkey" on ticket."Action" (old_type);
create index "Action_new_type_fkey" on ticket."Action" (new_type);
create index "Action_old_status_fkey" on ticket."Action" (old_status);
create index "Action_new_status_fkey" on ticket."Action" (new_status);
create index "Action_old_assigned_to_fkey" on ticket."Action" (old_assigned_to);
create index "Action_new_assigned_to_fkey" on ticket."Action" (new_assigned_to);
create index "Action_old_category_fkey" on ticket."Action" (old_category);
create index "Action_new_category_fkey" on ticket."Action" (new_category);
cluster ticket."Action" using "Action_ticket_fkey";
analyze ticket."Action";
