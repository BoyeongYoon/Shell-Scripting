#!/bin/sh
# Author: Boyeong Yoon (boyeong.nancy.yoon@gmail.com)

PasswordValidation(){

        echo -e "\n===================================================="
        echo "============== PASSWORD VALIDATION ================="
        echo -e "====================================================\n"
        echo -e "Password must has...\n   at least 8 characters that include...\n   at least 1 number\n   at least 1 uppercase character\n   at least 1 lowercase character"
        echo -e "\n\n\n"



        # Asks an user to create a password
        echo -n "Enter your password: "
        read PASSWORD



        # Checks whether the password is valid
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



        # Prints the details of validation criteria
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
