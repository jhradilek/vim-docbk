" Vim filetype plugin file
" Language:    DocBook
" Maintainer:  Jaromir Hradilek <jhradilek@gmail.com>
" URL:         https://github.com/jhradilek/vim-docbk
" Last Change: 1 April 2013
" Description: A filetype plugin file for the DocBook markup language.

" Only run a filetype plugin once for the buffer:
if exists('b:did_ftplugin') | finish | endif

" Detect the DocBook format:
if !exists('b:docbk_type')
  if expand('%:e') == 'sgml'
    let b:docbk_type = 'sgml'
  else
    let b:docbk_type = 'xml'
  endif
endif

" Detect the DocBook version:
if !exists('b:docbk_ver')
  if exists('docbk_ver')
    let b:docbk_ver = docbk_ver
  else
    let b:docbk_ver = 4
  endif
endif

" Change the configuration:
if b:docbk_type == 'sgml'
  " Behave just like SGML:
  runtime! ftplugin/sgml.vim ftplugin/sgml_*.vim ftplugin/sgml/*.vim
else
  " Behave just like XML:
  runtime! ftplugin/xml.vim ftplugin/xml_*.vim ftplugin/xml/*.vim

  " Save the compatibility options to avoid problems in compatible mode:
  let s:save_cpo = &cpo
  set cpo&vim

  " Make sure omni completion is supported and :XMLns is defined:
  if exists('&omnifunc') && exists(':XMLns')
    if b:docbk_ver == 5
      " Enable omni completion for DocBook 5.0:
      XMLns docbook50
    else
      " Enable omni completion for DocBook 4.5:
      XMLns docbook45
    endif
  endif

  " Restore the compatibility options:
  let &cpo = s:save_cpo
  unlet s:save_cpo
endif
