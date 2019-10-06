#!/bin/sh
set -e

cd {{ansible_env.HOME }}/.vim_runtime

echo 'set runtimepath+={{ansible_env.HOME }}/.vim_runtime

source {{ansible_env.HOME }}/.vim_runtime/vimrcs/basic.vim
source {{ansible_env.HOME }}/.vim_runtime/vimrcs/filetypes.vim
source {{ansible_env.HOME }}/.vim_runtime/vimrcs/plugins_config.vim
source {{ansible_env.HOME }}/.vim_runtime/vimrcs/extended.vim

try
source {{ansible_env.HOME }}/.vim_runtime/my_configs.vim
catch
endtry' > {{ansible_env.HOME }}/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
