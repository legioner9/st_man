#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-verify-pack - Validate packed Git archive files 
 
 
 
 
 SYNOPSIS 
 
 
 git verify-pack  [-v|--verbose] [-s|--stat-only] [--] <pack>.idx …​ 
 
 
 
 
 DESCRIPTION 
 
 
 Reads given idx file for packed Git archive created with the
 git pack-objects  command and verifies idx file and the
corresponding pack file. 
 
 
 
 
 OPTIONS 
 
 
 
   <pack>.idx …​  
 
 The idx files to verify. 
 
   -v  
   --verbose  
 
 After verifying the pack, show list of objects contained
in the pack and a histogram of delta chain length. 
 
   -s  
   --stat-only  
 
 Do not verify the pack contents; only show the histogram of delta
chain length.  With  --verbose , list of objects is also shown. 
 
   --  
 
 Do not interpret any more arguments as options. 
 
 
 
 
 
 
 OUTPUT FORMAT 
 
 
 When specifying the -v option the format used is: 
 
 
 
 SHA-1 type size size-in-packfile offset-in-packfile 
 
 
 
 for objects that are not deltified in the pack, and 
 
 
 
 SHA-1 type size size-in-packfile offset-in-packfile depth base-SHA-1 
 
 
 
 for objects that are deltified. 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename