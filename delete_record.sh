#!/bin/bash
#Author:: KVS SIVA KUMAR
#DESCRIPTION:: Comakeit Employees Record
#DATEOFCREATION:: 09-12-2021

delete_record(){
    cat Records.txt | grep -e '[[:digit:]]:'
    read -p "Which record do you want to delete. Enter Id: " delete_id
    old_data=`cat Records.txt | grep $delete_id`
    echo "------------------------------------------------
        $old_data
    ------------------------------------------------"
    while true; do
        read -p "Are you sure to delete this particular record [Y/y::N/n]" yn
            case $yn in
                [Yy]*)
                    sed -i "/$old_data/d" Records.txt
                    if [ "$?" -eq 0 ]
                    then
                        echo "Record Deleted. Use option 1 to verify"
                        break
                    else
                        echo "Record Could not be deleted !"
                        exit 1
                    fi
                    ;;
                [Nn]*) break;;
            esac
    done
}
delete_record