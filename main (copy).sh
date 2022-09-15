#!/bin/bash

#This is to create the enemy,world,and name of your charater

clear
echo -e "what is your enemy (Singular): \c "
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
Easthaven
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
echo -e "\n You went to the King of Easthaven to see what you could be do about this masacare that is about to happen /n"\
sleep 4
echo -e " \n When you went to the King , his counselor saw you and said that you are the prophesied Hero of $world \n "
sleep 4
echo -e " \n He said that you can choose either three weapons to defeat the Evil Evil King of the $enemy's "
sleep 4 
echo -e "  You have a choice of The Holy Magnificant Awesome Sword of the Gods, \n The Wand of Legendary Magic Or a Shotgun "
}


begin