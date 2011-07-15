use strict;
use warnings;
use utf8;
use Test::More;
use Acme::Collector64;
use Encode;

my $index_table = 'あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもらりるれろがぎぐげござじずぜぞばびぶべぼぱぴぷぺぽやゆよわ=';

my $japanese64 = Acme::Collector64->new(
    index_table => $index_table,
);

is $japanese64->encode('XD'), 'ぬおち=';
is $japanese64->encode(encode_utf8('こんにちは！こんにちは！')), 'ぴぴきとぴぴさとぴぴきげぴぴきめぴぴきずぽぽばいぴぴきとぴぴさとぴぴきげぴぴきめぴぴきずぽぽばい';

is $japanese64->decode('ぴぴさこぴぴきたぴぴきむ'), encode_utf8('らくだ');
is $japanese64->decode('ぴぴきのぴぴさかぴぴさうぴぴさとぴぴきすけそそいがまそいらそそいめそそいずじそいれち=='), encode_utf8('じゅもんが ちがいます');

done_testing;
