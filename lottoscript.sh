#!usr/bin/bash
#Download the Data Set for winning megamillions lottery winners since 2002
	wget  https://raw.githubusercontent.com/dhutchen/Most-chosen-mega-millions-numbers/master/numbersonly.csv

#List times a number appeared in ascending order.
	awk '{for(i=1;i<=NF;i++) a[$i]++} END {for(k in a) print k,a[k]}' numbersonly.csv | sort -k 2 -n
	printf "Above are the winning numbers. How many times each has won is listed beside it."
        printf "\n"	
#Print most likely to win combination of numbers.
	printf "\nThis is the most chosen combination of winning numbers: "
	awk '{for(i=1;i<=NF;i++) a[$i]++} END {for(k in a) print k,a[k]}' test.csv | sort -k 2 -n | awk 'NR>=73&&NR<=77' | awk '{print $1}' | paste -d, -s
	printf "\n"
#Print second through fourth most chosen combinations of numbers.
	printf "Second most likely:  "
	awk '{for(i=1;i<=NF;i++) a[$i]++} END {for(k in a) print k,a[k]}' numbersonly.csv | sort -k 2 -n | awk 'NR>=68&&NR<=72' | awk '{print $1}' | paste -d, -s
	printf "Third most likely:  "
	
	awk '{for(i=1;i<=NF;i++) a[$i]++} END {for(k in a) print k,a[k]}' numbersonly.csv | sort -k 2 -n | awk 'NR>=63&&NR<=67' | awk '{print $1}' | paste -d, -s
	printf "Fourth most chosen:  "
	
	awk '{for(i=1;i<=NF;i++) a[$i]++} END {for(k in a) print k,a[k]}' numbersonly.csv | sort -k 2 -n | awk 'NR>=58&&NR<=62' | awk '{print $1}' | paste -d, -s
	printf "\n"

	printf "Here are your lucky lotto numbers! "
	shuf -n 1 numbersonly.csv

