BASEDIR=$(dirname $0)
VIM_PLUGIN_PATH=~/.vim/plugin
HOME_PATH=~

echo "Create ${VIM_PLUGIN_PATH} links..."
cd ${VIM_PLUGIN_PATH}
ln -fs ${BASEDIR}/wipeout.vim
# ln -fs ${BASEDIR}/grep-operator.vim
echo "Dne!"

echo "Create home config links..."
cd ${HOME_PATH}
ln -fs ${BASEDIR}/_bash_aliases .bash_aliases
ln -fs ${BASEDIR}/_gitconfig .gitconfig
ln -fs ${BASEDIR}/_gitignore_global .gitignore_global
ln -fs ${BASEDIR}/_vimrc .vimrc
echo "Done!"


