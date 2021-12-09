#!/bin/bash
#Author:: KVS SIVA KUMAR
#DESCRIPTION:: Comakeit Employees Record
#DATEOFCREATION:: 09-12-2021

edit_record(){
    cat /home/siva/bash-tasks/excersire3/Records.txt | grep -e '[[:digit:]]:' 
    read -p "Which record do you want to edit. Enter Id: " edit_id
    while true; do
        old_data=`cat /home/siva/bash-tasks/excersire3/Records.txt | grep $edit_id`
        read -p "Are you Sure to Continue to edit this record [Y/y::N/n]: " yn
            case $yn in
                [Yy]*)
                    read -p "Enter New Data for the record in the format <name:surname:experienceyrs:customer> : " data
                    new_data=$edit_id:$data
                    sed -i "s/$old_data/$new_data/" /home/siva/bash-tasks/excersire3/Records.txt
                    if [ "$?" -eq 0 ]
                    then
                        echo "Record Edited. Use option 1 Show all Records to check"
                        break
                    else
                        echo "Record Couldn't be edited."
                        exit 1
                    fi
                    ;;
                [Nn]*) break;;
            esac
    done
}
edit_record