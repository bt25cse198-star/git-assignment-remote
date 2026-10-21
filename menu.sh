#!/bin/bash
while true
do
    echo "1. Greet"
    echo "2. Add two integers"
    echo "3. Check even or odd"
    echo "4. Exit"
    read -r -p "Enter choice: " choice

    case "$choice" in
        1)
            read -r -p "Enter name: " name
            echo "Hello, $name!"
            ;;
        2)
            read -r -p "Enter two integers: " a b
            if [[ "$a" =~ ^-?[0-9]+$ && "$b" =~ ^-?[0-9]+$ ]]; then
                echo "Sum: $((a + b))"
            else
                echo "Enter valid integers"
            fi
            ;;
        3)
            read -r -p "Enter an integer: " n
            if [[ "$n" =~ ^-?[0-9]+$ ]]; then
                if (( n % 2 == 0 )); then
                    echo "Even"
                else
                    echo "Odd"
                fi
            else
                echo "Enter a valid integer"
            fi
            ;;
        4)
            echo "Exiting"
            break
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
done
