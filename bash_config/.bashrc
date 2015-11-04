
#adjust PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/libexec:$PATH

#User-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

FILES_TO_SOURCE=( ~/.goto-config.sh ~/.git-config.sh )
for file in ${FILES_TO_SOURCE[@]}; do
  if [ -a $file ]; then
    source $file
  fi
done
