#!/bin/bash
#Author:: KVS SIVA KUMAR
#DESCRIPTION:: Comakeit Employees Record
#DATEOFCREATION:: 09-12-2021

menu(){

    PS3='Please enter your menu choice: '
    options=("Show All Records" "ADD Record" "EDIT Record" "Delete Record" "Search Record" "Exit" )
    select opt in "${options[@]}"
    do
        case $opt in
            "Show All Records")
                echo "Showing All Records"
                # while true; do
                read -p "Are you Sure to Continue [Y/y::N/n]: " yn
                    case $yn in
                        [Yy]* ) echo 
                                cat Records.txt
                                echo
                                ;;
                        [Nn]* ) break;;
                        * ) echo "Please answer yes or no.";;
                    esac
                # done
                ;;
            "ADD Record")
                echo "Adding Record"
                ./add_record.sh
                while true; do
                    read -p "Do you want to Add More records [Y/y::N/n]: " yn
                    case $yn in
                        [Yy]* ) ./add_record.sh ;;
                        [Nn]* ) break;;
                    esac
                done
                ;;
            "EDIT Record")
                echo "Editing Record"
                ./edit_record.sh
                while true; do
                    read -p "Do you want to edit more records [Y/y::N/n]: " yn
                    case $yn in
                        [Yy]* ) ./edit_record.sh ;;
                        [Nn]* ) break;;
                    esac
                done
                ;;
            "Delete Record")
                echo "Deleting Record"
                ./delete_record.sh
                while true; do
                    read -p "Do you want to delete more records [Y/y::N/n]: " yn
                    case $yn in
                        [Yy]* ) ./delete_record.sh ;;
                        [Nn]* ) break;;
                    esac
                done
                ;;
            "Search Record")
                echo "Searching for Record"
                ./search_record.sh
                while true; do
                    read -p "Do you want to Search for more records [Y/y::N/n]: " yn
                    case $yn in
                        [Yy]* ) ./search_record.sh ;;
                        [Nn]* ) break;;
                    esac
                done
                ;;
            "Exit")
                echo "Exiting !"
                break;;
            *) echo "invalid option $opt";;
        esac
    done
}
menu
