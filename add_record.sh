#!/bin/bash
#Author:: KVS SIVA KUMAR
#DESCRIPTION:: Comakeit Employees Record
#DATEOFCREATION:: 09-12-2021

add_record(){
    ID=$(( $RANDOM % 10 + 1000 ))
    read -p "Enter Name: " name
    read -p "Enter Surname: " surname
    read -p "Enter Experience: " experience
    read -p "Enter Customer: " customer
    for id in " cat /home/siva/bash-tasks/excersire3/Records.txt | grep -e '[[:digit:]]:' | cut -d ":" -f 1 ";
    do
        if [ "$ID" != "$id" ] 
        then
            echo "$ID:$name:$surname:${experience}yrs:$customer" >> /home/siva/bash-tasks/excersire3/Records.txt
            if [ "$?" -eq 0 ]
                then
                    echo "Record Added. Use option 1 to show all records !!"
            fi
        else
            echo "ID already exists !"
            exit 0
        fi
    done
}
add_record