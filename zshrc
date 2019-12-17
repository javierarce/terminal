function name () {
  nouns=(`cat ~/nouns.txt |tr '\n' ' '`)
  adjectives=(`cat ~/adjectives.txt |tr '\n' ' '`)

  n=$((1 + $RANDOM % ${#nouns[@]}))
  a=$((1 + $RANDOM % ${#adjectives[@]}))

  echo ${adjectives[$a]}-${nouns[$n]}
}

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
