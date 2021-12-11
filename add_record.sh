#!/bin/bash
#Author:: KVS SIVA KUMAR
#DESCRIPTION:: Comakeit Employees Record
#DATEOFCREATION:: 09-12-2021

add_record(){
    ID=$(( $RANDOM % 10 + 1000 ))
    echo $ID >> id.txt
    echo "------------------------------------------------------"
    read -p "Enter Name: " name
    read -p "Enter Surname: " surname
    read -p "Enter Experience: " experience
    read -p "Enter Customer: " customer
    echo "------------------------------------------------------"
    grep -qF "$ID" id.txt 
        if [ "$?" != 0 ] 
        then
            echo "$ID:$name:$surname:${experience}yrs:$customer" >> Records.txt
            if [ "$?" -eq 0 ]
                then
                    echo "Record Added. Use option 1 to show all records !!"
                    break
            fi
        else
            echo "ID already exists ! Please try again"
            exit 1
        fi
}
add_record