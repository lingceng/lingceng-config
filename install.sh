BASEDIR=$(pwd)/$line

echo "Create ${VIM_PLUGIN_PATH} links..."
cd ~/.vim/plugin
ln -fs ${BASEDIR}/wipeout.vim
# ln -fs ${BASEDIR}/grep-operator.vim
echo "Done!"

echo "Create home config links..."
cd ~
ln -fs ${BASEDIR}/_bash_aliases .bash_aliases
ln -fs ${BASEDIR}/_gitconfig .gitconfig
ln -fs ${BASEDIR}/_gitignore_global .gitignore_global
ln -fs ${BASEDIR}/_vimrc .vimrc
echo "Done!"


