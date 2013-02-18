" Vim syntax file
" Language:	DocBook
" Maintainer:	Devin Weaver <vim@tritarget.com>
" URL:		https://github.com/sukima/vim-docbk
" Version:	1.3.0
" Thanks to Johannes Zellner <johannes@zellner.org> for the default to XML
" suggestion.

" REFERENCES:
"   http://docbook.org/
"   http://www.open-oasis.org/docbook/
"

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Auto detect added by Bram Moolenaar
if !exists('b:docbk_type')
  if expand('%:e') == "sgml"
    let b:docbk_type = 'sgml'
  else
    let b:docbk_type = 'xml'
  endif
endif
if 'xml' == b:docbk_type
    doau Syntax xml
    syn cluster xmlTagHook add=docbkKeyword
    syn cluster xmlRegionHook add=docbkRegion,docbkTitle,docbkRemark,docbkCite
    syn case match
elseif 'sgml' == b:docbk_type
    doau Syntax sgml
    syn cluster sgmlTagHook add=docbkKeyword
    syn cluster sgmlRegionHook add=docbkRegion,docbkTitle,docbkRemark,docbkCite
    syn case ignore
endif

" Enable spell checking.
syn spell toplevel

" The following elements are valid in DocBook 5.0:
syn keyword docbkKeyword abbrev abstract accel acknowledgements contained
syn keyword docbkKeyword acronym address affiliation alt anchor contained
syn keyword docbkKeyword annotation answer appendix application arc contained
syn keyword docbkKeyword area areaset areaspec arg article artpagenums contained
syn keyword docbkKeyword attribution audiodata audioobject author contained
syn keyword docbkKeyword authorgroup authorinitials bibliocoverage contained
syn keyword docbkKeyword bibliodiv biblioentry bibliography biblioid contained
syn keyword docbkKeyword bibliolist bibliomisc bibliomixed bibliomset contained
syn keyword docbkKeyword biblioref bibliorelation biblioset contained
syn keyword docbkKeyword bibliosource blockquote book bridgehead contained
syn keyword docbkKeyword callout calloutlist caption caution chapter contained
syn keyword docbkKeyword citation citebiblioid citerefentry citetitle contained
syn keyword docbkKeyword city classname classsynopsis contained
syn keyword docbkKeyword classsynopsisinfo cmdsynopsis co code col contained
syn keyword docbkKeyword colgroup collab colophon colspec command contained
syn keyword docbkKeyword computeroutput confdates confgroup confnum contained
syn keyword docbkKeyword confsponsor conftitle constant constraint contained
syn keyword docbkKeyword constraintdef constructorsynopsis contractnum contained
syn keyword docbkKeyword contractsponsor contrib copyright coref contained
syn keyword docbkKeyword country cover database date dedication contained
syn keyword docbkKeyword destructorsynopsis edition editor email contained
syn keyword docbkKeyword emphasis entry entrytbl envar epigraph contained
syn keyword docbkKeyword equation errorcode errorname errortext contained
syn keyword docbkKeyword errortype example exceptionname extendedlink contained
syn keyword docbkKeyword fax fieldsynopsis figure filename firstname contained
syn keyword docbkKeyword firstterm footnote footnoteref foreignphrase contained
syn keyword docbkKeyword formalpara funcdef funcparams funcprototype contained
syn keyword docbkKeyword funcsynopsis funcsynopsisinfo function contained
syn keyword docbkKeyword glossary glossdef glossdiv glossentry contained
syn keyword docbkKeyword glosslist glosssee glossseealso glossterm contained
syn keyword docbkKeyword group guibutton guiicon guilabel guimenu contained
syn keyword docbkKeyword guimenuitem guisubmenu hardware holder contained
syn keyword docbkKeyword honorific imagedata imageobject imageobjectco contained
syn keyword docbkKeyword important index indexdiv indexentry indexterm contained
syn keyword docbkKeyword info informalequation informalexample contained
syn keyword docbkKeyword informalfigure informaltable initializer contained
syn keyword docbkKeyword inlineequation inlinemediaobject contained
syn keyword docbkKeyword interfacename issuenum itemizedlist itermset contained
syn keyword docbkKeyword jobtitle keycap keycode keycombo keysym contained
syn keyword docbkKeyword keyword keywordset label legalnotice lhs contained
syn keyword docbkKeyword lineage lineannotation link listitem literal contained
syn keyword docbkKeyword literallayout locator manvolnum markup contained
syn keyword docbkKeyword mathphrase mediaobject member menuchoice contained
syn keyword docbkKeyword methodname methodparam methodsynopsis contained
syn keyword docbkKeyword modifier mousebutton msg msgaud msgentry contained
syn keyword docbkKeyword msgexplan msginfo msglevel msgmain msgorig contained
syn keyword docbkKeyword msgrel msgset msgsub msgtext nonterminal note contained
syn keyword docbkKeyword olink ooclass ooexception oointerface option contained
syn keyword docbkKeyword optional orderedlist org orgdiv orgname contained
syn keyword docbkKeyword otheraddr othercredit othername package contained
syn keyword docbkKeyword pagenums para paramdef parameter part contained
syn keyword docbkKeyword partintro person personblurb personname phone contained
syn keyword docbkKeyword phrase pob postcode preface primary primaryie contained
syn keyword docbkKeyword printhistory procedure production contained
syn keyword docbkKeyword productionrecap productionset productname contained
syn keyword docbkKeyword productnumber programlisting programlistingco contained
syn keyword docbkKeyword prompt property pubdate publisher contained
syn keyword docbkKeyword publishername qandadiv qandaentry qandaset contained
syn keyword docbkKeyword question quote refclass refdescriptor contained
syn keyword docbkKeyword refentry refentrytitle reference refmeta contained
syn keyword docbkKeyword refmiscinfo refname refnamediv refpurpose contained
syn keyword docbkKeyword refsect1 refsect2 refsect3 refsection contained
syn keyword docbkKeyword refsynopsisdiv releaseinfo remark replaceable contained
syn keyword docbkKeyword returnvalue revdescription revhistory contained
syn keyword docbkKeyword revision revnumber revremark rhs row sbr contained
syn keyword docbkKeyword screen screenco screenshot secondary contained
syn keyword docbkKeyword secondaryie sect1 sect2 sect3 sect4 sect5 contained
syn keyword docbkKeyword section see seealso seealsoie seeie seg contained
syn keyword docbkKeyword seglistitem segmentedlist segtitle contained
syn keyword docbkKeyword seriesvolnums set setindex shortaffil contained
syn keyword docbkKeyword shortcut sidebar simpara simplelist contained
syn keyword docbkKeyword simplemsgentry simplesect spanspec state step contained
syn keyword docbkKeyword stepalternatives street subject subjectset contained
syn keyword docbkKeyword subjectterm subscript substeps subtitle contained
syn keyword docbkKeyword superscript surname symbol synopfragment contained
syn keyword docbkKeyword synopfragmentref synopsis systemitem table contained
syn keyword docbkKeyword tag task taskprerequisites taskrelated contained
syn keyword docbkKeyword tasksummary tbody td term termdef tertiary contained
syn keyword docbkKeyword tertiaryie textdata textobject tfoot tgroup contained
syn keyword docbkKeyword th thead tip title titleabbrev toc tocdiv contained
syn keyword docbkKeyword tocentry token tr trademark type uri contained
syn keyword docbkKeyword userinput varargs variablelist varlistentry contained
syn keyword docbkKeyword varname videodata videoobject void volumenum contained
syn keyword docbkKeyword warning wordasword xref year contained

" The following elements were valid in DocBook 4.5 and are kept for backwards compatibility:
syn keyword docbkKeyword ackno action appendixinfo articleinfo contained
syn keyword docbkKeyword authorblurb beginpage bibliographyinfo contained
syn keyword docbkKeyword blockinfo bookinfo chapterinfo collabname contained
syn keyword docbkKeyword corpauthor corpcredit corpname glossaryinfo contained
syn keyword docbkKeyword graphic graphicco highlights indexinfo contained
syn keyword docbkKeyword inlinegraphic interface invpartnumber isbn contained
syn keyword docbkKeyword issn lot lotentry medialabel mediaobjectco contained
syn keyword docbkKeyword modespec objectinfo partinfo prefaceinfo contained
syn keyword docbkKeyword pubsnumber refentryinfo referenceinfo contained
syn keyword docbkKeyword refsect1info refsect2info refsect3info contained
syn keyword docbkKeyword refsectioninfo refsynopsisdivinfo screeninfo contained
syn keyword docbkKeyword sect1info sect2info sect3info sect4info contained
syn keyword docbkKeyword sect5info sectioninfo setindexinfo setinfo contained
syn keyword docbkKeyword sidebarinfo structfield structname tocback contained
syn keyword docbkKeyword tocchap tocfront toclevel1 toclevel2 contained
syn keyword docbkKeyword toclevel3 toclevel4 toclevel5 tocpart ulink contained

" The following elements were already renamed or removed in DocBook 4.5, but are kept for backwards compatibility:
syn keyword docbkKeyword artheader bookbiblio comment docinfo contained
syn keyword docbkKeyword interfacedefinition seriesinfo contained

" Add special emphasis on some regions. Thanks to Rory Hunter <roryh@dcs.ed.ac.uk> for these ideas.
syn region docbkRegion start="<emphasis>"lc=10 end="</emphasis>"me=e-11 contains=xmlRegion,xmlEntity,sgmlRegion,sgmlEntity,@Spell keepend
syn region docbkTitle  start="<title>"lc=7     end="</title>"me=e-8	contains=xmlRegion,xmlEntity,sgmlRegion,sgmlEntity,@Spell keepend
syn region docbkRemark start="<remark>"lc=8    end="</remark>"me=e-9	contains=xmlRegion,xmlEntity,sgmlRegion,sgmlEntity,@Spell keepend
syn region docbkRemark start="<comment>"lc=9  end="</comment>"me=e-10	contains=xmlRegion,xmlEntity,sgmlRegion,sgmlEntity,@Spell keepend
syn region docbkCite   start="<citation>"lc=10 end="</citation>"me=e-11 contains=xmlRegion,xmlEntity,sgmlRegion,sgmlEntity,@Spell keepend

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_docbk_syn_inits")
  if version < 508
    let did_docbk_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
    hi DocbkBold term=bold cterm=bold gui=bold
  else
    command -nargs=+ HiLink hi def link <args>
    hi def DocbkBold term=bold cterm=bold gui=bold
  endif

  HiLink docbkKeyword	Statement
  HiLink docbkRegion	DocbkBold
  HiLink docbkTitle	Title
  HiLink docbkRemark	Comment
  HiLink docbkCite	Constant

  delcommand HiLink
endif

let b:current_syntax = "docbk"

" vim: ts=8
