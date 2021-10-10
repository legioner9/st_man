#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-write-tree - Create a tree object from the current index 
 
 
 
 
 SYNOPSIS 
 
 
 git write-tree  [--missing-ok] [--prefix=<prefix>/] 
 
 
 
 
 DESCRIPTION 
 
 
 Creates a tree object using the current index. The name of the new
tree object is printed to standard output. 
 
 
 The index must be in a fully merged state. 
 
 
 Conceptually,  git write-tree  sync()s the current index contents
into a set of tree files.
In order to have that match what is actually in your directory right
now, you need to have done a  git update-index  phase before you did the
 git write-tree . 
 
 
 
 
 OPTIONS 
 
 
 
   --missing-ok  
 
 Normally  git write-tree  ensures that the objects referenced by the
directory exist in the object database.  This option disables this
check. 
 
   --prefix=<prefix>/  
 
 Writes a tree object that represents a subdirectory
 <prefix> .  This can be used to write the tree object
for a subproject that is in the named subdirectory. 
 
 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename