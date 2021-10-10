#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-verify-commit - Check the GPG signature of commits 
 
 
 
 
 SYNOPSIS 
 
 
 git verify-commit  <commit>…​ 
 
 
 
 
 DESCRIPTION 
 
 
 Validates the GPG signature created by  git commit -S . 
 
 
 
 
 OPTIONS 
 
 
 
   --raw  
 
 Print the raw gpg status output to standard error instead of the normal
human-readable output. 
 
   -v  
   --verbose  
 
 Print the contents of the commit object before validating it. 
 
   <commit>…​  
 
 SHA-1 identifiers of Git commit objects. 
 
 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename