#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-verify-tag - Check the GPG signature of tags 
 
 
 
 
 SYNOPSIS 
 
 
 git verify-tag  [--format=<format>] <tag>…​ 
 
 
 
 
 DESCRIPTION 
 
 
 Validates the gpg signature created by  git tag . 
 
 
 
 
 OPTIONS 
 
 
 
   --raw  
 
 Print the raw gpg status output to standard error instead of the normal
human-readable output. 
 
   -v  
   --verbose  
 
 Print the contents of the tag object before validating it. 
 
   <tag>…​  
 
 SHA-1 identifiers of Git tag objects. 
 
 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename