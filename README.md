# vim-docbk

## Description

The **vim-docbk** plug-in adds support for the DocBook XML language to Vim. It provides a syntax file, a filetype plug-in, and omni completion for DocBook 4.5 and 5.0.

For a complete set of snippets for this language, see my [vim-snippets](https://github.com/jhradilek/vim-snippets) repository.

## Installation

### Installing the Plug-in Using Vundle

To install this plug-in by using the [Vundle](https://github.com/gmarik/vundle) plug-in manager, add the following line to your **~/.vimrc**:

    Bundle 'jhradilek/vim-docbk'

Then run the following command in Vim:

    :BundleInstall

### Installing the Plug-in Using Pathogen

[Pathogen](https://github.com/tpope/vim-pathogen) looks for Vim files in the **~/.vim/bundle/** directory. To make sure that this directory exists, type the following at a shell prompt:

    install -d ~/.vim/bundle/

To install this plug-in, change to the **~/.vim/bundle/** directory and clone this repository there.

### Installing Syntax Files Manually

Vim looks for its configuration files in the **~/.vim/** directory. To make sure that this directory exists, type the following at a shell prompt:

    mkdir ~/.vim/

To install this plug-in, change to the directory with your local copy of this repository and run the following command:

    cp -R * ~/.vim/

This copies all files and directories to the **~/.vim/** directory.

## Configuration

### Enabling Syntax Highlighting

To enable syntax highlighting in the current session, run the following Vim command:

    :syntax on

To enable syntax highlighting permanently, add the following line to your **~/.vimrc** file:

    syntax on

You can also explicitly enable file type detection by adding the following line to this file:

    filetype on

For more information on how to enable and configure syntax highlighting in Vim, refer to the [Vim Documentation](http://vimdoc.sourceforge.net/htmldoc/syntax.html).

## Copyright

Copyright © 2013 Jaromir Hradilek  
Copyright © 2005, 2013 Devin Weaver

This program is free software; see the source for copying conditions. It is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

