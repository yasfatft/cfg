# The Way Geeks Configure It
## Vim
I mostly use Vim while coding Python3, so here it is a Py3 specialized Vim configuration.

### How to setup
1. After cloning the repo, copy the '.vimrc' file to your home directory:
```
cp /path/to/the/repository/.vimrc ~/.vimrc
```
2. Install [Vim-plug](https://github.com/junegunn/vim-plug).
3. execute ```:PlugInstall``` in vim environment (Just open a file with vim like ```vim file.txt```).
4. Install [Vundle](https://github.com/VundleVim/Vundle.vim).
5. execute ```:PluginInstall``` in vim environment.
6. enjoy!

## Tmux 
Support easy moving between different panes with hotkeys [Alt+b] -> [k|j|l|h] (Vim-style) for varient oriententions.

### How to setup
1. Install [Tmux](https://github.com/tmux/tmux).
2. After Installing Tmux & cloning the repo, copy the '.tmux.conf' file to your home directory:
```
cp /path/to/the/repository/.tmux.conf ~/.tmux.conf
```
3. Ta-Da!

## Oh My Zsh
While working with the shell, I usually do git, docker, and edit-related commands, So here it's my what do the work for me, just an awesome configuration!

### How to setup
1. Install [Zsh (Z shell)](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH).
2. Install [Oh My Zsh](https://ohmyz.sh).
3. Here there are some plugin & packages which I had installed too (you can either install them or remove corressponding config lines from Oh My Zsh config file): 
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- command-not-found apt package (```apt install command-not-found```) 
- [virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/en/latest)
4. After cloning the repo, copy the '.zshrc' file to your home directory:
```
cp /path/to/the/repository/.zshrc ~/.zshrc
```
4. There you go!
