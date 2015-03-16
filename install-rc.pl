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
               'bash_aliases',
               'gitconfig',
               'latexmkrc',
              );

my @bin = (
           'phrases'
          );

for (@rcfiles) {
    my $output = `ln -sf $ENV{PWD}/$_ ~/.$_`;
    if ($?) {
        print $output;
    }
}

# ensure that user-specific bin is available
`mkdir -p ~/bin`;

for (@bin) {
    my $output = `ln -sf $ENV{PWD}/$_ ~/bin/$_`;
    if ($?) {
        print $output;
    }
}
