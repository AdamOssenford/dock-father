#!/bin/bash
##############################################
# THE DOCK-FATHER.... ########################
# BUILDS ANSIBLE INVENTORY VIA AUTODISCOVERY #
# YOU NEED TO INSTALL ANSIBLE NOW!       #####
# http://www.ansible.com IT'S FREE       #########
# brew add brew install http://git.io/sshpass.rb #
##################################################
# DOCK-FATHER VERSION 1.0 - ADAM OSSENFORD #######
##################################################
DO_HIT() {
#   echo "${1}" 1>&2
   exit 1
}

RUNNING_DOCKFATHER() {
cat<<"EOT"
 @@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@  ;@#@@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@@  @@@@@@@@@@@@@@  `@@#@@@@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@@+  @@@@@@@@@@@@@@   @@.  +@@@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@@'  #@@@@@@@@@@@@@@@  `      `@@@@@@@@@@@
 @@@@@@@@@@@@@@@@@@;  @@@@@@@@@@@@@@@@@+         '@@@@@@@@@@
 @@@@@@@@@@@@@@#@@:  @@@@@@@@@@@@@@@@@@@:       '@@@@@@@@@@@
 @@@@@@@@@@@@@@@@:  @@@@@@@@@@@@@@@@@@@@@    ` ' @@@@@@@@@@@
 @@@@@@@@@@@@@@@,  #@@@@@@@@@@@@@@@@@@@@@@   `'@ @@@@@@@@@@@
 @@@@@@@@@@@@@@.  @#@@@@@@@@@@@@@@@@@@@@@@@ `+@@ @@@@@@@@@@@
 @@@@@@@@@@@@@`  @@@@@@        @@@@@@@@@@@@;'@@@ @@@@@@@@@@@
 @@@@@@@@@@@@`  #@@@@@@ FOLLOW @@@@@@@@@@@@@ @@@ @@@@@@@@@@@
 @@@@@@@@@@@@  +@@@@@@@ @sec_kc @@@@@@@@@@@@;#@@ @@@@@@@@@@@
 @@@@@@@@@@@` ;#@@@@@@@         @@@@@@@@@@@@:+@@ @@@@@@@@@@@
 @@@@.+@@@@@  @@@+@@@@@@@@@@@@@@@@@@@@@@@@@@':@@ #@@@@@@@@@@
 @@@          @@@;@@#@@@@@@@@@@@@@@@@@@@@@@@@.@@ +@@@@@@@@@@
 @@`         .@@,@#@@ @@@@@@@@@@@@@@@@@@@@@@@ @@ +@@@@@@@@@@
 @'          +@@ @@# +@@@@:@@@@@@@@@@@@@@@@@@ #@ +@@@@@@@@@@
 @           @@@ @@' @@@#; @@@@@@# `    `:+@# @#'@@@@@@@@@@@
 ,           @@+:@@ @@@@,  @@@@@@              ,#@@@@@@@@@@@
 #@@+,       @@ @@  @@@`   @@@@@@                   .+@@@@@@
  `@@@@@@@@' .@ @` #@@    `@@@@@@                        :##
  .@@@@@@@@@      ,@@     .@@@@@@                        @@@
  .@@@@@@@@@@`    +@ `    :@@@@@@                       @@@@
  .@@@@@@@@@@@@+          ;@@@@@@@@;`                  ,@@@@
  .@@@@@@@@@@@@@@         +@@@@@@@@@+ #@@;  `          @@@@@
  .@@@@@@@@@@@@@@          @@@@@@@@; @@@@@@  @@#'`    @@@@@@
  .@@@@@@@@@@@@@            @@@@@@: @@@@@:  @@@@@@@@@@@@@@@@
  .@@@@@@@@@@@@ `   `` #@@  ,@##@` ,      .@@@@@.'@@@@@@@@@@
  .@@@@@@@@@@@        @@@@@  .#'    ###  #@@@@@@ '@@@@@ +@@@
  .@@@@@@@@@@        @@@,@@@``      @; .@@@@@@@@ '@@@@@ +@@@
  .@@@@@@@@@        @@@@ @@@@@:,@@;   @#@@@@@@@@ '@@@@@ +@@@
  .@@@@@@@@       .@#@@@ @@@@@@@@@@'+@@@@@@@@@@@ '@@@@@ +@@@
  .@@@@@@#.      '@@@@@@ @@@@@@@@@@@@@#@@@@@@@@@ '@@@@@ +@@@
  .@@@@@@@@@@:  @@@@@@@@ @@@@@@@@@@@' @@@@@@@@@@ '@@@@@ +@@@
  .@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@' @@@@@@@@@@ '@@@@@ +@@@
  .@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@' @@@@@@@@@@ '@@@@@ +@@@
  .@@@@@@@@@@##@@@@@@@@@ @@@@@@@@@@@' @@@@@@@@@@ '@@@@@ ;@@@
  .@@@@@@@@@@ #@@@@@@@@@ @@@@@@@@@@@' @@@@@@@@@@ '@@@@@ ;@@@
  .@@@@@@@@@@ +@@@@@@@@@ @@@@@@@@@@@' @@@@@@@@@@ '@@@@@ ;@@@
  .@@@@@@@@@#####################################'@@@@@ ;@@@
  .@@@@@@@@@# CONTROL YOUR DOCKER LIKE A BOSS ###'@@@@@ ;@@@
  .@@@@@@@@@#####################################'@@@@@ ;@@@
 #      _            _          __       _   _             ####
 #   __| | ___   ___| | __     / _| __ _| |_| |__   ___ _ __  #
 #  / _` |/ _ \ / __| |/ /____| |_ / _` | __| '_ \ / _ \ '__| #
 # | (_| | (_) | (__|   <_____|  _| (_| | |_| | | |  __/ |    #
 #  \__,_|\___/ \___|_|\_\    |_|  \__,_|\__|_| |_|\___|_|    #
 ##############################################################
EOT
sleep 2
}
DOCKFATHER_FINISHED() {
cat<<"EOT"
.....................,.....,,,:~?=:,,............................
.........................,,:~+?IIIII=::.,........................
.....................,,:~~=++??IIIIIII~,.........................
...................,,,:~==++???IIIIIIII?=,.......................
...................,,::~+++????IIIIIIIIII+~......................
...................,,:~==+++????IIIIIIIIIIII:....................
..................,,:::~==+===++??IIIII??II?,....................
..................,,,:~~====~===+?I?III???I7?:,..................
....................,,:~~~==+=++??I?IIII??+?~+=..................
..................,,,:~~~=+===++=+??IIIII?::=?+..................
..................,..,:::~~,.........,~III=,:..,.................
..........................:=........,..:II=::+,,.................
..........................+I=........,:+II+~,,=..................
..........................+7?~~,,,~=+?IIII?==I=..................
........................:,=7+++??=~+?III?++=:=,..................
..................,..,,~+,~???+?III+~:~++++=,,...................
..................,:~:+?,~?III7I,???====??+=.....................
....................,~==..,::..,+,~I?++??++~.....................
.....................,:,......,~+?:~????+?=~.....................
.....................,,.,....:,,,,:==??+++=~.....................
...................,,,,,..........,=++I??=~:.....................
....................,~:.....,:=?I+=:=++?+::,.....................
.....................,~.,,,,,,,,,==:,,,:,,:......................
........................,......,,,,,....,,?+.....................
..........................:~+?II?~:,....,I7......................
......................~......,:,,.....,?I7.......................
.......................:=.............+?+........,,..............
..........................:..........::...........,,,,...........
............................:.......?7,..........................
 ##############################################################
 #      _            _          __       _   _                #
 #   __| | ___   ___| | __     / _| __ _| |_| |__   ___ _ __  #
 #  / _` |/ _ \ / __| |/ /____| |_ / _` | __| '_ \ / _ \ '__| #
 # | (_| | (_) | (__|   <_____|  _| (_| | |_| | | |  __/ |    #
 #  \__,_|\___/ \___|_|\_\    |_|  \__,_|\__|_| |_|\___|_|    #
 #       HAS PROVISIONED YOUR DOCKER ENVIRONMENT FOR YOU      #
 ##############################################################
EOT
sleep 1
}

DOCKFATHER_ANSIBLE_ERROR() {
cat<<"EOT"
i?~,...:+?IIIIIIIIIII?=,..,=???????????I??+?=~~~,:,????=,::+.~.......................................
II?..=IIIII7II7I7IIIIII~:?IIIIIIIIII+....,..,:,,,.,,,,,.~.,~++~~=,..................................
7II.,III7II7IIIIIIIIIIII?IIIIIIIII+,.......:~:,,,,~~~+:,=:,~,~:,:,,.................................
II?..?II7IIII7I7I7IIIII?+III?~::,.....,.,.,:::,::.:+=~:.~:.,:+,+,,,.,.,.............................
I+...,?III7II7IIII7III+:,+??,,,:.,.,.,...:.:~~,:=+,,?~:,.:..:::.:,~,~,:..,..........................
=~,...:+?IIIIIIIIII??+~,~~,.,,,,,,,,,,....::~:++=+?::~:~:,,.....,,~~+.,:,.:,........................
=I=..+II77II777III7III?+=,,,~:,::,:,,,,,,..,~:?=~~=~,~=~:==~::::,:::====,,~,..:.....................
=II.:IIIIIII7IIIIIIIIII~,,.,,=~+~,,,.~.:,.....:=~:~~~~+++??I????+=~==~=.:::~,.,..+..................
=I?.:II77II7I7III7I7I?.......~~~,~:,..,.,,,,.,,===~~+++???IIIIII???+~::,=:,~.+~:~.,.................
:+,..+I77I77I7I7II77I=.......,,::+:,,,,,,=:,,,:~=????IIIIIIIIIIIII????+=:~,,+,:,~~..................
,,,...~?IIIIIIIIIIII+,........,.::~:::==+=++++?+?IIIIIIIIIIIIIIIIIIII??+=:=+::~=?=.....,............
..,..~II77III7IIIII?,..........,,,~~=++?+??????IIIIIIIIIIIIIIIIIIIII?I???+~:,.:~:.:.................
..,.~IIIII77II77II=,........,,,::~=+++?????I?II?IIIIIIIIIIIIIIIIIII??I?I??+=:=~,.:=.................
..,,+II777I77III7I=.........,,:==~+++?????IIIIIIIIIIIIIIIIIIIIIIIIIIIIII??++===:~=,,,.,.............
....,?IIII7II777I,...,..,,,,::++=+?+??????I??IIIIIIIIIIIIIIIIIIIII?IIIIIII??+~~,~~~=+...............
..,..,?IIIIIII77:,....,::::~~===++??+????????IIIIIIIIIIIIIIIIIIII?I?II??IIII??++++:,................
.:,..:?II7I7III,.....,:~~~~=~=++??????????????IIIIIIIIIIIIIIII?II??????????I??++=++~................
+I=.:III7I777I7,.....:~~:~~~=++????+?+????????IIIIIIIIIIII?III???I?I???????????+++=:::.,............
7I?.?II7I7II77:....,,,:::~~=++??+?++++?????????IIII?IIIIIII?III?????I?????I?I?????+==+==,..,.,......
7I:.=III77I77I....,,:,:,:~==+++++++++++?????????????IIIIIIIII???????????????I??????+++~~:=,~+,,.....
I+...=IIII7I?.....,,,,:,:====+++++++++++?++????+?????I???III???????????????????I???++=+=+?I...:.....
:,....,~=+++~....,,,,,,,::~~++++++++++++++++++++?+????I???+??????????????+????????????++I?...~.,....
,.....,,:~~+,...,,..,,,,:::~~=+==++++++++++++++?++++????+?????++++++++??????????????+=+++==....?....
,.....,,::~=.....,,..,,,,,:::=====~====+=+++++++++=++++++++=++++++++++?+??+???????++=+==+~....=:,...
,......,:::=,..,,,....,,,,,::~~=~~~=~====+===============+=+=++++++++??++???????++????++:::.,:,~?...
,,....,,::~+:,,,,......,,,,,::~~=~~~==+===~========~~============++++++?+++???+??+++==+:+::~:.~~I...
:,...,,::~++,,,,........,,,,,::~===~=====++============++++++++===+=+++?+??????++++?=~::~=~,,::~?...
I~..,=III7I7=,,.............,,::~~====+++==========~=~==++++?+++=++++++++??=+?++==~~=~=~~:,,,~+?+...
7I,.+I777777+,,,.............,,~~=~=+==+======~~=~~:===?+??++?+++?+?+???+??+++++=~~~:,~:=~,:::=?~...
7I~,II777777I,,...............,:~======+=~:~=====+++++??????????????????????++++==~~~,,,:,,:::=~=:..
7I,.III7I777I:,,...........,,,,,:~==+++=+====~===+++++?+++????+????????????++?+++==::,,.,,,,:+:~+?:.
I,..,?II77I7I~..............,,,,:~~=~+=++++===~=+++===???????????IIIIIIIIII???+++=+=~,,.,,,.~,::~++.
:,...,:=++???,,..........,,,,~~:~~==++++?++++====+++++++?+?+????????IIIIIIII??+===++=:,,.,::,.,..:~,
7I,.~III7I777+,..........,,,,:~~==~~=++?+??++==+=+++++++++~~====+++++++????????+==+++=:,,.,:,:~,,,=.
II:,?I77I77I77,..........,~~~:~==+++++++????++=~===~~~:,,,,,,,,~:::~~,,,:~:==+?+=+++++~:,,,::=+=::=.
7I:,I7777777I7?........,,,~~~~~~~~+++=++++++++=:~~::,..............,,,...,:,,:++++=+=+=::,::~++=++:.
I+.,~I7I77I777I,.....,,,,,~:~~~:::~======~~=++=:,............................,::=+++++=:,,:,,~=+++.,
:,,,,,=??IIIIII?....,:,,,.....,,.,,,:,,,,,,~==+=:,.................,,,,......,,:=++++++~:~,.,,=+?+..
I=,.,?I7I7777I7.....,.......,,.............,:=+++:..............,,:::~=~::,,,,~==+++?++=~==,,,=??~..
77,,?7I777I7777I....,......................,:=+??+:.............,,,::::,,..,~~=++?+++++==+??=::+?,..
I7:,III7I7777777:,.........................,+??III+,..............,~::...,::=+??????++===+????I??,..
II,,II7I777777777,..........................=??IIII+:..................,???+?????????++=~~++=????...
I:,,,?I7777777777=..........................=?IIIIII?~,,,............::????????????+++++~+=~::+??...
+:,,,~?II77IIIIII?,........................,=?IIIIII???+=:::~~~:,:~++??????III??I??+=+=====~=?+++...
7I,,?III777I777777I........................,=?IIIIII?I?II??=~=:~++?????????????????+++=+==~,~~:=,...
7I,:IIII77I77777777?,................,,,,,.,~?II7II?I?IIIIII??+?~:=++?I?II????????+++?++==~,,:=~....
7I,,?I77777777777777:..............,:,,:,,.,=??III??I??II?I?IIII?+++?I???????+?+?++++++++=~=++~.....
I:,,:?I777I777777777=..........,,:~~::~~,,..=??IIII?IIIIIIII???I?????++???+++++++=+++??++=++~,......
:,,,,,:~~==++=++==+=,,.........,,~~~=~=~,.,,~+?IIIIIII?I??IIIIIIIII???++++=+=++++++??????+~,........
I:,,:?II7I77777777777,....,,,:~=~~~=+=~:...,~+?IIIIIIII??++??IIII?II?????+++++==++????++?+~.........
7I,,II777777777777777+....,,~~=++?+++=~,..,:++?II7IIII?II??:=???????II???+?+++++++?+?+?+?+:.........
II,~II77777I???I777777,...,,::~~=+??+=:,..,:++??IIII?IIIIII+::+?I?I???I+??+???++????++???+~,........
7?,,?II777I+?II?+77777,....,,,:~==++++:,.,,~=+???IIII?????I++~,~+?????????++?+?+????++?+++=:........
+:,,~?777I=+???+~77III,....,,,::~=~===~..,,~=+?????????????+?++,:+????????+?+??????++???++=:........
+??IIII7+~+++++~,II??+:.....,,:~~~~+==:....,:=+++???+=~,,::+???+,~+?????????????+?+++?++++=~........
II777I7+~=+==~~,=IIIII=.......,::~~~~~:,....,,::~==~:...,,=III???~~++????????????+++++++?+=+........
I7I7I7+:~====~,,IIIIIII,.....,,,,:::~::.......,,:::,,..,:=+??II?II+=++??????????++++++++++++........
IIIIII::~=+=~:,+IIIIIII~......,,::,:~~,..............,:~+?+=?????I?+=+???????????++++=++++++........
7IIII~~~~~::,,:IIIIIIII?.......,,:,,:,,............,:~:~~?~=~+=++????+?????I????+++?+++===++........
IIII+==+?+=~,,II?++++++?....,.,,,,:,,,,..........,,:~~,:~=~~~~~~=~++?????????????++++++==~++I.......
III?==+++++=~?II+:~=?III=...,,,,,,,:,,...........:~++==~===?==~~:~,~+???????????+++==+==~++=I+......
II?+=======~:IIIIII7IIII7....,,,::,,,............~?I??+=====++??+~~+?++?????????++++===~~++:II......
II++~++==~~:IIIIII7I7I7II,...,,~~~,,.,.........,,::==~:,,,,,,:,:==~=+??I???I????++++=~~:++~=II=.....
IIIIIII+=~~:IIIIIIII?????+....,:~~,:.............,.,,........,,,,,:~~=+?????????+++==:,~==~III?.....
IIIIIII7III???????+++===~~....,:~~:,.................,:=?????????II?+===+???+++?++==~,~==~IIII~.....
++??IIIIIIIIIII+=~~:,,,,,,~,..,,:::,............:==++???????II????????+==++=+++++~~:,:~~~IIIII......
====++?IIII7II7I+,.....:=+??....,::,,.......,:~==++++??+??++++++??????+=~~=++=+=~::,:~~~IIIII+......
II:~==+++?IIIIIII?..,:~+??I??....,,,,..........,,,,::,:,::~~~=++?+???+===~==~=~:,,,,::+IIIII?.......
III?::~~=+?IIIIII?~,:=+??????+....,,,,.,,,,..............,,,~~=+++++====~~~::::,,,,,~IIIIII=........
III7II,,:~+?IIII7II=~==++?????~...........,................,:::~===~~~~~~~:,,,,...,?IIIIIII.........
IIII7III=,:~+?IIIIII~~==++?????:..........,.........,,,,,::::::~~==~=~=~~:::,,..:?IIIIIIII:.........
IIIIIIIII~.,~+?IIIII?~~~==+++???=...........,,...,:~~~==+++++==+++++==~~~:,,,..++?IIIIIII,..........
II?IIIIIIII,,,:~=+==::~~~~=++++++?,..........,,::~==++?++++++++++++++=~~:,,...~+?IIIIIII............
IIII?IIIIII?,,,,,,:::=+??=~==+++=~,..........,::=:~=++++++=++++++=+===~:,....,+?IIIIII=.............
IIIII???IIII+,,,,:::~~++?I+~~~,..............,,::~~:~~======~~=+===~~~,,.....??IIIII?...............
+?++==+?IIIII=,,,:::~~=+???,...................,,,,,,::===~:::::~:~::,,.....=??IIII,.........~~.....
.,,,..~?III7II:,,::,:==+???.......................,,,..::::,,:,,:,:,.......:??III,..........+I,.....
...,:,.~?IIIIII:,,,,:~=+++?,.....................,.,,,,::::,,::::.........,??I?............II?......
...,~=:.:+?IIII=,:.,~==++++:.....................,::::::::,,,,,,.........,+I?,...........,III~......
...,:~+=~,,::~:,..,,:~~=++?+...............................,,,,,........~?I~..............III~......
                       ##############################################################
		       #      _            _          __       _   _                #
                       #   __| | ___   ___| | __     / _| __ _| |_| |__   ___ _ __  #
                       #  / _` |/ _ \ / __| |/ /____| |_ / _` | __| '_ \ / _ \ '__| #
                       # | (_| | (_) | (__|   <_____|  _| (_| | |_| | | |  __/ |    #
                       #  \__,_|\___/ \___|_|\_\    |_|  \__,_|\__|_| |_|\___|_|    #
                       # 							    #
                       # SAYS YOU NEED TO INSTALL ANSIBLE http://www.ansible.com    #
                       #          MAC USERS ...  brew install ansible               #
                       ##############################################################
EOT

DO_HIT 
}

MAKE_ANSIBLE_INVENTORY() {
 echo "[cluster]" > inventory
 echo "" > roles/oss_swarm/files/hosts.txt
 for i in $(cat nodenames.txt)
 do
  ping -c 1 ${i}.local | grep PING | cut -d '(' -f2 | cut -d ')' -f1 | awk ' { print $0" ansible_ssh_user=pi\tansible_ssh_pass=raspberry\tansible_connection=ssh " } ' >> inventory
 done
 ping -c 1 master.local | grep PING | cut -d '(' -f2 | cut -d ')' -f1 | awk ' { print "master_ip: "$0 } ' > vars/master_ip.yml
}

ADD_SSH_KEYS() {
 echo "SCANNING SSH KEYS"
 for i in $(cat inventory | egrep -v '^\[cluster\]' | awk ' { print $1 } ')
 do
   ssh-keyscan -H ${i} >> ~/.ssh/known_hosts
 done
}

CHECK_SSH_PASS_AND_RUN() {
 if [ $(which sshpass) ];
 then
     DO_WITH_SSHPASS
 else
     DO_WITHOUT_SSHPASS
 fi
}

CHECK_ANSIBLE() {
command -v ansible || DOCKFATHER_ANSIBLE_ERROR
#command -v ansible || exit 1
command -v ansible-playbook || DOCKFATHER_ANSIBLE_ERROR
# if ! [ $(which ansible) ]
# then
#    DOCKFATHER_ANSIBLE_ERROR     
# fi
# if ! [ $(which ansible-playbook) ]
# then
#    DOCKFATHER_ANSIBLE_ERROR
# fi
}

DO_WITH_SSHPASS() {
 echo "INVENTORY BUILT NOW INSTALLING PYTHON FOR FIRST RUN"
 ansible cluster -i inventory -m raw -a "sudo apt-get update -y;sudo apt-get install python -y" -u pi -b
 echo "EXECUTING BOOTSTRAP PLAYBOOK"
 ansible-playbook -i inventory site.yml -u pi -b
}

DO_WITHOUT_SSHPASS() {
 echo "INVENTORY BUILT NOW INSTALLING PYTHON FOR FIRST RUN"
 echo "WHEN PROMPTED FOR PASSWORD... ENTER raspberry"
 ansible cluster -i inventory -m raw -a "sudo apt-get update -y;sudo apt-get install python -y" -k -u pi -b
 echo "EXECUTING BOOTSTRAP PLAYBOOK"
 echo "WHEN PROMPTED FOR PASSWORD... ENTER raspberry"
 ansible-playbook -i inventory site.yml -u pi -k -b
}
############################
# MAIN PROGRAM ROUTINE
############################
RUNNING_DOCKFATHER
CHECK_ANSIBLE
MAKE_ANSIBLE_INVENTORY
ADD_SSH_KEYS
CHECK_SSH_PASS_AND_RUN
DOCKFATHER_FINISHED
