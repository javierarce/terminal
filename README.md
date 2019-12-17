# terminal

My terminal commands and aliases.

## How to install

1. Add this on top of `.zshrc`:

```
if [ -f ~/.zsh/.snippets ]; then
  source ~/.zsh/.snippets
else
  echo "404: ~/.zsh/.snippets not found."
fi
```

2. Clone the project:

```
git clone git@github.com:javierarce/terminal.git ~/.zsh
```

## Available commands

* `tpl` - generates a new project using an existing template (vue or node) from my github account
* `extract` - extract archives from any compressed file
