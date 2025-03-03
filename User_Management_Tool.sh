#!/bin/bash

PS3=" Enter a number=>"

while true; do
    clear
    echo "Hi!, Welcome to my System Administration tool"
    echo "What do you want to do?"

    select option in "Users" "Groups" "Exit"; do
        case $option in
            "Users")
                while true; do
                    echo "User Management Menu:"
                    select option1 in "Add a new user" "Delete an existing user" "Back to the main menu"; do
                        case $option1 in
                            "Add a new user")
                                read -p "Enter username: " username
                                sudo useradd "$username"
                                echo "User [$username] created successfully!"
                                sleep 2
                                break
                                ;;
                            "Delete an existing user")
                                read -p "Enter username: " username
                                sudo userdel "$username"
                                echo "User [$username] deleted successfully!"
                                sleep 2
                                break
                                ;;
                            "Back to the main menu")
                                break 3
                                ;;
                            *)
                                echo "Invalid selection, please try again."
                                sleep 2
                                ;;
                        esac
                    done
                done
                ;;
            "Groups")
                while true; do
                    echo "Group Management Menu:"
                    select option2 in "Add a new group" "Delete an existing group" "Back to the main menu"; do
                        case $option2 in
                            "Add a new group")
                                read -p "Enter group name: " groupname
                                sudo groupadd "$groupname"
                                echo "Group [$groupname] created successfully!"
                                sleep 2
                                break
                                ;;
                            "Delete an existing group")
                                read -p "Enter group name: " groupname
                                sudo groupdel "$groupname"
                                echo "Group [$groupname] deleted successfully!"
                                sleep 2
                                break
                                ;;
                            "Back to the main menu")
                                break 3
                                ;;
                            *)
                                echo "Invalid selection, please try again."
                                sleep 2
                                ;;
                        esac
                    done
                done
                ;;
            "Exit")
                echo "Thanks for using my tool!"
                exit 0
                ;;
            *)
                echo "Invalid selection, please enter 1, 2, or 3"
                sleep 2
                ;;
        esac
    done
done

