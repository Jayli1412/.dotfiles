# Initialize nix
curl -L https://nixos.org/nix/install | sh

# source nix
. /home/hyeondobin/.nix-profile/etc/profile.d/nix.sh

# Install plugins
nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.antibody \
	nixpkgs.git \
	nixpkgs.neovim \
	nixpkgs.tmux \
	nixpkgs.stow \
	nixpkgs.yarn \
	nixpkgs.fzf \
	nixpkgs.ripgrep \
	nixpkgs.bat \
	nixpkgs.direnv

# stow pkgs
stow zsh
stow git
stow nvim

# Add zsh to valid shells 
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER

# bundle zsh plugins 
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
