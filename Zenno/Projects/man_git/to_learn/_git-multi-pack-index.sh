#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-multi-pack-index - Write and verify multi-pack-indexes 
 
 
 
 
 SYNOPSIS 
 
 
 git multi-pack-index  [--object-dir=<dir>] [--[no-]progress]
	[--preferred-pack=<pack>] <subcommand> 
 
 
 
 
 DESCRIPTION 
 
 
 Write or verify a multi-pack-index (MIDX) file. 
 
 
 
 
 OPTIONS 
 
 
 
   --object-dir=<dir>  
 
 Use given directory for the location of Git objects. We check
 <dir>/packs/multi-pack-index  for the current MIDX file, and
 <dir>/packs  for the pack-files to index. 
 
   --[no-]progress  
 
 Turn progress on/off explicitly. If neither is specified, progress is
shown if standard error is connected to a terminal. 
 
 
 
 
 The following subcommands are available: 
 
 
 
   write  
 
 Write a new MIDX file. The following options are available for
the  write  sub-command: 
 
 
 
 
   --preferred-pack=<pack>  
 
 Optionally specify the tie-breaking pack used when
multiple packs contain the same object. If not given,
ties are broken in favor of the pack with the lowest
mtime. 
 
 
 
 
 
 
   verify  
 
 Verify the contents of the MIDX file. 
 
   expire  
 
 Delete the pack-files that are tracked 	by the MIDX file, but
have no objects referenced by the MIDX. Rewrite the MIDX file
afterward to remove all references to these pack-files. 
 
   repack  
 
 Create a new pack-file containing objects in small pack-files
referenced by the multi-pack-index. If the size given by the
 --batch-size=<size>  argument is zero, then create a pack
containing all objects referenced by the multi-pack-index. For
a non-zero batch size, Select the pack-files by examining packs
from oldest-to-newest, computing the "expected size" by counting
the number of objects in the pack referenced by the
multi-pack-index, then divide by the total number of objects in
the pack and multiply by the pack size. We select packs with
expected size below the batch size until the set of packs have
total expected size at least the batch size, or all pack-files
are considered. If only one pack-file is selected, then do
nothing. If a new pack-file is created, rewrite the
multi-pack-index to reference the new pack-file. A later run of
 git multi-pack-index expire  will delete the pack-files that
were part of this batch. 
 
 If  repack.packKeptObjects  is  false , then any pack-files with an
associated  .keep  file will not be selected for the batch to repack. 
 
 
 
 
 
 
 
 EXAMPLES 
 
 
 
 
 Write a MIDX file for the packfiles in the current .git folder. 
 
 
 $ git multi-pack-index write 
 
 
 
 
 Write a MIDX file for the packfiles in an alternate object store. 
 
 
 $ git multi-pack-index --object-dir <alt> write 
 
 
 
 
 Verify the MIDX file for the packfiles in the current .git folder. 
 
 
 $ git multi-pack-index verify 
 
 
 
 
 
 
 
 
 SEE ALSO 
 
 
 See  The Multi-Pack-Index Design
Document  and  The Multi-Pack-Index
Format  for more information on the multi-pack-index feature. 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename