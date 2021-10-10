#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-mailsplit - Simple UNIX mbox splitter program 
 
 
 
 
 SYNOPSIS 
 
 
 git mailsplit  [-b] [-f<nn>] [-d<prec>] [--keep-cr] [--mboxrd]
		-o<directory> [--] [(<mbox>|<Maildir>)…​] 
 
 
 
 
 DESCRIPTION 
 
 
 Splits a mbox file or a Maildir into a list of files: "0001" "0002" ..  in the
specified directory so you can process them further from there. 
 
 
 
 
 
 Important 
 
 
Maildir splitting relies upon filenames being sorted to output
patches in the correct order.
 
 
 
 
 
 
 
 OPTIONS 
 
 
 
   <mbox>  
 
 Mbox file to split.  If not given, the mbox is read from
the standard input. 
 
   <Maildir>  
 
 Root of the Maildir to split. This directory should contain the cur, tmp
and new subdirectories. 
 
   -o<directory>  
 
 Directory in which to place the individual messages. 
 
   -b  
 
 If any file doesn’t begin with a From line, assume it is a
single mail message instead of signaling error. 
 
   -d<prec>  
 
 Instead of the default 4 digits with leading zeros,
different precision can be specified for the generated
filenames. 
 
   -f<nn>  
 
 Skip the first <nn> numbers, for example if -f3 is specified,
start the numbering with 0004. 
 
   --keep-cr  
 
 Do not remove  \r  from lines ending with  \r\n . 
 
   --mboxrd  
 
 Input is of the "mboxrd" format and "^>+From " line escaping is
reversed. 
 
 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename