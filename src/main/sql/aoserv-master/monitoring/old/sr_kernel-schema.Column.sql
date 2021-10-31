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

select "schema".add_column('monitoring', 'sr_kernel', 'server_report',       'fkey',  false,  true, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'files_allocated_min', 'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'files_allocated_avg', 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'files_allocated_max', 'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'files_used_min',      'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'files_used_avg',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'files_used_max',      'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'files_max_min',       'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'files_max_avg',       'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'files_max_max',       'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'nr_inodes_min',       'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'nr_inodes_avg',       'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'nr_inodes_max',       'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'nr_free_inodes_min',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'nr_free_inodes_avg',  'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'nr_free_inodes_max',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'inode_preshrink_min', 'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'inode_preshrink_avg', 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'inode_preshrink_max', 'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'msgmax_min',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'msgmax_avg',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'msgmax_max',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'msgmnb_min',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'msgmnb_avg',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'msgmnb_max',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'msgmni_min',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'msgmni_avg',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'msgmni_max',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'nr_msg_min',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'nr_msg_avg',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'nr_msg_max',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'entropy_avail_min',   'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'entropy_avail_avg',   'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'entropy_avail_max',   'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'rtsig_max_min',       'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'rtsig_max_avg',       'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'rtsig_max_max',       'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'rtsig_nr_min',        'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'rtsig_nr_avg',        'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'rtsig_nr_max',        'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'semmsl_min',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'semmsl_avg',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'semmsl_max',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'semmns_min',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'semmns_avg',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'semmns_max',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'semopm_min',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'semopm_avg',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'semopm_max',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'semmni_min',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'semmni_avg',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'semmni_max',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'nr_sem_min',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'nr_sem_avg',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'nr_sem_max',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'shmall_min',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'shmall_avg',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'shmall_max',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'shmmax_min',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'shmmax_avg',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'shmmax_max',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'shmmni_min',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'shmmni_avg',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'shmmni_max',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'nr_shm_min',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'nr_shm_avg',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'nr_shm_max',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'shm_used_min',        'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'shm_used_avg',        'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'shm_used_max',        'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'threads_max_min',     'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'threads_max_avg',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_kernel', 'threads_max_max',     'int',   false, false, false, '', '1.0a100', '1.30');
