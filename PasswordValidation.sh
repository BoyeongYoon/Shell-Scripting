#!/bin/sh
# Author: Boyeong Yoon (boyeong.nancy.yoon@gmail.com)

PasswordValidation(){

        echo -e "\n===================================================="
        echo "============== PASSWORD VALIDATION ================="
        echo -e "====================================================\n"
        echo -e "Password must has...\n   at least 8 characters that include...\n   at least 1 number\n   at least 1 uppercase character\n   at least 1 lowercase character"
        echo -e "\n\n\n"



        # Asks an user to create a password and store it in the variable PASSWORD
        echo -n "Enter your password: "
        read PASSWORD



        # Checks whether the password met all the conditions
        # (1) at least 8 characters
        # (2) at least 1 number
        # (3) at least 1 uppercase character
        # (4) at least 1 lowercase chracter
        # If the password satisfied all the conditions then prints 'VALID PASSWORD' else 'INVALID PASSWORD'
        
        VALIDATION=`echo $PASSWORD | \
                grep '[[:alnum:]]' | \
                grep '[[:lower:]]' | \
                grep '[[:upper:]]'`
        
        if [ $VALIDATION ] && [ ${#PASSWORD} -ge 8 ]
        then
                echo -n "...VALID PASSWORD"
        else
                echo -n "...INVALIDATED PASSWORD"
        fi
        echo -e "\n\n"



        # Prints the details of validation criteria if the password met the condition then prints 'V' else 'X'
        # There are four conditions - whether its length is greater than 8, it includes numeric numbers, uppercase letter or lowercase letter
        
        if [ ${#PASSWORD} -ge 8 ]; then MORETHAN8CHRS="V"; else MORETHAN8CHRS="X"; fi
        if [ `echo $PASSWORD | grep '[[:digit:]]'` ]; then DIGIT="V"; else DIGIT="X"; fi
        if [ `echo $PASSWORD | grep [[:upper:]]` ]; then UPPER="V"; else UPPER="X"; fi
        if [ `echo $PASSWORD | grep [[:lower:]]` ]; then LOWER="V"; else LOWER="x"; fi

        echo "[$MORETHAN8CHRS] Must be at least 8 characters"
        echo "[$DIGIT] Must contain at least 1 number"
        echo "[$UPPER] Must contain at least 1 uppercase character"
        echo "[$LOWER] Must contain at least 1 lowercase character"

        echo -e "\n===================================================="
        echo "========== END OF THE PASSWORD VALIDATION =========="
        echo -e "====================================================\n\n\n"
}

PasswordValidation
