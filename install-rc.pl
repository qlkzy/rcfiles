#! /usr/bin/perl

use strict;
use warnings;

local $\ = "\n";

my @rcfiles = (
               'vimrc',
               'pentadactylrc',
               'git-ps1'
              );

for (@rcfiles) {
    my $output = `ln -sf $ENV{PWD}/$_ ~/.$_`;
    if ($?) {
        print $output;
    }
}

# ensure that user-specific bin is available
`mkdir -p ~/bin`;
