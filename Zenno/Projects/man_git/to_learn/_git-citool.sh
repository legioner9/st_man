#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-citool - Graphical alternative to git-commit 
 
 
 
 
 SYNOPSIS 
 
 
 git citool 
 
 
 
 
 DESCRIPTION 
 
 
 A Tcl/Tk based graphical interface to review modified files, stage
them into the index, enter a commit message and record the new
commit onto the current branch.  This interface is an alternative
to the less interactive  git commit  program. 
 
 
 git citool  is actually a standard alias for  git gui citool .
See  git-gui[1]  for more details. 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename