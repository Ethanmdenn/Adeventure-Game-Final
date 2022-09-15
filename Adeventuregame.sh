#!/bin/bash

#This is to create the enemy,world,and name of your charater

clear
echo -e "what is your enemy (Singular and Animal): \c "
read enemy
clear
echo "What Is the name of your world: "
read world
clear
echo " what is the name of your charater: "
read name
clear
echo -e "\n You are $name the Legendary hero of the $world and you here to slay the king of the $enemy's \n"
sleep 4

# This will be the begining area where you will start out

begin (){
clear
echo -e " \n You wake up in a desecrated town with burnt houses and bloodied corpses scatered around \n "
sleep 3
echo -e "\n You are terrfied of what you see around you and decide sprint out and go to the next village you find to figure out what you is going on \n "
sleep 3
echo -e " \n You come to a break in the road with a sign saying the right direction is RiverRock and the left is Easthaven "
echo -e " Which way will you decide to go (left or right)(l/r) \c"
read way
if [ $way = 'right' -o $way = 'r' ]
then
echo -e " \n You decide with you best wits you will go right to RiverRock \n"
sleep 4
RiverRock 
else 
echo " you come to a conslusion that going left to Easthaven would be the best option "
EastHaven
fi
}


# These are the directions you choose RiverRock or Easthaven

RiverRock(){
echo -e " \n You have indeed come to a rock on a river and got abushed by $enemy's \n "
sleep 4
echo -e "\n you have perished by the hand of your foe and will go back to when you woke up \n "
sleep 5
begin 
}

EastHaven (){
clear 
echo -e " \n You got to EastHaven safely and went to talk to some of the townsfolk to see what is going on. \n "
sleep 4
echo -e " \n All of them said about the same thing and it was that THE KING OF $enemy's is planning to take over the whole world with his evil army of evil $enemy's \n"
sleep 4 
echo -e "\n You went to the King of Easthaven to see what you could be do about this masacare that is about to happen \n "
sleep 4
echo -e " \n When you went to the King , his counselor saw you and said that you are the prophesied Hero $name the saivor of $world \n "
sleep 4
echo -e " \n He said that you can choose out of three weapons to defeat the Evil Evil King of the $enemy's "
sleep 4 
weapon
}

# This is where they choose a weapon which will change the ending depending on which one they choose

weapon(){
echo -e " \n You have a choice of: \n The Holy Magnificant Awesome Sword of the Gods (sword) \n The Wand of Legendary Magic (wand) \n A Shotgun (gun) \n Which shalll you choose: \c "
read weapon
if [ $weapon = "sword" ]
then
action1="slash"
action2="thrust"
action3="parry"
echo -e " \n You have chosen wisely warrior The Holy Magnificant Awesome Sword of the Gods will help you slay the EVIL EVIL Terrible Awful King  "
battle
elif [ $weapon = "wand" ]
then
action1="fireball"
action2="lightning "
action3="magic shield"
echo " You have chosen wisely warrior The Wand of Legendary Magic will help you slay the EVIL EVIL Terrible Awful King "
battle
elif [ $weapon = "gun" ]
then
action1="shoot"
action2="barrel snuf"
action3="rollaway"
echo " You have chosen wisely warrior The Shotgun will help you slay the EVIL EVIL Terrible Awful King "
battle
else
clear
echo " you die from choosing some unkown thing but you can try again "
weaponrestart
fi
}

# this is if you choose somethng other than on of the weapons
weaponrestart(){
weapon
}


# these are just to retart you at the beging of the area
restartgate() {
gate
}

restartcastle() {
castle
}

restartfinalfight() {
finalfight
}





# this will be the battle sequence 
battle() {
echo -e "Now brave hero you must go and slay the king at his castle on mount Mountain "
sleep 3 
echo -e "\n You arrive at the castle walls and are ready to fight to get" 
sleep 3 
echo -e"\n when you arrive at the gate you yell to the king that you are here to kill him "
sleep 3
echo -e " \nThe King of $enemy says that you will never even make it past the gate's in fact you won't even get near them  \n "
sleep 2
echo -e "\n You charge at the gate and kill the guards near the gate all near the gate \n"
gate
}

gate() {
clear
echo  -e " To get through the gate you must choose the right action \n $action1 \n $action2 \n $action3 \n which shall you choose: \c " 
sleep 3
read gate 
if [ $gate = $action1 ]
then 
echo -e "You give the door an almighy $action1 from your $weapon \n and it comes crashing down "
sleep 4
castle
else 
echo "you fail to open the and get shot in the knee and die"
sleep 3 
echo  " you will restart at the castle gate "
sleep 4
restartgate
fi 
}

castle() {
clear
echo -e  "\n when you arrive inside the castle the $enemy's are gathered around you to fight \n"
sleep 4
echo -e "You must choose what to do to survive their attack \n $action1 \n $action2 \n $action3 \n which shall you choose: \c " 
read castle 
if [ $castle = $action2 ]
then 
echo -e "You do a big $action2 and blast them all away"
sleep 3
finalfight 
else 
echo -e "You die from you wimpy attack and being overwhelemed"
sleep 3 
echo -e "you will restart in the castle walls"
sleep 3 
restartcastle
fi

}

finalfight () {
clear
echo -e  "\n When you arrive inside the Castle the King approaches you and you begin a messy battle \n"
sleep 2
echo -e "You need to choose the right action to slay the king \n $action1 \n $action2 \n $action3 \n which shall you choose: \c " 
read king 
if [ $king = $action1 ]
then 
echo -e "\n You $action1 the king to death and save The World of $world "
exit
else 
echo -e "\n The king kills you with his evil powers and you die a horrible awful death"
sleep 3 
echo -e "you will restart the battle"
sleep 3 
restartfinalfight
fi
}

begin