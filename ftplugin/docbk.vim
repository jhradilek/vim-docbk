" Vim filetype plugin file
" Language:    DocBook
" Maintainer:  Jaromir Hradilek <jhradilek@gmail.com>
" URL:         https://github.com/jhradilek/vim-docbk
" Last Change: 01 April 2015
" Description: A filetype plugin file for the DocBook markup language.

" Run this plugin only once for the current buffer:
if exists('b:did_ftplugin')
  finish
endif

" Save the compatibility options to avoid problems in compatible mode:
let s:save_cpo = &cpo
set cpo&vim

" Determine the DocBook type:
if !exists('b:docbk_type')
  " Check the file extension of the current buffer:
  if expand('%:e') == 'sgml'
    " Set the DocBook type to SGML:
    let b:docbk_type = 'sgml'
  else
    " Set the DocBook type to XML:
    let b:docbk_type = 'xml'
  endif
endif

" Determine the DocBook version:
if !exists('b:docbk_ver')
  " Check whether the DocBook version is already specified:
  if exists('docbk_ver')
    " Use the selected version of DocBook:
    let b:docbk_ver = docbk_ver
  else
    " Use DocBook 4.5 by default:
    let b:docbk_ver = 4
  endif
endif

" Change the configuration:
if b:docbk_type == 'sgml'
  " Load the filetype plugin file for the SGML language:
  runtime! ftplugin/sgml.vim ftplugin/sgml_*.vim ftplugin/sgml/*.vim
else
  " Load the filetype plugin file for the XML language:
  runtime! ftplugin/xml.vim ftplugin/xml_*.vim ftplugin/xml/*.vim

  " Verify that omni completion is supported and the :XMLns command
  " is defined:
  if exists('&omnifunc') && exists(':XMLns')
    " Check the DocBook version:
    if b:docbk_ver == 5
      " Enable omni completion for DocBook 5.0:
      XMLns docbook50
    else
      " Enable omni completion for DocBook 4.5:
      XMLns docbook45
    endif
  endif
endif

" Restore the compatibility options:
let &cpo = s:save_cpo
unlet s:save_cpo
