linuxbrew用户

```shell
su - linuxbrew
mkdir -p ~/.local/bin
curl -fLo ~/.local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm
chmod a+x ~/.local/bin/yadm
~/.local/bin/yadm clone https://github.com/DoomHammer/dotfiles.git
~/.local/bin/yadm restore --staged $HOME
~/.local/bin/yadm checkout -- $HOME
~/.local/bin/yadm bootstrap
rm -rf ~/.local/bin/yadm
```
