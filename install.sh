BASEDIR=$(pwd)/$line

echo "Create vim plugin links..."
cd ~/.vim/plugin
ln -fs ${BASEDIR}/wipeout.vim
# ln -fs ${BASEDIR}/grep-operator.vim
echo "Done!"

echo "Create home directory config links..."
cd ~
ln -fs ${BASEDIR}/_bash_aliases .bash_aliases
ln -fs ${BASEDIR}/_gitconfig .gitconfig
ln -fs ${BASEDIR}/_gitignore_global .gitignore_global
ln -fs ${BASEDIR}/_vimrc .vimrc
ln -fs ${BASEDIR}/_ackrc .ackrc
echo "Done!"


