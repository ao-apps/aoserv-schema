/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2009, 2013, 2015, 2018, 2020, 2022, 2026  AO Industries, Inc.
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

INSERT INTO billing."TransactionType" ("name", is_credit) VALUES
  ('aoserv', false),
  ('application', false),
  ('backup', false),
  ('bandwidth', false),
  ('cancel', true),
  ('colocation', false),
  ('consulting', false),
  ('credit', true),
  ('data_archive', false),
  ('dedicated', false),
  ('discount', true),
  ('disk', false),
  ('donation', true),
  ('email', false),
  ('httpd', false),
  ('ip', false),
  ('javavm', false),
  ('managed', false),
  ('other', false),
  ('payment', true),
  ('phone_line', false),
  ('purchase', false),
  ('referral', true),
  ('refund', true),
  ('reseller', false),
  ('shipping', false),
  ('site', false),
  ('support', false),
  ('sysadmin', false),
  ('user', false),
  ('virtual_dedicated', false),
  ('virtual_managed', false),
  ('virtual', false)
ON CONFLICT ("name") DO NOTHING;
