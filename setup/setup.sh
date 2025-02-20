#!/bin/bash

# Define the base directory
BASE_DIR="./"

# List of weeks and exercises
declare -A EXERCISES=(
    ["Week1_Basics"]="Exercise1_HelloWorld Exercise2_Variables Exercise3_UserInput"
    ["Week2_Operators_Conditionals"]="Exercise1_Calculator Exercise2_AgeChecker Exercise3_RockPaperScissors"
    ["Week3_Loops_Arrays"]="Exercise1_LoopNumbers Exercise2_MultiplicationTable Exercise3_FavoriteFoods"
    ["Week4_Methods_Functions"]="Exercise1_AdditionMethod Exercise2_EvenOddChecker Exercise3_GuessingGame"
    ["Week5_Classes_Objects"]="Exercise1_CarClass Exercise2_DogClass Exercise3_PetGame"
    ["Week6_Inheritance_Encapsulation"]="Exercise1_VehicleBase Exercise2_CatInheritance Exercise3_BankAccount"
    ["Week7_File_ExceptionHandling"]="Exercise1_SaveUserData Exercise2_ReadUserData Exercise3_ExceptionHandling"
    ["Week8_MiniProjects"]="ToDoListApp QuizGame StoreSystem"
)

# Create directories and empty Program.cs files
for week in "${!EXERCISES[@]}"; do
    for exercise in ${EXERCISES[$week]}; do
        # Create directory
        mkdir -p "$BASE_DIR/$week/$exercise"
        
        # Create Program.cs file with placeholder content
        cat > "$BASE_DIR/$week/$exercise/Program.cs" <<EOL
using System;

class Program
{
    static void Main()
    {
        // TODO: Implement the logic for $exercise
    }
}
EOL
    done
done

# Create additional project files
touch "$BASE_DIR/.gitignore"
touch "$BASE_DIR/README.md"
touch "$BASE_DIR/setup_instructions.md"

echo "Project structure created successfully!"

