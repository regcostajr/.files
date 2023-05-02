# .files

## nvim

### requirements:
 - nodejs
 - npm
 - nvim 0.9.0
 
```
git clone git@github.com:regcostajr/.files.git && \
cd .files && \
cp -Rf .config/nvim ~/.config/nvim && \ 
mkdir -p ~/.local/share/nvim/site/pack/packer/start && \
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim && \
nvim +PackerSync
```
