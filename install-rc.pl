#! /usr/bin/perl

use strict;
use warnings;

local $\ = "\n";

my @rcfiles = (
               'vimrc',
               'pentadactylrc',
              );

for (@rcfiles) {
    my $output = `ln -sf $ENV{PWD}/$_ ~/.$_`;
    if ($?) {
        print $output;
    }
}
