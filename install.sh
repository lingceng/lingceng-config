BASEDIR=$(pwd)/$line


echo "Create home directory config links..."
cd ~
ln -fs ${BASEDIR}/_bash_aliases .bash_aliases
ln -fs ${BASEDIR}/_gitconfig .gitconfig
ln -fs ${BASEDIR}/_gitignore_global .gitignore_global
ln -fs ${BASEDIR}/_vimrc .vimrc
ln -fs ${BASEDIR}/_ackrc .ackrc
ln -fs ${BASEDIR}/_tmux.conf .tmux.conf
ln -fs ${BASEDIR}/_inputrc .inputrc
echo "Done!"


