BASEDIR=$(pwd)/$line

echo "Create vim plugin links..."
mkdir -p ~/.vim/plugin
cd ~/.vim/plugin
ln -fs ${BASEDIR}/wipeout.vim
echo "Done!"

echo "Create home directory config links..."
cd ~
ln -fs ${BASEDIR}/_bash_aliases .bash_aliases
ln -fs ${BASEDIR}/_gitconfig .gitconfig
ln -fs ${BASEDIR}/_gitignore_global .gitignore_global
ln -fs ${BASEDIR}/_vimrc .vimrc
ln -fs ${BASEDIR}/_ackrc .ackrc
ln -fs ${BASEDIR}/_tmux.conf .tmux.conf
echo "Done!"


