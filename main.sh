#!/bin/bash
#Author:: KVS SIVA KUMAR
#DESCRIPTION:: Comakeit Employees Record
#DATEOFCREATION:: 09-12-2021

menu(){

    PS3='Please enter your choice: '
    options=("Show All Records" "ADD Record" "EDIT Record" "Delete Record" "Search Record" "Exit")
    select opt in "${options[@]}"
    do
        case $opt in
            "Show All Records")
                echo "Showing All Records"
                while true; do
                read -p "Are you Sure to Continue [Y/y::N/n]: " yn
                    case $yn in
                        [Yy]* ) cat /home/siva/bash-tasks/excersire3/Records.txt;;
                        [Nn]* ) break;;
                        * ) echo "Please answer yes or no.";;
                    esac
                done
                ;;
            "ADD Record")
                echo "Adding Record"
                `/home/siva/bash-tasks/excersire3/./add_record.sh`
                while true; do
                    read -p "Do you want to Add More records [Y/y::N/n]: " yn
                    case $yn in
                        [Yy]* ) /home/siva/bash-tasks/excersire3/./add_record.sh ;;
                        [Nn]* ) break;;
                    esac
                done
                ;;
            "EDIT Record")
                echo "Editing Record"
                while true; do
                    read -p "Do you want to edit more records [Y/y::N/n]: " yn
                    case $yn in
                        [Yy]* ) /home/siva/bash-tasks/excersire3/./edit_record.sh ;;
                        [Nn]* ) break;;
                    esac
                done
                ;;
            "Delete Record")
                echo "Deleting Record"
                while true; do
                    read -p "Do you want to edit more records [Y/y::N/n]: " yn
                    case $yn in
                        [Yy]* ) /home/siva/bash-tasks/excersire3/./delete_record.sh ;;
                        [Nn]* ) break;;
                    esac
                done
                ;;
            "Search Record")
                echo "Searching for Record"
                while true; do
                    read -p "Do you want to edit more records [Y/y::N/n]: " yn
                    case $yn in
                        [Yy]* ) /home/siva/bash-tasks/excersire3/./search_record.sh ;;
                        [Nn]* ) break;;
                    esac
                done
                ,,
            "Exit")
                echo "Exiting !"
                break;;
            *) echo "invalid option $opt";;
        esac
    done
}
menu
