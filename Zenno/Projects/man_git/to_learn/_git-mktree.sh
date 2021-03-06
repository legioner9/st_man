#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-mktree - Build a tree-object from ls-tree formatted text 
 
 
 
 
 SYNOPSIS 
 
 
 git mktree  [-z] [--missing] [--batch] 
 
 
 
 
 DESCRIPTION 
 
 
 Reads standard input in non-recursive  ls-tree  output format, and creates
a tree object.  The order of the tree entries is normalized by mktree so
pre-sorting the input is not required.  The object name of the tree object
built is written to the standard output. 
 
 
 
 
 OPTIONS 
 
 
 
   -z  
 
 Read the NUL-terminated  ls-tree -z  output instead. 
 
   --missing  
 
 Allow missing objects.  The default behaviour (without this option)
is to verify that each tree entry’s sha1 identifies an existing
object.  This option has no effect on the treatment of gitlink entries
(aka "submodules") which are always allowed to be missing. 
 
   --batch  
 
 Allow building of more than one tree object before exiting.  Each
tree is separated by as single blank line. The final new-line is
optional.  Note - if the  -z  option is used, lines are terminated
with NUL. 
 
 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename