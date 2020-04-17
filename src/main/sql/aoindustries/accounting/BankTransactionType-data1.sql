/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2010, 2013, 2018, 2020  AO Industries, Inc.
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

COPY accounting."BankTransactionType" FROM stdin;
wire_transfer	Wire Transfer	Wire Transfer	t
withdrawal	Withdrawal	Withdrawal from account	t
card_fee	Debit Card Fee	Debit card fee	t
card_purchase	Debit Card Purchase	Purchase with visa credit card	t
check	Check	Check	t
check_fee	Check Fee	Check ordering fee	t
deposit	Deposit	Deposit into account	f
merchant_deposit	Merchant Deposit	Merchant account deposit	f
merchant_fee	Merchant Fee	Merchant account fee	t
service_fee	Service Fee	Bank service fee	t
refund	Refund	Refund client account balance	t
\.
insert into accounting."BankTransactionType" values('pseudo', 'Pseudo Transaction', 'Zero-sum pseudo transactions used to rellocate funds between expense categories', false);
