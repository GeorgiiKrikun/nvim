default:
  just --list


install-ripgrep:
  curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.0/ripgrep_14.1.0-1_amd64.deb
  mv ripgrep_14.1.0-1_amd64.deb ${HOME}/Downloads
  sudo dpkg -i ${HOME}/Downloads/ripgrep_14.1.0-1_amd64.deb
