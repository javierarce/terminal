# Generates a random name: adjective-noun
function name () {
  nouns=(`cat ~/nouns.txt |tr '\n' ' '`)
  adjectives=(`cat ~/adjectives.txt |tr '\n' ' '`)

  n=$((1 + $RANDOM % ${#nouns[@]}))
  a=$((1 + $RANDOM % ${#adjectives[@]}))

  echo ${adjectives[$a]}-${nouns[$n]}
}

# Generate a new project using an existing template
function tpl () {
  templateName=${1:-node}

  if [ "$templateName" = 'node' ] || [ "$templateName" = 'vue' ]; then
    dir=${2:-$(name)}
    username=javierarce

    echo "Generating \033[1;31m$templateName\033[m project \033[1;32m$dir\033[m"  

    git clone git@github.com:$username/$templateName-template.git $dir
    cd $dir
  else
    echo "Template \033[1;31m$1\033[m doesn't exist"
  fi
}

# Extract archives - use: extract <file>
# Credits to http://dotfiles.org/~pseup/.bashrc
function extract() {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz) tar xzf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) rar x $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xf $1 ;;
      *.tbz2) tar xjf $1 ;;
      *.tgz) tar xzf $1 ;;
      *.zip) unzip $1 ;;
      *.Z) uncompress $1 ;;
      *.7z) 7z x $1 ;;
      *) echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Git alias
alias clone='git clone'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit -a'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log --graph --abbrev-commit --date=relative'
alias gp='git push origin HEAD'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gs='git status -sb'
alias gss='git status'
alias master="git checkout master"
alias merge="git merge"
alias pages="git checkout gh-pages"
alias pull='git pull'
alias push='git push'

alias kat='pygmentize -O style=monokai -f console256 -g'
alias o="open ."
alias reload="source ~/.zshrc" 

