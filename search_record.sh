#!/bin/bash
#Author:: KVS SIVA KUMAR
#DESCRIPTION:: Comakeit Employees Record
#DATEOFCREATION:: 09-12-2021

search_record(){
    
    # cat Records.txt | grep -e '[[:digit:]]:' | cut -d ':' -f 1 >> id.txt
    read -p "Which record do you want to Search for? Enter Id: " search_id
    grep -qF "$search_id" id.txt
    if [ "$?" -eq 0 ]
    then 
        echo "------------------------------------------------------
`cat Records.txt | grep $search_id`
------------------------------------------------------"
    else
        echo "Entered Id Does Not exist! "
        exit 1
    fi

}
search_record

