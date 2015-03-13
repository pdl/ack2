#!perl -T

use warnings;
use strict;

use Test::More;

use lib 't';
use Util;
use File::Next;

plan tests => 1;

prep_environment();

THREE: {
    my @expected = (
        'my daddy left home when I was three',
        '\'cept an old guitar and an empty bottle of booze.',
        'And he didn\'t leave very much for my Ma and me',
        'Now'
    );

    my @files = qw( t/text/boy-named-sue.txt );
    my @args  = ('three', '--irs=,');

    ack_sets_match( [ @args, @files ], \@expected, 'Comma-separation of lines' );
}
