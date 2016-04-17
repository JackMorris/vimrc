Personal vim config (vimrc) with plugins managed by Vundle.

### Usage
1. Backup current vimrc: `mv ~/.vimrc ~/.vimrc.old`
2. Clone repo: `git clone https://github.com/JackMorris/vimrc.git ~/.vimrc.repo`
3. Symlink: `ln -s ~/.vimrc.repo/vimrc ~/.vimrc`
4. Install Vundle: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
5. Install Vundle plugins: run vim, run `:PluginInstall`
6. If you want correct colours, follow the instructions in the vimrc (involves setting a colourscheme and some env variables)

Done!

