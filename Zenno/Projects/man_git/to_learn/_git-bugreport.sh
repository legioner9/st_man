#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-bugreport - Collect information for user to file a bug report 
 
 
 
 
 SYNOPSIS 
 
 
 git bugreport  [(-o | --output-directory) <path>] [(-s | --suffix) <format>] 
 
 
 
 
 DESCRIPTION 
 
 
 Captures information about the user’s machine, Git client, and repository state,
as well as a form requesting information about the behavior the user observed,
into a single text file which the user can then share, for example to the Git
mailing list, in order to report an observed bug. 
 
 
 The following information is requested from the user: 
 
 
 
 
 Reproduction steps 
 
 
 Expected behavior 
 
 
 Actual behavior 
 
 
 
 
 The following information is captured automatically: 
 
 
 
 
 git version --build-options 
 
 
 uname sysname, release, version, and machine strings 
 
 
 Compiler-specific info string 
 
 
 A list of enabled hooks 
 
 
 $SHELL 
 
 
 
 
 This tool is invoked via the typical Git setup process, which means that in some
cases, it might not be able to launch - for example, if a relevant config file
is unreadable. In this kind of scenario, it may be helpful to manually gather
the kind of information listed above when manually asking for help. 
 
 
 
 
 OPTIONS 
 
 
 
   -o <path>  
   --output-directory <path>  
 
 Place the resulting bug report file in  <path>  instead of the root of
the Git repository. 
 
   -s <format>  
   --suffix <format>  
 
 Specify an alternate suffix for the bugreport name, to create a file
named  git-bugreport-<formatted suffix> . This should take the form of a
strftime(3) format string; the current local time will be used. 
 
 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename