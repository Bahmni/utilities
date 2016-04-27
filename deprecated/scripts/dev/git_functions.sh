function check_if_changes_pending() {
    cd $1
     if [ -n "$(git status --porcelain)" ]; then
       echo "Uncommited changes in "$1
       git status
       return 0
     fi
     if [ -n "$(git status | grep 'ahead of')" ]; then
       echo "Unpushed changes in "$1
       git status
       return 0
     fi

     return 1
}

function git_pull_rebase() {
  echo "git pull --rebase"  
  cd $1
  git pull --rebase
}

