use inc::Module::Install;
name 'Acme-Collector64';
all_from 'lib/Acme/Collector64.pm';

test_requires 'Test::More';

tests 't/*.t';
author_tests('xt');

WriteAll;
