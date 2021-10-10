#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-check-mailmap - Show canonical names and email addresses of contacts 
 
 
 
 
 SYNOPSIS 
 
 
 git check-mailmap  [<options>] <contact>…​ 
 
 
 
 
 DESCRIPTION 
 
 
 For each “Name <user@host>” or “<user@host>” from the command-line
or standard input (when using  --stdin ), look up the person’s canonical name
and email address (see "Mapping Authors" below). If found, print them;
otherwise print the input as-is. 
 
 
 
 
 OPTIONS 
 
 
 
   --stdin  
 
 Read contacts, one per line, from the standard input after exhausting
contacts provided on the command-line. 
 
 
 
 
 
 
 OUTPUT 
 
 
 For each contact, a single line is output, terminated by a newline.  If the
name is provided or known to the  mailmap , “Name <user@host>” is
printed; otherwise only “<user@host>” is printed. 
 
 
 
 
 CONFIGURATION 
 
 
 See  mailmap.file  and  mailmap.blob  in  git-config[1]  for how
to specify a custom  .mailmap  target file or object. 
 
 
 
 
 MAPPING AUTHORS 
 
 
 See  gitmailmap[5] . 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename