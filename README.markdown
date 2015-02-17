# buf2tabdiff.vim

Function and some shell scripts for getting Vim to work as a Subversion
diff tool for looking a the current changes within your working copy.

## Installation

I use [pathogen.vim](https://github.com/tpope/vim-pathogen)
to install Vim plugins.
If you do too, then you can use the following to install this plugin:

```
cd ~/.vim/bundle
git clone https://github.com/jpitblado/vim-buf2tabdiff.git
```

Then just add ~/.vim.bundle/vim-buf2tabdiff/bin to your favorite shell's
path.  The shell scripts are

	svngvim	-- use gVim
	svnvim	-- use Vim

## License

Copyright (c) Jeff Pitblado

Distributed under the same terms as Vim itself.  See `:help license`.

