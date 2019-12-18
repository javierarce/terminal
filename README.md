# terminal

My terminal commands and aliases.

## How to install

1. Add this on top of `.zshrc`:

```
SNIPPETS_DIR=~/.zsh/.snippets

if [ -f $SNIPPETS_DIR ]; then
  source $SNIPPETS_DIR
else
  echo "$SNIPPETS_DIR not found."
fi
```

2. Clone the project:

```
git clone git@github.com:javierarce/terminal.git ~/.zsh
```

3. Reload `zsh`:

```
source ~/.zshrc
```

## Available commands

* `tpl` - generates a new project using an existing template (vue or node) from my GitHub account.
* `extract` - extract archives from any compressed file.
* `width` - get image width
* `height` - get image height
* `name` - generates a random adjective-noun pair (used in the `tpl` command).
