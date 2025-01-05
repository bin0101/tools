
# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gau='git add -u'
alias gb='git branch'
alias gbd='git branch -D'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias go='git checkout'
alias gob='git checkout -b'
alias gom='git checkout master'
alias gd='git difftool'
alias gda='git diff HEAD'
alias gi='git init'
alias gl='git log'
alias glg='git log --graph --oneline --decorate'
alias gld='git log --pretty=format:"%h %ad %s" --date=short'
alias gm='git merge --no-ff'
alias gp='git pull'
alias gs='git status'
alias gss='git status -s'

alias grs='git restore --staged'

alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gstd='git stash drop'

alias gr='git rebase'
alias gri='git rebase -i'
alias gf='git fetch origin'
alias gfu='git fetch upstream'
alias grhh='git reset HEAD --hard'
alias gcl='git clean -fdx'

# git merge-base --is-ancestor <maybe-ancestor-commit> <descendant-commit>
# exit with status 0 if true, or with status 1 if not

alias gia='git merge-base --is-ancestor'
alias echov='echo $?'

alias gmu='git submodule update --init --recursive'
alias ggaunt='git push gauntlet HEAD:master'
alias gpo='git push origin'
alias gpk='git cherry-pick'
alias gum='git checkout -b um upstream/master'


# alias gst='git stash'
# alias gstl='git stash list'
# alias gstp='git stash pop'
# alias gstd='git stash drop'
# alias gk='gitk --all&'
# alias gx='gitx --all'




# ----------------------
# Git Functions
# ----------------------
# Git log find by commit message
function glf() { git log --all --grep="$1"; }


# ----------------------
# Git auto completion
# ----------------------
# source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi