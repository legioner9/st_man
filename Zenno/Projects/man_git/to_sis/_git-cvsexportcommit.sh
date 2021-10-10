#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-cvsexportcommit - Export a single commit to a CVS checkout 
 
 
 
 
 SYNOPSIS 
 
 
 git cvsexportcommit  [-h] [-u] [-v] [-c] [-P] [-p] [-a] [-d cvsroot]
	[-w cvsworkdir] [-W] [-f] [-m msgprefix] [PARENTCOMMIT] COMMITID 
 
 
 
 
 DESCRIPTION 
 
 
 Exports a commit from Git to a CVS checkout, making it easier
to merge patches from a Git repository into a CVS repository. 
 
 
 Specify the name of a CVS checkout using the -w switch or execute it
from the root of the CVS working copy. In the latter case GIT_DIR must
be defined. See examples below. 
 
 
 It does its best to do the safe thing, it will check that the files are
unchanged and up to date in the CVS checkout, and it will not autocommit
by default. 
 
 
 Supports file additions, removals, and commits that affect binary files. 
 
 
 If the commit is a merge commit, you must tell  git cvsexportcommit  what
parent the changeset should be done against. 
 
 
 
 
 OPTIONS 
 
 
 
   -c  
 
 Commit automatically if the patch applied cleanly. It will not
commit if any hunks fail to apply or there were other problems. 
 
   -p  
 
 Be pedantic (paranoid) when applying patches. Invokes patch with
--fuzz=0 
 
   -a  
 
 Add authorship information. Adds Author line, and Committer (if
different from Author) to the message. 
 
   -d  
 
 Set an alternative CVSROOT to use.  This corresponds to the CVS
-d parameter.  Usually users will not want to set this, except
if using CVS in an asymmetric fashion. 
 
   -f  
 
 Force the merge even if the files are not up to date. 
 
   -P  
 
 Force the parent commit, even if it is not a direct parent. 
 
   -m  
 
 Prepend the commit message with the provided prefix.
Useful for patch series and the like. 
 
   -u  
 
 Update affected files from CVS repository before attempting export. 
 
   -k  
 
 Reverse CVS keyword expansion (e.g. $Revision: 1.2.3.4$
becomes $Revision$) in working CVS checkout before applying patch. 
 
   -w  
 
 Specify the location of the CVS checkout to use for the export. This
option does not require GIT_DIR to be set before execution if the
current directory is within a Git repository.  The default is the
value of  cvsexportcommit.cvsdir . 
 
   -W  
 
 Tell cvsexportcommit that the current working directory is not only
a Git checkout, but also the CVS checkout.  Therefore, Git will
reset the working directory to the parent commit before proceeding. 
 
   -v  
 
 Verbose. 
 
 
 
 
 
 
 CONFIGURATION 
 
 
 
   cvsexportcommit.cvsdir  
 
 The default location of the CVS checkout to use for the export. 
 
 
 
 
 
 
 EXAMPLES 
 
 
 
   Merge one patch into CVS  
 
 
 
 $ export GIT_DIR=~/project/.git
$ cd ~/project_cvs_checkout
$ git cvsexportcommit -v <commit-sha1>
$ cvs commit -F .msg <files> 
 
 
 
   Merge one patch into CVS (-c and -w options). The working directory is within the Git Repo  
 
 
 
 	$ git cvsexportcommit -v -c -w ~/project_cvs_checkout <commit-sha1> 
 
 
 
   Merge pending patches into CVS automatically — only if you really know what you are doing  
 
 
 
 $ export GIT_DIR=~/project/.git
$ cd ~/project_cvs_checkout
$ git cherry cvshead myhead | sed -n 's/^+ //p' | xargs -l1 git cvsexportcommit -c -p -v 
 
 
 
 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename