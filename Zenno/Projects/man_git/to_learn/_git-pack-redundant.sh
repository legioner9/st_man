#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-pack-redundant - Find redundant pack files 
 
 
 
 
 SYNOPSIS 
 
 
 git pack-redundant  [ --verbose ] [ --alt-odb ] < --all | .pack filename …​ > 
 
 
 
 
 DESCRIPTION 
 
 
 This program computes which packs in your repository
are redundant. The output is suitable for piping to
 xargs rm  if you are in the root of the repository. 
 
 
 git pack-redundant  accepts a list of objects on standard input. Any objects
given will be ignored when checking which packs are required. This makes the
following command useful when wanting to remove packs which contain unreachable
objects. 
 
 
 git fsck --full --unreachable | cut -d ' ' -f3 | \
git pack-redundant --all | xargs rm 
 
 
 
 
 OPTIONS 
 
 
 
   --all  
 
 Processes all packs. Any filenames on the command line are ignored. 
 
   --alt-odb  
 
 Don’t require objects present in packs from alternate object
directories to be present in local packs. 
 
   --verbose  
 
 Outputs some statistics to stderr. Has a small performance penalty. 
 
 
 
 
 
 
 SEE ALSO 
 
 
 git-pack-objects[1] 
 git-repack[1] 
 git-prune-packed[1] 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename