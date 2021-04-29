Gropen.vim
=============

A Vim plugin for quickly opening local files and directories on remote git
repositories.

This plugin was thouhgt out to make it a breeze to share code
from a codebase with your coworkers.

Usage
-----

1) Open current file on your remote repository:

```vim
<leader>g
```

or

```vim
:GropenFile()
```

2) Open current line on your remote repository:

```vim
<leader>gl
```

or

```vim
:GropenCurrentLine()
```

3) Open a line range on your remote repository:

Enter Vim's visual more, choose the portion of code you'd like
to open on your remote repo, then:

```vim
<leader>gr
```

or

```vim
:GropenLineRange()
```

Installation
------------

You have to first install [gropen](https://github.com/tiagopog/gropen):

```shell
$ pip install gropen
```

Then you can use any package manager for Vim of your choice and add Gropen.vim to your `.vimrc`:


### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'tiagopog/gropen.vim'
```

Then run `:PlugInstall`.

### [Vundle](https://github.com/VundleVim/Vundle.vim)

```vim
Plugin 'tiagopog/gropen.vim'
```

Then run `:PluginInstall`.

License
-------

This package is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
