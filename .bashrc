function delete_dead_branches(){
git fetch -p
for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do
if [ ! -z $branch ];then
git branch -D "$branch"
fi
done
git pull
}

alias reset_branch_to_origin='git reset --hard origin/$(git rev-parse --abbrev-ref @)'
