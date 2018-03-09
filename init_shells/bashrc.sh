cat << EOS >> /home/ec2-user/.bashrc

alias rm="rm -i"
alias ls="ls -G"
alias ll="ls -l"
alias fs="find ./ -type f | xargs grep "
alias vi="vim"

# コマンド訂正
setopt correct

# 補完候補を詰めて表示する
setopt list_packed 

# 補完候補表示時などにピッピとビープ音をならないように設定
setopt nolistbeep

EOS

source /home/ec2-user/.bashrc
chown ec2-user:ec2-user /home/ec2-user/.bashrc
