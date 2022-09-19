#!/bin/bash

# brew list | gum choose --no-limit | xargs brew uninstall

declare -a INSTALL_CMDS=( "brew install fd" "brew install procs" "brew install bat" "brew install exa" "brew install fd" "brew install sd" "brew install dust" "brew install starship" "brew install ripgrep" "brew install tokei" "brew install hyperfine" "brew install bottom" "brew install navi" "brew install nushell" "brew install delta" "brew install zoxide" "brew install grex" "brew install bandwhich")
# CMDS_LEN=${#INSTALL_CMDS[@]}
# echo "Install commands: $INSTALL_CMDS"
# echo "Length: $CMDS_LEN"
SELECTED_CMDS=$(gum choose --no-limit "${INSTALL_CMDS[@]}")
SELECTED_LEN=${#SELECTED_CMDS[@]}

for ((i=0; i<SELECTED_LEN; i++));
do
  # printf "Index: %d Val: %s\n" $i "${SELECTED_CMDS[$i]}"
  # NAME=echo "${SELECTED_CMDS[$i]} | awk '{print NF}'"
  NAME=${SELECTED_CMDS[$i]} | awk '{print $NF}'
  echo $NAME
  echo "Running `${SELECTED_CMDS[$i]}`"
  ${SELECTED_CMDS[$i]}
done

