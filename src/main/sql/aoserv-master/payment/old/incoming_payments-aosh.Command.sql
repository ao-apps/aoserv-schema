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

select aosh.add_command(
  'add_incoming_payment',
  'payment',
  'incoming_payments',
  'attaches payment data to a transaction',
  '<i>transaction_id</i> <i>enc_cardholder_name</i> <i>enc_card_number</i> <i>enc_expiration_month</i> <i>enc_expiration_year</i>',
  '1.0a100',
  '1.28'
);
select aosh.add_command(
  'remove_incoming_payment',
  'payment',
  'incoming_payments',
  'removes payment data from a transaction',
  '<i>transaction_id</i>',
  '1.0a100',
  '1.28'
);
