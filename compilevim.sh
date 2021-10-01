mkdir -p $HOME/Installs/
cd $HOME/Installs
if [ -d vim ]; then
	rm -rf vim
fi
git clone --depth 1 https://github.com/vim/vim.git
cd vim
./configure --disable-perlinterp \
	--enable-pythoninterp \
	--with-python-config-dir=$HOME/miniconda3/envs/py27/lib/python2.7/config \
	--enable-python3interp \
	--with-python3-config-dir=$HOME/miniconda3/envs/py36/lib/python3.6/config-3.6m-x86_64-linux-gnu \
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
