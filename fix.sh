#!/bin/sh
#Variables--------------------------------------
MCH01V01=$( grep -ic "MCH-01-V-01" /etc/hostname ) #Check if the node is 01
MCH01V02=$( grep -ic "MCH-01-V-02" /etc/hostname ) #Check if the node is 02
MCH02V01=$( grep -ic "MCH-02-V-01" /etc/hostname ) #Check if the node is 03
MCH02V02=$( grep -ic "MCH-02-V-02" /etc/hostname ) #Check if the node is 04
DIRECTORY="/srv/daemon-data" #Data Directory
RUNTIMEOUT="5" #How many seconds between checks
root="root" #System Root user
#------------------------------------------------
sleep 1
echo "$(tput setaf 1)▒█▀▀█ ▒█▀▀▀█ ▒█▀▀█ ▀█▀ ▒█▄░▒█ ▀▀█▀▀ ▒█░▒█ ▒█▀▄▀█ ▒█▀▀█"
echo "$(tput setaf 1)▒█░░░ ▒█░░▒█ ▒█▄▄▀ ▒█░ ▒█▒█▒█ ░▒█░░ ▒█▀▀█ ▒█▒█▒█ ▒█░░░"
echo "$(tput setaf 1)▒█▄▄█ ▒█▄▄▄█ ▒█░▒█ ▄█▄ ▒█░░▀█ ░▒█░░ ▒█░▒█ ▒█░░▒█ ▒█▄▄█"

sleep 1
echo "$(tput setaf 2)                ======================"
echo "$(tput setaf 2)                  Written by Fonix    "
echo "$(tput setaf 2)                Created for Corinthmc "
echo "$(tput setaf 2)                      Networks        "
echo "$(tput setaf 2)                 http://corinthmc.com "
echo "$(tput setaf 2)                ======================"
sleep 3
echo "$(tput sgr 0)" && echo ""
echo -n "Checking what node this is"
sleep 1 && echo -n "." && sleep 1 && echo -n "." && sleep 1 && echo -n "." && sleep 1 && echo -n "." && sleep 1 && echo -n "."
echo ""
#Tell the user what the hostname is
if [ $MCH01V01 -eq 1 ]
then
echo "The Node is MCH-01-V-01"
else
  echo -n ""
fi

if [ $MCH01V02 -eq 1 ]
then
echo "The Node is MCH-01-V-02"
else
  echo -n ""
fi

if [ $MCH02V01 -eq 1 ]
then
echo "The Node is MCH-02-V-01"
else
  echo -n ""
fi

if [ $MCH02V02 -eq 1 ]
then
echo "The Node is MCH-02-V-02"
else
  echo -n ""
fi

echo "" && echo ""
if [ $MCH01V01 -eq 1 ] && [ $MCH01V02 -eq 1 ] && [ $MCH02V01 -eq 1 ] && [ $MCH02V02 -eq 1 ]
then
    echo "This Node is not known or the hostname is messed up!, Please consult an admin"
  fi
   echo -n "Moving onto permission check"
   sleep 1 && echo -n "."
   sleep 1 && echo -n "."
   sleep 1 && echo -n "."
   sleep 1 && echo -n "."
   sleep 1 && echo -n "."
   echo "Off we go!"
   echo "" && echo ""
   sleep 2

if [ $MCH01V01 -eq 1 ]
then
  #BungeeCord Checker!
  echo "BungeeCord Checker"
    #Checking if the bungee_77a6f1e0 Server Exists
    bungeecordfile="bungee_77a6f1e0"
    bungeecordid="15016"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown $root $bungeecordfile
      chown -R $bungeecordid $bungeecordfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "Bungeecord is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH01V01 -eq 1 ]
then
  #Hub Checker!
  echo ""
  echo ""
  echo "Hub Checker"
    #Checking if the hub_bf5af14b Server Exists
    Hubfile="hub_bf5af14b"
    Hubid="15017"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $Hubfile
      chown -R $Hubid $Hubfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "Hub is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH01V01 -eq 1 ]
then
  #ArcadeHub Checker!
  echo ""
  echo ""
  echo "ArcadeHub Checker"
    #Checking if the arcade_c756a9a3 Server Exists
    ArcadeHubfile="arcade_c756a9a3"
    ArcadeHubid="15018"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $ArcadeHubfile
      chown -R $ArcadeHubid $ArcadeHubfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "ArcadeHub is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH01V01 -eq 1 ]
then
  #Creative Checker!
  echo ""
  echo ""
  echo "Creative Checker"
    #Checking if the 	creati_db4ca575 Server Exists
    Creativefile="creati_db4ca575"
    Creativeid="15019"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $Creativefile
      chown -R $Creativeid $Creativefile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "Creative is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH01V02 -eq 1 ]
then
  #Sumo Checker!
  echo ""
  echo ""
  echo "Sumo Checker"
    #Checking if the 	sumo_060e1f17 Server Exists
    Sumofile="sumo_060e1f17"
    Sumoid="15019"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $Sumofile
      chown -R $Sumoid $Sumofile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "Sumo is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH01V02 -eq 1 ]
then
  #CraftBert Checker!
  echo ""
  echo ""
  echo "CraftBert Checker"
    #Checking if the craftb_a43165fe Server Exists
    CraftBertfile="craftb_a43165fe"
    CraftBertid="15021"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $CraftBertfile
      chown -R $CraftBertid $CraftBertfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "CraftBert is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH01V02 -eq 1 ]
then
  #CraftMan Checker!
  echo ""
  echo ""
  echo "CraftMan Checker"
    #Checking if the craftm_4953ef95 Server Exists
    CraftManfile="craftm_4953ef95"
    CraftManid="15023"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $CraftManfile
      chown -R $CraftManid $CraftManfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "CraftMan is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH01V02 -eq 1 ]
then
  #BuildBattle Checker!
  echo ""
  echo ""
  echo "BuildBattle Checker"
    #Checking if the buildb_4fa9fedd Server Exists
    BuildBattlefile="buildb_4fa9fedd"
    BuildBattleid="15024"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $BuildBattlefile
      chown -R $BuildBattleid $BuildBattlefile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "BuildBattle is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH01V02 -eq 1 ]
then
  #SimonSheep Checker!
  echo ""
  echo ""
  echo "SimonSheep Checker"
    #Checking if the simons_1bea016e Server Exists
    SimonSheepfile="simons_1bea016e"
    SimonSheepid="15025"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $SimonSheepfile
      chown -R $SimonSheepid $SimonSheepfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "SimonSheep is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH01V02 -eq 1 ]
then
  #NaturalDisaster Checker!
  echo ""
  echo ""
  echo "Natural Disaster Checker"
    #Checking if the natura_a178dd25 Server Exists
    NaturalDisasterfile="natura_a178dd25"
    NaturalDisasterid="15026"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $NaturalDisasterfile
      chown -R $NaturalDisasterid $NaturalDisasterfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "Natural Disaster is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH01V02 -eq 1 ]
then
  #TNTWars Checker!
  echo ""
  echo ""
  echo "TNTWars Checker"
    #Checking if the tntwar_7f6146c9 Server Exists
    TNTWarsfile="tntwar_7f6146c9"
    TNTWarsid="15027"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $TNTWarsfile
      chown -R $TNTWarsid $TNTWarsfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "TNTWars is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH01V02 -eq 1 ]
then
  #Tron Checker!
  echo ""
  echo ""
  echo "Tron Checker"
    #Checking if the tron_204487dc Server Exists
    Tronfile="tron_204487dc"
    Tronid="15028"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $Tronfile
      chown -R $Tronid $Tronfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "Tron is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH01V02 -eq 1 ]
then
  #HideNSeek Checker!
  echo ""
  echo ""
  echo "HideNSeek Checker"
    #Checking if the hidens_e8ef9c8f Server Exists
    HideNSeekfile="hidens_e8ef9c8f"
    HideNSeekid="15029"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $HideNSeekfile
      chown -R $HideNSeekid $HideNSeekfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "HideNSeek is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH01V02 -eq 1 ]
then
  #GhastInvaders Checker!
  echo ""
  echo ""
  echo "GhastInvaders Checker"
    #Checking if the ghasti_87e5ef13 Server Exists
    GhastInvadersfile="ghasti_87e5ef13"
    GhastInvadersid="15030"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $GhastInvadersfile
      chown -R $GhastInvadersid $GhastInvadersfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "GhastInvaders is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH01V02 -eq 1 ]
then
  #Craftis Checker!
  echo ""
  echo ""
  echo "Craftis Checker"
    #Checking if the crafti_047f4131 Server Exists
    Craftisfile="crafti_047f4131"
    Craftisid="15031"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $Craftisfile
      chown -R $Craftisid $Craftisfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "Craftis is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH02V01 -eq 1 ]
then
  #Empires Checker!
  echo ""
  echo ""
  echo "Empires Checker"
    #Checking if the empire_cfa7967b Server Exists
    Empiresfile="empire_cfa7967b"
    Empiresid="15016"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $Empiresfile
      chown -R $Empiresid $Empiresfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "Empires is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH02V01 -eq 1 ]
then
  #Ancients Checker!
  echo ""
  echo ""
  echo "Ancients Checker"
    #Checking if the ancien_fb5030ab Server Exists
    Ancientsfile="ancien_fb5030ab"
    Ancientsid="15017"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $Ancientsfile
      chown -R $Ancientsid $Ancientsfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "Ancients is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH02V01 -eq 1 ]
then
  #SkyWars Checker!
  echo ""
  echo ""
  echo "SkyWars Checker"
    #Checking if the skywar_fe05f589 Server Exists
    SkyWarsfile="skywar_fe05f589"
    SkyWarsid="15018"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $SkyWarsfile
      chown -R $SkyWarsid $SkyWarsfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "SkyWars is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH02V01 -eq 1 ]
then
  #Gladiators Checker!
  echo ""
  echo ""
  echo "Gladiators Checker"
    #Checking if the gladia_6d8be173 Server Exists
    Gladiatorsfile="gladia_6d8be173"
    Gladiatorsid="15019"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $Gladiatorsfile
      chown -R $Gladiatorsid $Gladiatorsfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "Gladiators is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH02V01 -eq 1 ]
then
  #Portals Checker!
  echo ""
  echo ""
  echo "Portals Checker"
    #Checking if the portal_ea6163f2 Server Exists
    Portalsfile="portal_ea6163f2"
    Portalsid="15020"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $Portalsfile
      chown -R $Portalsid $Portalsfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "Portals is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH02V01 -eq 1 ]
then
  #Legions Checker!
  echo ""
  echo ""
  echo "Legions Checker"
    #Checking if the lagion_8114dce1 Server Exists
    Legionsfile="lagion_8114dce1"
    Legionsid="15021"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $Legionsfile
      chown -R $Legionsid $Legionsfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "Legions is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH02V01 -eq 1 ]
then
  #SurvivalGames Checker!
  echo ""
  echo ""
  echo "SurvivalGames Checker"
    #Checking if the surviv_e3d2ac00 Server Exists
    SurvivalGamesfile="surviv_e3d2ac00"
    SurvivalGamesid="15022"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $SurvivalGamesfile
      chown -R $SurvivalGamesid $SurvivalGamesfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "SurvivalGames is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH02V02 -eq 1 ]
then
  #DevServer Checker!
  echo ""
  echo ""
  echo "DevServer Checker"
    #Checking if the devser_8e62d9f7 Server Exists
    DevServerfile="devser_8e62d9f7"
    DevServerid="	15016"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $DevServerfile
      chown -R $DevServerid $DevServerfile/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "DevServer is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi

if [ $MCH02V02 -eq 1 ]
then
  #onePoint12 Checker!
  echo ""
  echo ""
  echo "onePoint12 Checker"
    #Checking if the onepoi_7eff9d90 Server Exists
    onePoint12file="onepoi_7eff9d90"
    onePoint12id="	15017"
    if [ -d "$DIRECTORY" ]; then
      cd $DIRECTORY
      echo "Directory was found running file cleanup" && echo ""
      chown -R $root $onePoint12file
      chown -R $onePoint12id $onePoint12file/data
      sleep 1
    else
      echo "Something internal went wrong, the server should exist!"
      echo "Report to an admin. Thanks!"
      sleep 1
    fi
  else
  echo "onePoint12 is not on this Node! Skipping :(" && echo "$(tput sgr 0)"
  sleep 0.2
fi
