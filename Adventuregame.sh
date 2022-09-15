#!/bin/bash

#This is to create the enemy,world,and name of your charater

clear
echo -e " Who is your enemy (Singular and Animal): \c "
read enemy
clear
echo -e "What is the name of the world: \c "
read world
clear
echo -e "what is the name of your charater: \c "
read name
clear
echo -e "\n You are $name the Legendary hero of $world and you here to slay the King of The $enemy's \n"
sleep 5

# This will be the begining area where you will start out

begin (){
clear
echo -e " \n You wake up in a desecrated town with burnt houses and bloodied corpses scatered all around. \n "
sleep 4
echo -e "\n You are so terrfied of what you see around you and decide sprint out and go to the next village you to figure out what is going on \n "
sleep 4
echo -e " \n You come to a break in the road with a sign saying the right direction is RiverRock and the left is Easthaven \n "
sleep 1
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
echo -e " \n You got to EastHaven safely and talked to some of the townsfolk to see what in the world is going on. \n "
sleep 4
echo -e " \n All of them said about the same thing and it was that THE KING OF $enemy's is planning to take over the whole world with his evil army of evil $enemy's \n"
sleep 4 
echo -e "\n You went to the King of Easthaven to see what you could do about this masacare that is about to happen \n "
sleep 4
echo -e " \n When you got to the Kings throne room to see the King of Easthaven his advisor saw you and preached  \n \n That you are prophesized Hero, $name the saivor of $world \n "
sleep 4
echo -e "\n He said that you can choose out of three weapons to defeat the Evil Evil King of the $enemy's "
sleep 4 
weapon
}

# This is where they choose a weapon which will change the ending depending on which one they choose

weapon(){
echo -e " \n You have a choice of: \n The Holy Magnificant Awesome Sword of the Gods (sword) \n The Wand of Legendary Magic (wand) \n A Shotgun (gun) \n Which shall you choose: \c "
read weapon
if [ $weapon = "sword" ]
then
action1="slash"
action2="thrust"
action3="parry"
echo -e " \n You have chosen wisely warrior The Holy Magnificant Awesome Sword of the Gods will help you slay the EVIL EVIL Terrible Awful King \n  "
battle
elif [ $weapon = "wand" ]
then
action1="fireball"
action2="lightning_strike "
action3="magic_shield"
echo -e " \n You have chosen wisely warrior The Wand of Legendary Magic will help you slay the EVIL EVIL Terrible Awful King "
battle
elif [ $weapon = "gun" ]
then
action1="shoot"
action2="barrel_snuf"
action3="rollaway"
echo -e " \n You have chosen wisely warrior The Shotgun will help you slay the EVIL EVIL Terrible Awful King "
battle
else
clear
echo -e "\n You die from a meteor because the gods didn't like you choosing something unknown \n But you get a second chance "
sleep 4
weaponrestart
fi
}

# this is if you choose somethng other than on of the weapons
weaponrestart(){
weapon
}


# these are just to restart you at the beging of the area
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
echo -e " \n Now brave hero you must go and slay the king at his castle on Mount Mountain \n "
sleep 3 
echo -e "\n You arrive at the castle walls and are ready to fight \n " 
sleep 3 
echo -e " \n when you arrive at the gate you yell to the king that you are here to slay him \n  "
sleep 3
echo -e "\n The King of $enemy's says That you will never even make it past the gate in fact you won't even get near them  \n"
sleep 2
echo -e "\n You charge the gate with the bravery and kill the guards near the gate and then arrive in front of the gate \n"
gate
}

gate() {
echo  -e " \n To get through the gate you must choose the right action \n $action1 \n $action2 \n $action3 \n which shall you choose: \c " 
sleep 3
read gate 
if [ $gate = $action1 ]
then 
echo -e " \n You $action1 the gate with your $weapon \n and it comes crashing down and reveals the inside of the castle walls \n "
sleep 5
castle
else 
echo "you fail to open the and gate and get shot in the knee and die a horrible death"
sleep 3 
echo  -e " \n do it again but better "
sleep 2
clear
restartgate
fi 
}

castle() {
clear
echo -e  "\n when you arrive inside the castle the $enemy's are gathered around you to fight in battle \n"
sleep 4
echo -e "You must choose what to do to survive their attack \n $action1 \n $action2 \n $action3 \n which shall you choose: \c " 
read castle 
if [ $castle = $action2 ]
then 
echo -e " \n You $action2 them and blast the all away With Amazing Awesome Epic power \n  "
sleep 5
finalfight 
else 
echo -e "\n You die from your wimpy attack and being overwhelemed from the massive amount of $enemy's around you \n "
sleep 3 
echo -e "you will restart inside the castle walls"
sleep 3 
restartcastle
fi

}

finalfight () {
clear
echo -e  "\n When you arrive inside the Castle the King approaches you and says \n  \n You might of made it this far $name but you can never defeat me in battle for I am the all powerful KING OF THE $enemy's \n \n you begin to converge in a messy battle TO THE DEATH \n"
sleep 2
echo -e "You need to choose the right action to slay the king \n $action1 \n $action2 \n $action3 \n which shall you choose: \c " 
read king 
if [ $king = $action1 ]
then 
echo -e "\n You $action1 the king to death while screaming in anger at what he has done, but you have saved The World of $world, \n \n but at what cost "
exit
else 
echo -e "\n The king kills you with his evil powers and you die a horrible awful death"
sleep 3 
echo -e "you will restart the battle \n but be better next time"
sleep 4
restartfinalfight
fi
}

begin