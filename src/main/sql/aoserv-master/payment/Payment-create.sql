/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2007, 2010, 2012, 2018, 2019, 2020, 2021  AO Industries, Inc.
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

create sequence         payment."Payment_id_seq" cycle;
grant all            on payment."Payment_id_seq" to aoadmin;
grant select, update on payment."Payment_id_seq" to aoserv_app;

create table payment."Payment" (
  id integer
    default nextval('payment."Payment_id_seq"')
    primary key,
  processor_id text not null,
  accounting text not null,
  group_name text,
  test_mode boolean not null,
  duplicate_window integer not null,
  order_number text,
  currency char(3) not null,
  amount numeric not null,
  "taxAmount" numeric,
  tax_exempt boolean not null,
  "shippingAmount" numeric,
  "dutyAmount" numeric,
  shipping_first_name text,
  shipping_last_name text,
  shipping_company_name text,
  shipping_street_address1 text,
  shipping_street_address2 text,
  shipping_city text,
  shipping_state text,
  shipping_postal_code text,
  shipping_country_code character(2),
  email_customer boolean not null,
  merchant_email "com.aoapps.net"."Email",
  invoice_number text,
  purchase_order_number text,
  description text,
  -- TODO: This table has a lot of columns that are null depending on status:
  -- TODO: Consider making a TransactionCreditCard table, especially if we handle other types of payments
  credit_card_created_by text not null,
  credit_card_principal_name text,
  credit_card_accounting text not null,
  credit_card_group_name text,
  credit_card_provider_unique_id text,
  credit_card_masked_card_number text not null,
  "creditCard.expirationMonth" smallint,
  "creditCard.expirationYear" smallint,
  credit_card_first_name text not null,
  credit_card_last_name text not null,
  credit_card_company_name text,
  credit_card_email "com.aoapps.net"."Email",
  credit_card_phone text,
  credit_card_fax text,
  "creditCard.customerId" text,
  credit_card_customer_tax_id text,
  credit_card_street_address1 text not null,
  credit_card_street_address2 text,
  credit_card_city text not null,
  credit_card_state text,
  credit_card_postal_code text,
  credit_card_country_code character(2) not null,
  credit_card_comments text,
  -- TODO: This table has a lot of columns that are null depending on status:
  -- TODO: Consider making an AuthorizationResult table,
  -- TODO: and we could add a new status where we log the transaction before contacting the processor
  authorization_time timestamp with time zone not null,
  authorization_username text not null,
  authorization_principal_name text,
  authorization_communication_result "com.aoapps.payments"."TransactionResult.CommunicationResult",
  authorization_provider_error_code text,
  authorization_error_code "com.aoapps.payments"."TransactionResult.ErrorCode",
  authorization_provider_error_message text,
  authorization_provider_unique_id text,
  -- Names match PropertiesPersistenceMechanism for convenience, but no technical requirement for this
  "authorizationResult.providerReplacementMaskedCardNumber" text,
  "authorizationResult.replacementMaskedCardNumber" text,
  "authorizationResult.providerReplacementExpiration" text,
  "authorizationResult.replacementExpirationMonth" smallint,
  "authorizationResult.replacementExpirationYear" smallint,
  authorization_provider_approval_result text,
  authorization_approval_result "com.aoapps.payments"."AuthorizationResult.ApprovalResult",
  authorization_provider_decline_reason text,
  authorization_decline_reason "com.aoapps.payments"."AuthorizationResult.DeclineReason",
  authorization_provider_review_reason text,
  authorization_review_reason "com.aoapps.payments"."AuthorizationResult.ReviewReason",
  authorization_provider_cvv_result text,
  authorization_cvv_result "com.aoapps.payments"."AuthorizationResult.CvvResult",
  authorization_provider_avs_result text,
  authorization_avs_result "com.aoapps.payments"."AuthorizationResult.AvsResult",
  authorization_approval_code text,
  -- TODO: This table has a lot of columns that are null depending on status:
  -- TODO: Consider making a CaptureResult table
  capture_time timestamp with time zone,
  capture_username text,
  capture_principal_name text,
  capture_communication_result "com.aoapps.payments"."TransactionResult.CommunicationResult",
  capture_provider_error_code text,
  capture_error_code "com.aoapps.payments"."TransactionResult.ErrorCode",
  capture_provider_error_message text,
  capture_provider_unique_id text,
  -- TODO: This table has a lot of columns that are null depending on status:
  -- TODO: Consider making a VoidResult table
  void_time timestamp with time zone,
  void_username text,
  void_principal_name text,
  void_communication_result "com.aoapps.payments"."TransactionResult.CommunicationResult",
  void_provider_error_code text,
  void_error_code "com.aoapps.payments"."TransactionResult.ErrorCode",
  void_provider_error_message text,
  void_provider_unique_id text,
  status "com.aoapps.payments"."Transaction.Status" not null,
  unique(processor_id, authorization_provider_unique_id),
  unique(processor_id, capture_provider_unique_id),
  unique(processor_id, void_provider_unique_id)
);

/* Conversion to 1.83.0:

Note: Carefully review and adapt "null as" on conversions:

create table payment."Payment_20190721" as select * from payment."Payment";

-- Recreate table, indexes, foreign keys

insert into payment."Payment" select
  id,
  processor_id,
  accounting,
  group_name,
  test_mode,
  duplicate_window,
  order_number,
  currency_code,
  amount,
  tax_amount,
  tax_exempt,
  shipping_amount,
  duty_amount,
  shipping_first_name,
  shipping_last_name,
  shipping_company_name,
  shipping_street_address1,
  shipping_street_address2,
  shipping_city,
  shipping_state,
  shipping_postal_code,
  shipping_country_code,
  email_customer,
  merchant_email,
  invoice_number,
  purchase_order_number,
  description,
  credit_card_created_by,
  credit_card_principal_name,
  credit_card_accounting,
  credit_card_group_name,
  credit_card_provider_unique_id,
  credit_card_masked_card_number,
  "creditCard.expirationMonth",
  "creditCard.expirationYear",
  credit_card_first_name,
  credit_card_last_name,
  credit_card_company_name,
  credit_card_email,
  credit_card_phone,
  credit_card_fax,
  "creditCard.customerId",
  credit_card_customer_tax_id,
  credit_card_street_address1,
  credit_card_street_address2,
  credit_card_city,
  credit_card_state,
  credit_card_postal_code,
  credit_card_country_code,
  credit_card_comments,
  authorization_time,
  authorization_username,
  authorization_principal_name,
  authorization_communication_result,
  authorization_provider_error_code,
  authorization_error_code,
  authorization_provider_error_message,
  authorization_provider_unique_id,
  "authorizationResult.providerReplacementMaskedCardNumber",
  "authorizationResult.replacementMaskedCardNumber",
  "authorizationResult.providerReplacementExpiration",
  "authorizationResult.replacementExpirationMonth",
  "authorizationResult.replacementExpirationYear",
  authorization_provider_approval_result,
  authorization_approval_result,
  authorization_provider_decline_reason,
  authorization_decline_reason,
  authorization_provider_review_reason,
  authorization_review_reason,
  authorization_provider_cvv_result,
  authorization_cvv_result,
  authorization_provider_avs_result,
  authorization_avs_result,
  authorization_approval_code,
  capture_time,
  capture_username,
  capture_principal_name,
  capture_communication_result,
  capture_provider_error_code,
  capture_error_code,
  capture_provider_error_message,
  capture_provider_unique_id,
  void_time,
  void_username,
  void_principal_name,
  void_communication_result,
  void_provider_error_code,
  void_error_code,
  void_provider_error_message,
  void_provider_unique_id,
  status
from
  payment."Payment_20190721";

-- Recreate foreign keys to this table

-- Perform grants
*/

grant all                    on payment."Payment" to aoadmin;
grant select, insert, update on payment."Payment" to aoserv_app;
