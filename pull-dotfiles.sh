# pull dotfiles from github directory to local machine.
# use after cloning from github

originalpath=$(pwd)
cd ~/dotfiles

echo -e "\nDiff of bash_profile:"
diff ~/dotfiles/.bash_profile ~/.bash_profile

echo -e "\nDiff of bashrc:"
diff ~/dotfiles/.bashrc ~/.bashrc

echo -e "\nDiff of vimrc:"
diff ~/dotfiles/.vimrc ~/.vimrc

echo -e "\nDiff of slate:"
diff ~/dotfiles/.slate ~/.slate

echo -e "\nDiff of startup.py:"
diff ~/dotfiles/startup.py ~/.ipython/profile_default/startup/startup.py

echo -e "\nDiff of .vim:"
diff ~/dotfiles/.vim ~/.vim

echo -e "\nThe above changes will be made. Okay? (Press any key to continue, or Ctrl+C to cancel.)"
read -n 1

cp ~/dotfiles/.bash_profile ~/.bash_profile
cp ~/dotfiles/.bashrc ~/.bashrc
cp ~/dotfiles/.vimrc ~/.vimrc
cp ~/dotfiles/.slate ~/.slate
cp ~/dotfiles/startup.py ~/.ipython/profile_default/startup/startup.py

rm -rf ~/.vim
cp -r ~/dotfiles/.vim ~/.vim

cd $originalpath
