if [ -a docs ]
    then
    git add docs 
    git commit --amend -C HEAD --no-verify
fi
