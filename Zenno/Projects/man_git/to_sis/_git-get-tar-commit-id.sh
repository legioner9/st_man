#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-get-tar-commit-id - Extract commit ID from an archive created using git-archive 
 
 
 
 
 SYNOPSIS 
 
 
 git get-tar-commit-id 
 
 
 
 
 DESCRIPTION 
 
 
 Read a tar archive created by  git archive  from the standard input
and extract the commit ID stored in it.  It reads only the first
1024 bytes of input, thus its runtime is not influenced by the size
of the tar archive very much. 
 
 
 If no commit ID is found,  git get-tar-commit-id  quietly exists with a
return code of 1.  This can happen if the archive had not been created
using  git archive  or if the first parameter of  git archive  had been
a tree ID instead of a commit ID or tag. 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename