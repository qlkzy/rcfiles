#! /usr/bin/perl

use strict;
use warnings;

local $\ = "\n";

my @rcfiles = (
               'vimrc',
               'pentadactylrc',
               'git_ps1.sh',
               'Xresources',
               'stumpwmrc',
               'conkerorrc',
               'gitconfig',
              );

for (@rcfiles) {
    my $output = `ln -sf $ENV{PWD}/$_ ~/.$_`;
    if ($?) {
        print $output;
    }
}

# ensure that user-specific bin is available
`mkdir -p ~/bin`;
