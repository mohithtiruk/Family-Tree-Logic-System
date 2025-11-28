# Family-Tree-Logic-System

This project is a simple, knowledge-based system implemented in Prolog that models a family structure. It defines facts about individuals and their parent-child relationships, and uses logical rules to infer more complex familial relationships across generations, such as grandfather, aunt, brother, and ancestor.

The system provides a clear demonstration of using Prolog's declarative nature and recursion to manage relational data.

# Features

The system supports the inference of the following relational rules:

Rule Predicate                                  Description

male(X) / female(X)              Basic facts defining the gender of individuals.

parent_of(X, Y)                  Basic facts defining that X is a parent of Y.

father_of(X, Y)                  X is the father of Y (requires male(X) and parent_of(X, Y)).

mother_of(X, Y)                  X is the mother of Y (requires female(X) and parent_of(X, Y)).

grandfather_of(X, Y)             X is a male grandparent of Y.

grandmother_of(X, Y)             X is a female grandparent of Y.

sister_of(X, Y)                  X is the sister of Y (share parents, X is female, X and Y are                                    different).

brother_of(X, Y)                 X is the brother of Y (share parents, X is male, X and Y are                                     different).

aunt_of(X, Y)                    X is a female sibling of Y's parent.

uncle_of(X, Y)                   X is a male sibling of Y's parent.

ancestor_of(X, Y)                X is an ancestor of Y (recursive definition covering all prior                                   generations).
# Technologies/Tools Used

Prolog: The primary programming language used to define the facts and logical rules.

SWI-Prolog: The recommended environment/interpreter for running and testing the .pl file.

# Steps to Install & Run the Project

Prerequisites

You must have a Prolog interpreter installed. SWI-Prolog is the most common and recommended choice.

Install SWI-Prolog: Download and install the appropriate version for your operating system from the SWI-Prolog official website.

Running the Code

Save the Code: Save the provided Prolog code (including all Facts and Rules) into a file named family_tree.pl.

Open the Interpreter: Open the SWI-Prolog console/application.

Consult the File: Load the code into the interpreter using the consult command. Note that you may need to specify the full path if the file is not in the current working directory.

?- consult('family_tree.pl').
% The system will output a message confirming the file was loaded.


Execute Queries: Once the file is consulted, you can execute any of the defined rules as queries.

# Instructions for Testing

To test the system, enter a query followed by a period (.) and press Enter. If multiple answers exist, press semicolon (;) to request the next solution.

# Example Queries

Goal                                Query                            Expected Result

Find Mohith's Children         parent_of(mohith, X).         X = riya ; X = nandini ; false.

Find Rohith's Grandmothers     grandmother_of(X, rohith).    X = herini ; false.

Check if Aman has an Uncle     uncle_of(X, aman).            X = harshith ; X = ali ; false.

Find all Ancestors of Aman     ancestor_of(X, aman).         X = nandini ; X = charan ; X =                                                                   mohith ; X = herini ; X = harshith                                                               ; X = adithi ; false.

Verify Riya's Sibling          brother_of(X, riya).          X = nandini ; false.
