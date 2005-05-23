#!/usr/bin/perl
# $Id: 01run.t,v 1.6 2005/05/23 15:02:40 rousse Exp $

use Test::More tests => 7;
use File::Temp qw/tempdir/;
use Dict::Lexed;
use strict;

my @words = map { chomp; $_} <DATA>;
my $dir = tempdir(CLEANUP => 1);
Dict::Lexed->create_dict(\@words, "-d $dir");

ok(
    -f "$dir/lexicon.fsa" && -f "$dir/lexicon.tbl"
);


my $dict = Dict::Lexed->new("-d $dir", "-s 1 -W 10");
isa_ok($dict, 'Dict::Lexed');

ok($dict->check("paume"));
ok($dict->check("plume"));
ok(!$dict->check("poume"));

ok(eq_array([ $dict->suggest("poume") ], [ qw/paume plume/ ])); 
ok(eq_array([ $dict->suggest("paume") ], [ qw/plume/ ])); 

__DATA__
paume
plume
