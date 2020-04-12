COPY "info_categories" FROM stdin;
1	article	java	1	Java Hosting Articles	Java Hosting	Java Hosting	Articles about our Java software, configuration, motives, and support	articles, info, information, java, hosting, virtual, machine, machines, jvm, jvms, servlet, engines, server, pages, JSP, tomcat, catalina, jetty, jdbc, ejb, APIs
2	article	reliability	2	Reliability Measures	Reliability Measures	Reliability	Reliability measures taken to provide high website availability	reliability, measures, availability, accessability, stability
4	faq	postgresql	100	PostgreSQL Relational Database	PostgreSQL Database	PostgreSQL	The PostgreSQL relational database FAQs	postgresql, relational, database, faq, facts
3	faq	email	1	Email FAQs	Email FAQs	Email	Email FAQs	email, frequently, asked, questions, FAQ, facts
5	faq	jvms	10	Java Virtual Machines	Java Virtual Machines	JVMs	Servlet and Enterprise Java Beans (EJB) Java virtual machines (JVMs)	serlvet, enterprise, java, beans, ejb, java, virtual, machine, jvms
6	faq	php	50	PHP Frequently Asked Questions (FAQs)	PHP FAQs	PHP	PHP Frequently Asked Questions (FAQs)	php, zend, frequently, asked, questions, faqs, facts
7	faq	webdav	200	WebDAV Frequently Asked Questions (FAQs)	WebDAV FAQs	WebDAV	WebDAV frequently asked questions (FAQs)	webdav, dav, frequently, asked, questions, faqs, facts
8	faq	dns	-100	DNS Frequently Asked Questions (FAQs)	DNS FAQs	DNS	DNS frequently asked questions (FAQs)	dns, domain, name, service, system, frequently, asked, questions, faqs, facts
9	faq	httpd	8	HTTP Server Frequently Asked Questions (FAQs)	HTTP Server FAQs	HTTP Server	HTTP (Apache) server frequently asked questions	HTTP, Apache, server, frequently, asked, questions, faqs
10	article	security	1	Security Articles	Security Articles	Security	Articles that help our clients maintain good security practices.	security, articles, client, help
\.
SELECT setval ('info_categories_pkey_seq', 10, true);
