#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-prune-packed - Remove extra objects that are already in pack files 
 
 
 
 
 SYNOPSIS 
 
 
 git prune-packed  [-n|--dry-run] [-q|--quiet] 
 
 
 
 
 DESCRIPTION 
 
 
 This program searches the  $GIT_OBJECT_DIRECTORY  for all objects that currently
exist in a pack file as well as the independent object directories. 
 
 
 All such extra objects are removed. 
 
 
 A pack is a collection of objects, individually compressed, with delta
compression applied, stored in a single file, with an associated index file. 
 
 
 Packs are used to reduce the load on mirror systems, backup engines,
disk storage, etc. 
 
 
 
 
 OPTIONS 
 
 
 
   -n  
   --dry-run  
 
 Don’t actually remove any objects, only show those that would have been
removed. 
 
   -q  
   --quiet  
 
 Squelch the progress indicator. 
 
 
 
 
 
 
 SEE ALSO 
 
 
 git-pack-objects[1] 
 git-repack[1] 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename