mkdir -p $HOME/Installs/
cd $HOME/Installs
if [ -d vim ]; then
	rm -rf vim
fi
git clone --depth 1 https://github.com/vim/vim.git
cd vim
./configure --disable-perlinterp \
	--enable-pythoninterp \
	--enable-python3interp \
	--enable-multibyte \
	--disable-gui \
	--prefix=$HOME/.local/vim \
	--with-features=huge \
	--with-tlib=ncurses \
	--enable-cscope \
	--without-x
make && make install
cd $HOME/.local/bin
ln -s ../vim/bin/vim
