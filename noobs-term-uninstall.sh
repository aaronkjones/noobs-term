main() {

set -e

# dotfiles
dotfiles=" \
    .tmux.conf \
    .zshrc \
    .tmux \
    .zsh \
    .oh-my-zsh \
    "

# package dependencies
dependencies=" \
    git \
    curl \
    wget \
    zsh \
    tmux \
    neovim \
    "

dotfiles_dir="$HOME/.dotfiles" # dotfiles directory
nvim_config="$HOME/.config/nvim/init.vim" # neovim config location
platform="unknown" # default to unknown platform

# restore backups
restore_backups() {
    echo "Restoring old dotfiles..."
    for d in $dotfiles; do 
    cp -rf "$HOME/$d.backup" "$HOME/$d"
    done
    cp -rf "$dotfiles_dir" "$dotfiles_dir.backup"
    cp -f "$nvim_config" "$HOME/.config/nvim/init.vim.backup"
    echo "Done"
}

# remove dotfiles
remove_dotfiles() {
    echo "Removing old dotfiles..."
    for d in $dotfiles; do 
    rm -rf "${HOME:?}"/"$d"
    done
    rm -rf "$dotfiles_dir"
    rm -f "$nvim_config"
    echo "Done"
}

# find current platform and distribution
if [ "$(uname)" = 'Linux' ]; then
    platform='Linux'
    if type lsb_release >/dev/null 2>&1; then
      distro="$(lsb_release -si)"
      distro_ver="$(lsb_release -r -s)"
    elif [ -f "/etc/arch-release" ]; then
      distro='Arch'
    fi
elif [ "$(uname)" = 'Darwin' ]; then
platform='Mac'
fi
echo
# remove dotfiles
for d in $dotfiles; do
read -r "Delete $d? [Y]es [N]o [A]ll" choice
echo
case "$choice" in 
  y|Y ) rm -rf "${HOME:?}"/"$d";;
  n|N ) echo "Keeping $d";;
  a|A ) remove_dotfiles; break;;
  * ) echo "Invalid response!";;
esac
done
# restore backups
echo "Restoring backed up dotfiles"
restore_backups
echo
# remove neovim repo
if [ "$distro" = 'Ubuntu' ]; then
	if [ "$distro_ver" = "16.04" ]  || [ "$distro_ver" = "18.04" ]; then
		read -r "Remove Neovim Repository? [Y]es [N]o" choice
		echo
		case "$choice" in
		y|Y ) /usr/bin/sudo apt-add-repository --remove ppa:neovim-ppa/stable -y 1> /dev/null;;
		n|N ) echo "Keeping Neovim Repo";;
		esac
	else
		read -r "Remove Neovim Repository? [Y]es [N]o" choice
		echo
		case "$choice" in
		y|Y ) /usr/bin/sudo apt-add-repository --remove ppa:neovim-ppa/unstable -y 1> /dev/null;;
		n|N ) echo "Keeping Neovim Repo";;
		esac
	fi
fi
echo
# uninstall dependencies
# ubuntu
echo "Dependencies installed: $dependencies"
if [ "$platform" = 'Linux' ]; then
	if [ "$distro" = 'Ubuntu' ]; then
		for p in $dependencies; do
			read -r "Remove package $p? [Y]es [N]o [A]ll" choice
			echo
			case "$choice" in
			y|Y ) /usr/bin/sudo apt-get -qq remove -y "$p";;
			n|N ) echo "Keeping $p";;
			a|A ) /usr/bin/sudo apt-get -qq remove -y "$dependencies";;
			esac
		done
# arch
	elif [ "$distro" = 'Arch' ]; then
	for p in $dependencies; do
		read -r "Remove package $p? [Y]es [N]o [A]ll" choice
		echo
		case "$choice" in
		y|Y ) /usr/bin/sudo pacman -q -Rs --noconfirm "$p" 1>/dev/null;;
		n|N ) echo "Keeping $p";;
		a|A ) /usr/bin/sudo pacman -q -Rs --noconfirm "$dependencies" 1>/dev/null;;
		esac
		done
fi
# mac
elif [ $platform = 'Mac' ]; then
	for d in $dependencies; do
		read -r "Remove package $p? [Y]es [N]o [A]ll" choice
		echo
		case "$choice" in
		y|Y ) brew uninstall "$p" 1>/dev/null;;
		n|N ) echo "Keeping $p";;
		a|A ) brew uninstall "$dependencies" 1>/dev/null;;
		esac
	done
fi
echo
# oh my zsh
read -r "Unset Zsh as default shell? [Y]es [N]o" choice
echo
	case "$choice" in
	y|Y ) chsh;;
	n|N ) echo "Keeping Zsh as default shell";;
	esac
#  zsh plugins
read -r "Remove Zsh plugins? [Y]es [N]o" choice
echo
case "$choice" in
y|Y ) 
rm -rf "$HOME/.zsh/zsh-autosuggestions/";
rm -rf "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting";
rm -rf "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-history-substring-search";
rm -rf "$HOME/.oh-my-zsh/custom/plugins/zsh-completions";;
n|N ) echo "Keeping Zsh plugins";;
esac
echo
# tmux package manager
read -r "Remove Tmux package manager? [Y]es [N]o" choice
echo
case "$choice" in
y|Y ) rm -rf "$HOME/.tmux/plugins/tpm";;
n|N ) echo "Keeping Tmux package manager";;
esac
echo
# vim-plug plugin manager
read -r "Remove Vim-plug plugin manager? [Y]es [N]o" choice
echo
case "$choice" in
y|Y ) rm -f "$HOME/.local/share/nvim/site/autoload/plug.vim";;
n|N ) echo "Keeping Vim-plug plugin manager";;
esac
echo
# reload nvim plugins
echo "Reloading Neovim plugins..."
nvim +PlugInstall +qa || echo "Something went wrong reloading plugins. Check init.vim for errors and try again."
echo "Done"
echo
# remove imp theme for zsh
read -r "Remove Imp theme for Zsh? [Y]es [N]o" choice
echo
case "$choice" in
y|Y ) "$HOME/.oh-my-zsh/themes/imp.zsh-theme";;
n|N ) echo "Keeping Imp theme";;
esac
echo
echo "Uninstall complete"
}
main
