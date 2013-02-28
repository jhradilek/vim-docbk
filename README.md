# vim-docbk

## Description

The **vim-docbk** repository provides a collection of syntax files for the DocBook XML language.

## Installation

### Installing Syntax Files Using Vundle

To install the included syntax files by using the [Vundle](https://github.com/gmarik/vundle) plug-in manager, add the following line to your **~/.vimrc**:

    Bundle 'jhradilek/vim-docbk'

Then run the following command in Vim:

    :BundleInstall

### Installing Syntax Files Using Pathogen

[Pathogen](https://github.com/tpope/vim-pathogen) looks for Vim files in the **~/.vim/bundle/** directory. To make sure that this directory exists, type the following at a shell prompt:

    install -d ~/.vim/bundle/

To install the included syntax files, change to the **~/.vim/bundle/** directory and clone this repository there.

### Installing Syntax Files Manually

Syntax files are locally stored in the **~/.vim/syntax/** directory. To make sure that this directory exists, type the following at a shell prompt:

    install -d ~/.vim/syntax/

To install the syntax files, change to the directory with your local copy of this repository and run the following command:

    cp syntax/* ~/.vim/syntax/

## Configuration

### Enabling Syntax Highlighting

To enable syntax highlighting in the current session, run the following Vim command:

    :syntax on

To enable syntax highlighting permanently, add the following line to your **~/.vimrc** file:

    syntax on

You can also explicitly enable file type detection by adding the following line to this file:

    filetype on

For more information on how to enable and configure syntax highlighting in Vim, refer to the [Vim Documentation](http://vimdoc.sourceforge.net/htmldoc/syntax.html).
