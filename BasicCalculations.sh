#!/bin/sh
# Author: Boyeong Yoon (boyeong.nancy.yoon@gmail.com)

BasicCalculations(){

        echo -e "\n===================================================="
        echo "=============== BASIC CALCULATIONS ================="
        echo -e "====================================================\n"

        # Reads 5 or 10 integers from an user and stores in the array NUMBERS
        echo "Enter 10 intergers (ENTER after each int): "
        for i in {0..9}
        do
                read NUMBERS[$i]

                if [ $i -eq 4 ]
                then
                        echo -n "Stop?(y/n): "
                        read STOP

                        if [ $STOP == "y" ]
                        then
                                break
                        fi
                fi
        done
        echo -e "\n\n\n"        


        # Performs the basic calculations
        PRODUCT=1
        SUM=0
        MAX=${NUMBERS[0]}
        MIN=${NUMBERS[0]}

        for elem in ${NUMBERS[@]}
        do
                ((PRODUCT*=$elem))
                ((SUM+=$elem))
                (($elem < $MIN)) && MIN=$elem
                (($elem > $MAX)) && MAX=$elem
        done
        AVG=$(($SUM/${#NUMBERS[@]}))



        # Prints out the value of basic calculations
        echo -n "You entered ${#NUMBERS[@]} numbers and they are... "
        for elem in ${NUMBERS[@]}
        do
                echo -n "$elem "
        done
        echo -e "\n"


        echo "The Product: $PRODUCT"
        echo "The Sum: $SUM"
        echo "The Average: $AVG"
        echo "The Maximum: $MAX"
        echo "The Minimum: $MIN"


        echo -e "\n===================================================="
        echo -e "======== THE END OF THE BASIC CALCULATIONS ========="
        echo -e "====================================================\n\n\n"

}

BasicCalculations
