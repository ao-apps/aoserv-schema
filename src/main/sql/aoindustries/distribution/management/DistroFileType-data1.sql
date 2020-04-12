COPY "distribution.management"."DistroFileType" FROM stdin;
config	Configuration files must exist and have matching permissions
no_recurse	System files that must exactly match, but will not be recursively verified
prelink	System files that are prelinked and must exactly match the distribution data
system	System files must exactly match the distribution data
user	User directories are scanned for problem files
\.
