#!/bin/bash
#Author:: KVS SIVA KUMAR
#DESCRIPTION:: Comakeit Employees Record
#DATEOFCREATION:: 09-12-2021

add_record(){
    ID=$(( $RANDOM % 10 + 1000 ))
    echo "------------------------------------------------------"
    read -p "Enter Name: " name
    read -p "Enter Surname: " surname
    read -p "Enter Experience: " experience
    read -p "Enter Customer: " customer
    echo "------------------------------------------------------"
    grep -qF "$ID" Records.txt 
        if [ "$?" = 1 ]
        then
            echo "$ID:$name:$surname:${experience}yrs:$customer" >> Records.txt
            echo $ID >> id.txt
            if [ "$?" -eq 0 ]
                then
                    echo "Record Added. Use option 1 to show all records !!"
                    exit 0
            fi
        else
            echo "ID already exists ! Please try again"
            exit 1
        fi
}
add_record