# you may put following in ~/.bashrc
# if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
# fi

# git alias
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'

alias rs='rails server'
alias rc='rails console'
alias rs2='rails server --port=3002'
alias rgm='rails generate migration'

alias wg="bundle show"
alias rdm="rake db:migrate  RAILS_ENV=development"
alias rds="rake db:setup  RAILS_ENV=development"
alias bi="bundle install"

alias apush="git commit -a  &&  git push"

# git checkout branch
function git-cb {
    # replace space to -
    echo "${1// /-}" | xargs -L1 git checkout -b
}

function vga1400 {
    xrandr --newmode "1440x900"  106.50  1440 1528 1672 1904  900 903 909 934 -hsync +vsync
    xrandr --addmode VGA1 1440x900
    xrandr --output VGA1 --mode 1440x900
}

function vga1920 {
    xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
    xrandr --addmode VGA1 1920x1080_60.00
    xrandr --output VGA1 --mode 1920x1080_60.00
}



