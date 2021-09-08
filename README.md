Gropen.vim
=============

A Vim plugin for quickly opening local files and directories in remote git repositories.

This plugin was thought out to make it a breeze to share git-versioned code with your coworkers.

![Overview](./overview.gif)

## Features

| Feature                          | Keybindings                 | Command               |
| -------------------------------- |:---------------------------:| :--------------------:|
| Open current file in remote repo | <leader>g                   | :GropenFile()         |
| Open current line in remote repo | <leader>gl                  | :GropenCurrentLine()  |
| Open line range in remote repo   | visual mode + <leader>gr    | :GropenLineRange()    |

Installation
------------

### Requirements

Make sure you have intalled on your system:

1. Python >= 3.6
2. Git
3. [gropen](https://github.com/tiagopog/gropen) (`pip install gropen`)

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
