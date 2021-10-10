#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-unpack-file - Creates a temporary file with a blob’s contents 
 
 
 
 
 SYNOPSIS 
 
 
 git unpack-file  <blob> 
 
 
 
 
 DESCRIPTION 
 
 
 Creates a file holding the contents of the blob specified by sha1. It
returns the name of the temporary file in the following format:
	.merge_file_XXXXX 
 
 
 
 
 OPTIONS 
 
 
 
   <blob>  
 
 Must be a blob id 
 
 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename