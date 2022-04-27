#!/bin/sh
# Author: Boyeong Yoon (boyeong.nancy.yoon@gmail.com)

ReverseSorting(){

        echo -e "\n===================================================="
        echo "================ REVERSE SORTING ==================="
        echo -e "====================================================\n"

        cat number.txt | sort -nru      # -nr: sort a file with numeric data in reverse order
                                        # -u: sort and remove duplicates

        echo -e "\n===================================================="
        echo "========== THE END OF THE REVERSE SORTING =========="
        echo -e "====================================================\n\n\n"
}

ReverseSorting