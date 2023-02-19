#
# modifyCurDirOnly.sh
#

# backup bashrc
if ! [ -f ~/.bashrc.org ]; then
    cp ~/.bashrc ~/.bashrc.org
fi

# modify bashrc
# \w	現在の作業ディレクトリを、ユーザーのホームディレクトリからの絶対パスで表示する
# \W	現在の作業ディレクトリを表示する
# if [ "$color_prompt" = yes ]; then
#     PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@:\[\033[01;34m\]\W\[\033[00m\]\$ '
# else
#     PS1='${debian_chroot:+($debian_chroot)}\u@:\w\$ '
# fi
sed -i -e 's/^PS1=.*/PS1="\u@\h:\w\\$ "/' ~/.bashrc



# reload bashrc
exec bash
