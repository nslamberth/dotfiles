# push current dotfiles to github.
# accepts commit message as string (or any given list of arguments joined together)

originalpath=$(pwd)
cd ~/dotfiles

echo -e "\nDiff of bash_profile:"
diff ~/.bash_profile ~/dotfiles/.bash_profile

echo -e "\nDiff of bashrc:"
diff ~/.bashrc ~/dotfiles/.bashrc

echo -e "\nDiff of vimrc:"
diff ~/.vimrc ~/dotfiles/.vimrc

echo -e "\nDiff of slate:"
diff ~/.slate ~/dotfiles/.slate

echo -e "\nDiff of startup.py:"
diff ~/.ipython/profile_default/startup/startup.py ~/dotfiles/startup.py

echo -e "\nThe above changes will be made. Okay? (Press any key to continue, or Ctrl+C to cancel.)"
read -n 1

cp ~/.bash_profile ~/dotfiles/.bash_profile
cp ~/.bashrc ~/dotfiles/.bashrc
cp ~/.vimrc ~/dotfiles/.vimrc
cp ~/.slate ~/dotfiles/.slate
cp ~/.ipython/profile_default/startup/startup.py ~/dotfiles/startup.py

rm -rf ~/dotfiles/.vim
cp -r ~/.vim ~/dotfiles

cd $originalpath
