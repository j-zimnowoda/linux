# PROMPT IN FORMAT: [username:cwd (git-branch)] $
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="[\u:\W\[\033[90m\]\$(parse_git_branch)\[\033[00m\]]$ "

# ALIAS Kubernetes
alias kkgp="kubectl get pods"
alias kkgd="kubectl get deployments"
alias kkge="kubectl get endpoints"
alias kkgs="kubectl get services"
alias kkgn="kubectl get nodes"
alias kkl="kubectl logs"
