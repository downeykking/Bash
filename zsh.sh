cat zsh.txt > ~/.zshrc
mkdir -p $HOME/download/zsh
cd ~/download/zsh
git clone https://gitclone.com/github.com/zsh-users/zsh-autosuggestions.git
git clone https://gitclone.com/github.com/wting/autojump.git
cd autojump
./install.py
source ~/.zhsrc

