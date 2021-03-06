#!perl

use strict;
use warnings;

use Test::More;

use mop;

sub cached   {}

class Bar {}
class Foo extends Bar is abstract {
    has $!foo is rw, required;
    has $!bar is rw;
    has $!gorch is cached({});

    method foo ($x) is cached({}) {}

    method bar is required {}
}

pass("... this actually parsed!");

done_testing;