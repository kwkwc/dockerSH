#!/bin/bash

# Program:
#      Completion commands
# Version:
#      1.0.0
# History:
#      Created on 2021/01/09
#      Last modified on 2021/01/09
# Author:
#      kwkw

_dockerSH_completions()
{
    case $COMP_CWORD in  
      0 ) 
          :
          ;;  
      1 )
          COMPREPLY=($(compgen -W "up reup ps psall start startall stop stopall restart restartall logs rm rmall down downall images rmi rmiall help" "${COMP_WORDS[1]}"))
          ;;  
      2 )
          if [[ "up reup start stop restart logs rm down" =~ ${COMP_WORDS[1]} ]]
          then
              COMPREPLY=($(compgen -W "$(ls $PWD/services)" "${COMP_WORDS[2]}"))
          fi
          ;;
    esac
}

complete -F _dockerSH_completions dockerSH
