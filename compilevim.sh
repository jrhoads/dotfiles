mkdir -p $HOME/Installs/
cd $HOME/Installs
git clone https://github.com/vim/vim.git
cd vim

./configure --disable-perlinterp --enable-pythoninterp --enable-python3interp --enable-multibyte --disable-gui --prefix=$HOME/.local/vim --with-features=huge --with-tlib=ncurses --without-x
make && make install
cd $HOME/.local/bin
ln -s ../vim/bin/vim
