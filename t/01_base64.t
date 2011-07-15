use strict;
use warnings;
use utf8;
use Test::More;
use Acme::Collector64;
use Encode;

my $base64 = Acme::Collector64->new();

is $base64->encode(':)'), 'Oik=';
is $base64->encode('Perl'), 'UGVybA==';

is $base64->decode('44GT44KT44Gr44Gh44Gv44CB5LiW55WM'), encode_utf8('こんにちは、世界');
is $base64->decode('KCDvvp/QtO++nyk='), encode_utf8('( ﾟдﾟ)');

done_testing;
