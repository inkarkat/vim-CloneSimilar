CLONE SIMILAR
===============================================================================
_by Ingo Karkat_

DESCRIPTION
------------------------------------------------------------------------------

This plugin combines the buffer cloning functionality of clone.vim
([vimscript #4896](http://www.vim.org/scripts/script.php?script_id=4896)) with the selection of similar files provided by
EditSimilar.vim ([vimscript #2544](http://www.vim.org/scripts/script.php?script_id=2544)) to provide :CloneSubstitute,
:ClonePlus etc. command variants of the original :CloneAs command.

USAGE
------------------------------------------------------------------------------

    :[range]ClonePlus[!],  :CloneMinus[!],  :CloneSubstitute[!],  :CloneRoot[!]
    :[range]SClonePlus[!], :SCloneMinus,[!] :SCloneSubstitute[!], :SCloneRoot[!]
                            Duplicate and edit the current buffer to a file with a
                            similar name, using the substitutions and iterations
                            provided by the EditSimilar.vim plugin.
                            Writes over existing buffer with [!].

INSTALLATION
------------------------------------------------------------------------------

The code is hosted in a Git repo at
    https://github.com/inkarkat/vim-cloneSimilar
You can use your favorite plugin manager, or "git clone" into a directory used
for Vim packages. Releases are on the "stable" branch, the latest unstable
development snapshot on "master".

This script is also packaged as a vimball. If you have the "gunzip"
decompressor in your PATH, simply edit the \*.vmb.gz package in Vim; otherwise,
decompress the archive first, e.g. using WinZip. Inside Vim, install by
sourcing the vimball or via the :UseVimball command.

    vim cloneSimilar*.vmb.gz
    :so %

To uninstall, use the :RmVimball command.

### DEPENDENCIES

- Requires Vim 7.0 or higher.
- Requires the clone.vim plugin ([vimscript #4896](http://www.vim.org/scripts/script.php?script_id=4896)), version 1.00 or
  higher.
- Requires the EditSimilar.vim plugin ([vimscript #2544](http://www.vim.org/scripts/script.php?script_id=2544)), version 2.40 or
  higher.

CONTRIBUTING
------------------------------------------------------------------------------

Report any bugs, send patches, or suggest features via the issue tracker at
https://github.com/inkarkat/vim-cloneSimilar/issues or email (address below).

HISTORY
------------------------------------------------------------------------------

##### 1.01    RELEASEME
- ENH: :CloneAs (version 1.10 or later) now supports [!].
- ENH: Support partial cloning of :[range].

##### 1.00    18-Mar-2014
- First published version.

##### 0.01    08-Nov-2011
- Started development.

------------------------------------------------------------------------------
Copyright: (C) 2011-2022 Ingo Karkat -
The [VIM LICENSE](http://vimdoc.sourceforge.net/htmldoc/uganda.html#license) applies to this plugin.

Maintainer:     Ingo Karkat &lt;ingo@karkat.de&gt;
