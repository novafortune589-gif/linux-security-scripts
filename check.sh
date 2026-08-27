#!/bin/bash

read -p " Hello sir. what the file name you want me to check if exist ? " file
 while true; do
       if [[ -f "$file" && -s "$file" ]] : then
       
              echo " the file $file exist "
              echo " the systeme will shutdown in 1 minute !! "
              sleep 30
              sudo systemctl poweroff -i
              break
              
       elif [ -f "$file" ];then 
       
              echo " file exist but empty "
              echo " the systeme will shutdown in 1 minute !! "
              sleep 30
              sudo systemctl poweroff -i
              break
       else
              echo " the file is not fond on the systeme yet... "
              sleep 30
       fi 
done
