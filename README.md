# BashScriptingDemo
A practical demo to Linux command-line, Bash scripting, and Shell programming

## About this Repository
This is the code repository for my own work through of the  Mastering Linux Shell Scripting - Second Edition, published by [Packt](https://www.packtpub.com/?utm_source=github). \
It contains the project files from the book from start to finish as well as some additional scripts.

## Configure bash text editor

### vim `$HOME/.vimrc`
`set showmode` \
Ensures we see when we are in insert mode \
`set nohlsearch`\
Does not highlight the words that we have searched for \
`set autoindent` \
We indent our code often; this allows us to return to the last indent level rather than the start of a new line on each line break \
`set tabstop=4` \
Sets a tab to be four spaces \
`set expandtab` \
Converts tab into spaces, which is useful when the file moves to other systems \
`syntax on` \
**Note:** This does not use the `set` command and is used to turn on syntax highlighting

### nano `$HOME/.nanorc`
`set autoindent` \
`set tabsize 4` \
`include /usr/share/nano/sh.nanorc`
