#i/bin/bash

#COLORS
RED='/033[0;31,'

update(){
gnome-terminal --command="bash -c 'cd Desktop/autohack; ./autohack;$SHELL'"
}
sleep 1
update
exit
