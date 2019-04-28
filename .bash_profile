parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Prompt e.g.: [user:directory (git_branch)]$
export PS1="[\u:\W\[\033[90m\]\$(parse_git_branch)\[\033[00m\]]$ "
