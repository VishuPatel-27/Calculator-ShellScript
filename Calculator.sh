#!/bin/bash

# Declaration of the two variable for the user input

variable_1,variable_2

# flag for the while loop termination

user_choice=true

# function declaration

# funcation for the addition

addition(){
	
	# $1 and $2 are the first and second arguments respectively	
	# Which are passed during the function calling

	let addition_result=$1+$2
	echo " Addition result is : $addition_result."
}

substraction(){
	
	# $1 and $2 are the first and second arguments respectively
        # Which are passed during the function calling

	let sub_result=$1-$2
	echo " Substraction result is : $sub_result."
}

multiplication(){

	# $1 and $2 are the first and second arguments respectively     
        # Which are passed during the function calling
	
	let mul_result=$1*$2
	echo "Multiplication result is : $mul_result."
}

division(){

        # $1 and $2 are the first and second arguments respectively     
        # Which are passed during the function calling
	
	let division_result=$1/$2
	echo " Division result is : $division_result."
}

modulus_ops(){

        # $1 and $2 are the first and second arguments respectively     
        # Which are passed during the function calling
	
	let mod_result=$1%$2
	echo " Modulus division result is : $mod_result."
}

while $user_choice
do
	echo ""
	echo ""
	echo "------------------------  Calculator  ----------------------------------"
	echo ""
	echo " 1. Addition"
	echo " 2. Substraction"
	echo " 3. Multiplication"
	echo " 4. Division"
	echo " 5. Modulus Division"
	echo " 6. Exit"
	echo ""

	# getting know about what user want to do 
	# reading input from the user
	# ops_choice is the variable that will store the user choice based on the 
	# above list of option.

	read -p " What would you like to do ?   ------   " ops_choice
	echo ""
	echo "-----------------------------------------------------------------------"

	# used case statement 

	case $ops_choice in

		1)	
			echo ""
			read -p " Enter the value of variable 1 : " variable_1
                        read -p " Enter the value of variable 2 : " variable_2

			# calling the addition funcation for the result
			# along with this, we are passing those two variable
			
			addition variable_1 variable_2
		       	
			;;
		
		2) 	
			echo ""
                        read -p " Enter the value of variable 1 : " variable_1
                        read -p " Enter the value of variable 2 : " variable_2

                        # calling the substraction funcation for the result
                        # along with this, we are passing those two variable

                        substraction variable_1 variable_2

			;;
		
		3)
			echo ""
                        read -p " Enter the value of variable 1 : " variable_1
                        read -p " Enter the value of variable 2 : " variable_2

                        # calling the multiplication funcation for the result
                        # along with this, we are passing those two variable

                        multiplication variable_1 variable_2

                        ;;
		
		4) 
			echo ""
                        read -p " Enter the value of variable 1 : " variable_1
                        read -p " Enter the value of variable 2 : " variable_2

                        # calling the division funcation for the result
                        # along with this, we are passing those two variable

                        division variable_1 variable_2

                        ;;
		
		5) 
			echo ""
                        read -p " Enter the value of variable 1 : " variable_1
                        read -p " Enter the value of variable 2 : " variable_2

                        # calling the addition funcation for the result
                        # along with this, we are passing those two variable

                        modulus_ops variable_1 variable_2

                        ;;

		6)	
			echo ""
			user_choice=false
		       	;;

		*) 
			echo ""
			echo " Please! Enter the valid input."	
	
	esac

	# termination of the case statement
done

