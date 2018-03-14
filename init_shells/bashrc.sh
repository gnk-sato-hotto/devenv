cat << EOS >> /home/ec2-user/.bashrc

alias rm="rm -i"
alias ls="ls -G"
alias ll="ls -l"
alias fs="find ./ -type f | xargs grep "
alias vi="vim"

EOS

source /home/ec2-user/.bashrc
chown ec2-user:ec2-user /home/ec2-user/.bashrc
