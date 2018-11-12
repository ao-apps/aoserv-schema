COPY "bank_transaction_types" FROM stdin;
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
insert into bank_transaction_types values('pseudo', 'Pseudo Transaction', 'Zero-sum pseudo transactions used to rellocate funds between expense categories', false);
