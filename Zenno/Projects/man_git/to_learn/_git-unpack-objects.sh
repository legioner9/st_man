#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-unpack-objects - Unpack objects from a packed archive 
 
 
 
 
 SYNOPSIS 
 
 
 git unpack-objects  [-n] [-q] [-r] [--strict] 
 
 
 
 
 DESCRIPTION 
 
 
 Read a packed archive (.pack) from the standard input, expanding
the objects contained within and writing them into the repository in
"loose" (one object per file) format. 
 
 
 Objects that already exist in the repository will  not  be unpacked
from the packfile.  Therefore, nothing will be unpacked if you use
this command on a packfile that exists within the target repository. 
 
 
 See  git-repack[1]  for options to generate
new packs and replace existing ones. 
 
 
 
 
 OPTIONS 
 
 
 
   -n  
 
        Dry run.  Check the pack file without actually unpacking
the objects. 
 
   -q  
 
 The command usually shows percentage progress.  This
flag suppresses it. 
 
   -r  
 
 When unpacking a corrupt packfile, the command dies at
the first corruption.  This flag tells it to keep going
and make the best effort to recover as many objects as
possible. 
 
   --strict  
 
 Don’t write objects with broken content or links. 
 
   --max-input-size=<size>  
 
 Die, if the pack is larger than <size>. 
 
 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename