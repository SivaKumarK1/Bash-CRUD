#!/bin/bash
#Author:: KVS SIVA KUMAR
#DESCRIPTION:: Comakeit Employees Record
#DATEOFCREATION:: 09-12-2021

search_record(){
    
    read -p "Which record do you want to Search for? Enter Id: " search_id
    for id in " cat Records.txt | grep -e '[[:digit:]]:' | cut -d ":" -f 1 ";
    do
        if [ "$search_id" != "$id" ] 
        then
            echo "Entered Id Does Not exist! "
            exit 1
        else
            cat Records.txt | grep $search_id
        fi
    done

}
search_record