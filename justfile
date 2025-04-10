default:
  just --list


install-ripgrep:
  curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.0/ripgrep_14.1.0-1_amd64.deb
  mkdir -p ${HOME}/Downloads
  mv ripgrep_14.1.0-1_amd64.deb ${HOME}/Downloads
  sudo dpkg -i ${HOME}/Downloads/ripgrep_14.1.0-1_amd64.deb

install-neovim:
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
  mkdir -p ${HOME}/Downloads
  mv nvim-linux-x86_64.tar.gz ${HOME}/Downloads
  sudo rm -rf /opt/nvim
  sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

setup-path:
  echo 'export PATH=$PATH:/opt/nvim/bin' >> ~/.bashrc
  source ~/.bashrc

