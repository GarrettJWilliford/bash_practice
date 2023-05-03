#! /usr/bin/bash

#echo command
echo hello world

#variables(uppercase convention)
#No Spacing in variables
NAME="Garrett"


#print var name
echo "My Name is $NAME"


#user input
read -p "Enter A Name>> " NEW_NAME
echo "$NEW_NAME sucks"
 
 
 #if statement
 #spacing is important
 if [ "$NAME" == "$NEW_NAME" ]
 then
 	echo "Thats my name coward"
 elif [ "$NEW_NAME" == "Jada" ]
 then
 	echo "thats my mom :("
 else 
 	echo "else statement me harder"
 fi


#Variable Comparison Cheat Sheet
#-eq | values are equal
#-ne | values are not equal
#-gt | value 1 is greater then value 2
#-ge | value 2 is greater then value 1
#-lt | value 1 is less then value 2
#-le | value 2 is less then value 1

 
 #comparison practice
 VAL1=1
 VAL2=2
 
 
 if [ $VAL1 -ne $VAL2 ]
 then
 	echo ":)"
 fi
 
 
 #File Comparison Cheat Sheet
 #-d | is directory
 #-e | does file exist
 #-f | is string file
 #-g | is there a group id set on a file
 #-r | is file readable
 #-s | is file bigger then 0
 #-u | is user id set on file
 #-w | is file writable
 #-x | is file executables
 
 
 
#file commands practice
if [ -e "test.txt" ]
then
	echo "Test File Found"
else
	echo "No Test File Found"
fi
 
 
#case statements and or
read -p "Are we in New Mexico?|>> " ANSWER

 case "$ANSWER" in 
 	[yY] | [yY][eE][sS])
 		echo "cool"
 	;;[nN] | [nN][oO])
 		echo "liar"
 	;; *) echo "no answer given"
 esac


#for loop
BEE_MOVIE="According to all known laws of aviation, there is no way a bee should be able to fly"
for LINE in $BEE_MOVIE
	do
		echo "$LINE"
done
 


 #for loop list all text files
 FILES=$(ls *.txt)
 for FILE in $FILES
 	do
 		if [ $FILE != "hello_world.txt" ]
 		then
 			echo "adding cool to $FILE"
 			mv $FILE 'cool'$FILE
 		fi
 done
 
 
 #while loop cat command
 LINE=1
 while read -r CURRENT_LINE
 	do
 		echo "$CURRENT_LINE"
 		((LINE++))
 done < "./hello_world.txt" #put file path here
 
 
 
 #function
 
function saySomething() {
	echo "You chose to say $1"
}
 
 read -p "Say Something >>| " SOMETHING
 
 saySomething $SOMETHING

 
 
 
