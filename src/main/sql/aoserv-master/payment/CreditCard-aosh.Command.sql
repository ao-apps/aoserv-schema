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
  'add_credit_card',
  'payment',
  'credit_cards',
  'adds a credit card to a business',
  '<i>business</i> <i>enc_card_number</i> <i>card_info</i> <i>enc_expiration_month</i> <i>enc_expiration_year</i> <i>enc_cardholder_name</i> <i>enc_street_address</i> <i>enc_city</i> {""|<i>enc_state</i>} {""|<i>enc_zip</i>} <i>use_monthly</i> {""|<i>description</i>}',
  '1.0a100',
  '1.28'
);
select aosh.add_command(
  'decline_credit_card',
  'payment',
  'credit_cards',
  'declines and disables a credit card',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_credit_card',
  'payment',
  'credit_cards',
  'removes a credit card from a business',
  '<i>pkey</i>',
  '1.0a100',
  null
);
