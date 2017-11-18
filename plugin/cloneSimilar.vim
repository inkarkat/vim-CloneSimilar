" cloneSimilar.vim: Create a duplicate clone of the current buffer with a similar name.
"
" DEPENDENCIES:
"   - clone.vim plugin
"   - EditSimilar/CommandBuilder.vim autoload script
"
" Copyright: (C) 2011-2014 Ingo Karkat
"   The VIM LICENSE applies to this script; see ':help copyright'.
"
" Maintainer:	Ingo Karkat <ingo@karkat.de>
"
" REVISION	DATE		REMARKS
"   1.00.004	26-Jul-2012	Adapt to changed EditSimilar interface.
"				Now completing any file extensions.
"	003	09-Jun-2012	Add additional argument
"				a:omitOperationsWorkingOnlyOnExistingFiles.
"	002	17-Nov-2011	Rename :SplitAs to :SCloneAs.
"	001	08-Nov-2011	file creation

" Avoid installing twice or when in unsupported Vim version.
if exists('g:loaded_cloneSimilar') || (v:version < 700)
    finish
endif
let g:loaded_cloneSimilar = 1

call EditSimilar#CommandBuilder#SimilarFileOperations('Clone',  'CloneAs',  0, 1, {'omitOperationsWorkingOnlyOnExistingFiles': 1, 'completeAnyRoot': 1})
call EditSimilar#CommandBuilder#SimilarFileOperations('SClone', 'SCloneAs', 0, 1, {'omitOperationsWorkingOnlyOnExistingFiles': 1, 'completeAnyRoot': 1})

" vim: set ts=8 sts=4 sw=4 noexpandtab ff=unix fdm=syntax :
