#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-merge-tree - Show three-way merge without touching index 
 
 
 
 
 SYNOPSIS 
 
 
 git merge-tree  <base-tree> <branch1> <branch2> 
 
 
 
 
 DESCRIPTION 
 
 
 Reads three tree-ish, and output trivial merge results and
conflicting stages to the standard output.  This is similar to
what three-way  git read-tree -m  does, but instead of storing the
results in the index, the command outputs the entries to the
standard output. 
 
 
 This is meant to be used by higher level scripts to compute
merge results outside of the index, and stuff the results back into the
index.  For this reason, the output from the command omits
entries that match the <branch1> tree. 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename