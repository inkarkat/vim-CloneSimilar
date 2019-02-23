" cloneSimilar.vim: Create a duplicate clone of the current buffer with a similar name.
"
" DEPENDENCIES:
"   - clone.vim plugin
"   - EditSimilar/CommandBuilder.vim autoload script
"
" Copyright: (C) 2011-2018 Ingo Karkat
"   The VIM LICENSE applies to this script; see ':help copyright'.
"
" Maintainer:	Ingo Karkat <ingo@karkat.de>
"
" REVISION	DATE		REMARKS
"   1.01.006	17-Oct-2018	ENH: Support partial cloning of :[range].
"                               :CloneAs already does, we just need to inform
"                               EditSimilar that the command supports it.
"   1.01.005	19-Nov-2017	ENH: :CloneAs now supports [!].
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

call EditSimilar#CommandBuilder#SimilarFileOperations('Clone',  '<line1>,<line2>CloneAs<bang>',  1, 1, {'omitOperationsWorkingOnlyOnExistingFiles': 1, 'completeAnyRoot': 1, 'isSupportRange': 1})
call EditSimilar#CommandBuilder#SimilarFileOperations('SClone', '<line1>,<line2>SCloneAs<bang>', 1, 1, {'omitOperationsWorkingOnlyOnExistingFiles': 1, 'completeAnyRoot': 1, 'isSupportRange': 1})

" vim: set ts=8 sts=4 sw=4 noexpandtab ff=unix fdm=syntax :
