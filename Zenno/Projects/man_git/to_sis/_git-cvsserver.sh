#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments

 NAME 
 
 
 git-cvsserver - A CVS server emulator for Git 
 
 
 
 
 SYNOPSIS 
 
 
 SSH: 
 
 
 export CVS_SERVER="git cvsserver"
 cvs  -d :ext:user@server/path/repo.git co <HEAD_name> 
 
 
 pserver (/etc/inetd.conf): 
 
 
 cvspserver stream tcp nowait nobody /usr/bin/git-cvsserver git-cvsserver pserver 
 
 
 Usage: 
 
 
 git-cvsserver  [<options>] [pserver|server] [<directory> …​] 
 
 
 
 
 DESCRIPTION 
 
 
 This application is a CVS emulation layer for Git. 
 
 
 It is highly functional. However, not all methods are implemented,
and for those methods that are implemented,
not all switches are implemented. 
 
 
 Testing has been done using both the CLI CVS client, and the Eclipse CVS
plugin. Most functionality works fine with both of these clients. 
 
 
 
 
 OPTIONS 
 
 
 All these options obviously only make sense if enforced by the server side.
They have been implemented to resemble the  git-daemon[1]  options as
closely as possible. 
 
 
 
   --base-path <path>  
 
 Prepend  path  to requested CVSROOT 
 
   --strict-paths  
 
 Don’t allow recursing into subdirectories 
 
   --export-all  
 
 Don’t check for  gitcvs.enabled  in config. You also have to specify a list
of allowed directories (see below) if you want to use this option. 
 
   -V  
   --version  
 
 Print version information and exit 
 
   -h  
   -H  
   --help  
 
 Print usage information and exit 
 
   <directory>  
 
 You can specify a list of allowed directories. If no directories
are given, all are allowed. This is an additional restriction, gitcvs
access still needs to be enabled by the  gitcvs.enabled  config option
unless  --export-all  was given, too. 
 
 
 
 
 
 
 LIMITATIONS 
 
 
 CVS clients cannot tag, branch or perform Git merges. 
 
 
 git-cvsserver  maps Git branches to CVS modules. This is very different
from what most CVS users would expect since in CVS modules usually represent
one or more directories. 
 
 
 
 
 INSTALLATION 
 
 
 
 
 If you are going to offer CVS access via pserver, add a line in
/etc/inetd.conf like 
 
 
 
 
    cvspserver stream tcp nowait nobody git-cvsserver pserver 
 
 
 
 Note: Some inetd servers let you specify the name of the executable
independently of the value of argv[0] (i.e. the name the program assumes
it was executed with). In this case the correct line in /etc/inetd.conf
looks like 
 
 
 
    cvspserver stream tcp nowait nobody /usr/bin/git-cvsserver git-cvsserver pserver 
 
 
 
 Only anonymous access is provided by pserve by default. To commit you
will have to create pserver accounts, simply add a gitcvs.authdb
setting in the config file of the repositories you want the cvsserver
to allow writes to, for example: 
 
 
 
    [gitcvs]
	authdb = /etc/cvsserver/passwd 
 
 
 
 The format of these files is username followed by the encrypted password,
for example: 
 
 
 
    myuser:$1Oyx5r9mdGZ2
   myuser:$1$BA)@$vbnMJMDym7tA32AamXrm./ 
 
 
 
 You can use the  htpasswd  facility that comes with Apache to make these
files, but Apache’s MD5 crypt method differs from the one used by most C
library’s crypt() function, so don’t use the -m option. 
 
 
 Alternatively you can produce the password with perl’s crypt() operator: 
 
 
 
    perl -e 'my ($user, $pass) = @ARGV; printf "%s:%s\n", $user, crypt($user, $pass)' $USER password 
 
 
 
 Then provide your password via the pserver method, for example: 
 
 
 
    cvs -d:pserver:someuser:somepassword <at> server/path/repo.git co <HEAD_name> 
 
 
 
 No special setup is needed for SSH access, other than having Git tools
in the PATH. If you have clients that do not accept the CVS_SERVER
environment variable, you can rename  git-cvsserver  to  cvs . 
 
 
 Note: Newer CVS versions (>= 1.12.11) also support specifying
CVS_SERVER directly in CVSROOT like 
 
 
 
 cvs -d ":ext;CVS_SERVER=git cvsserver:user@server/path/repo.git" co <HEAD_name> 
 
 
 
 This has the advantage that it will be saved in your  CVS/Root  files and
you don’t need to worry about always setting the correct environment
variable.  SSH users restricted to  git-shell  don’t need to override the default
with CVS_SERVER (and shouldn’t) as  git-shell  understands  cvs  to mean
 git-cvsserver  and pretends that the other end runs the real  cvs  better. 
 
 
 
 
 
 For each repo that you want accessible from CVS you need to edit config in
the repo and add the following section. 
 
 
 
 
    [gitcvs]
        enabled=1
        # optional for debugging
	logFile=/path/to/logfile 
 
 
 
 Note: you need to ensure each user that is going to invoke  git-cvsserver  has
write access to the log file and to the database (see
 Database Backend . If you want to offer write access over
SSH, the users of course also need write access to the Git repository itself. 
 
 
 You also need to ensure that each repository is "bare" (without a Git index
file) for  cvs commit  to work. See  gitcvs-migration[7] . 
 
 
 All configuration variables can also be overridden for a specific method of
access. Valid method names are "ext" (for SSH access) and "pserver". The
following example configuration would disable pserver access while still
allowing access over SSH. 
 
 
 
    [gitcvs]
        enabled=0

   [gitcvs "ext"]
        enabled=1 
 
 
 
 
 
 
 If you didn’t specify the CVSROOT/CVS_SERVER directly in the checkout command,
automatically saving it in your  CVS/Root  files, then you need to set them
explicitly in your environment.  CVSROOT should be set as per normal, but the
directory should point at the appropriate Git repo.  As above, for SSH clients
 not  restricted to  git-shell , CVS_SERVER should be set to  git-cvsserver . 
 
 
 
 
      export CVSROOT=:ext:user@server:/var/git/project.git
     export CVS_SERVER="git cvsserver" 
 
 
 
 
 
 
 For SSH clients that will make commits, make sure their server-side
.ssh/environment files (or .bashrc, etc., according to their specific shell)
export appropriate values for GIT_AUTHOR_NAME, GIT_AUTHOR_EMAIL,
GIT_COMMITTER_NAME, and GIT_COMMITTER_EMAIL.  For SSH clients whose login
shell is bash, .bashrc may be a reasonable alternative. 
 
 
 Clients should now be able to check out the project. Use the CVS  module 
name to indicate what Git  head  you want to check out.  This also sets the
name of your newly checked-out directory, unless you tell it otherwise with
 -d <dir_name> .  For example, this checks out  master  branch to the
 project-master  directory: 
 
 
      cvs co -d project-master master 
 
 
 
 
 
 
 
 
 DATABASE BACKEND 
 
 
 git-cvsserver  uses one database per Git head (i.e. CVS module) to
store information about the repository to maintain consistent
CVS revision numbers. The database needs to be
updated (i.e. written to) after every commit. 
 
 
 If the commit is done directly by using  git  (as opposed to
using  git-cvsserver ) the update will need to happen on the
next repository access by  git-cvsserver , independent of
access method and requested operation. 
 
 
 That means that even if you offer only read access (e.g. by using
the pserver method),  git-cvsserver  should have write access to
the database to work reliably (otherwise you need to make sure
that the database is up to date any time  git-cvsserver  is executed). 
 
 
 By default it uses SQLite databases in the Git directory, named
 gitcvs.<module_name>.sqlite . Note that the SQLite backend creates
temporary files in the same directory as the database file on
write so it might not be enough to grant the users using
 git-cvsserver  write access to the database file without granting
them write access to the directory, too. 
 
 
 The database cannot be reliably regenerated in a
consistent form after the branch it is tracking has changed.
Example: For merged branches,  git-cvsserver  only tracks
one branch of development, and after a  git merge  an
incrementally updated database may track a different branch
than a database regenerated from scratch, causing inconsistent
CVS revision numbers.  git-cvsserver  has no way of knowing which
branch it would have picked if it had been run incrementally
pre-merge. So if you have to fully or partially (from old
backup) regenerate the database, you should be suspicious
of pre-existing CVS sandboxes. 
 
 
 You can configure the database backend with the following
configuration variables: 
 
 
 Configuring database backend 
 
 git-cvsserver  uses the Perl DBI module. Please also read
its documentation if changing these variables, especially
about  DBI->connect() . 
 
 
 
   gitcvs.dbName  
 
 Database name. The exact meaning depends on the
selected database driver, for SQLite this is a filename.
Supports variable substitution (see below). May
not contain semicolons ( ; ).
Default:  %Ggitcvs.%m.sqlite 
 
   gitcvs.dbDriver  
 
 Used DBI driver. You can specify any available driver
for this here, but it might not work. cvsserver is tested
with  DBD::SQLite , reported to work with
 DBD::Pg , and reported  not  to work with  DBD::mysql .
Please regard this as an experimental feature. May not
contain colons ( : ).
Default:  SQLite 
 
   gitcvs.dbuser  
 
 Database user. Only useful if setting  dbDriver , since
SQLite has no concept of database users. Supports variable
substitution (see below). 
 
   gitcvs.dbPass  
 
 Database password.  Only useful if setting  dbDriver , since
SQLite has no concept of database passwords. 
 
   gitcvs.dbTableNamePrefix  
 
 Database table name prefix.  Supports variable substitution
(see below).  Any non-alphabetic characters will be replaced
with underscores. 
 
 
 
 
 All variables can also be set per access method, see  above . 
 
 
 Variable substitution 
 
 In  dbDriver  and  dbUser  you can use the following variables: 
 
 
 
   %G  
 
 Git directory name 
 
   %g  
 
 Git directory name, where all characters except for
alphanumeric ones,  . , and  -  are replaced with
 _  (this should make it easier to use the directory
name in a filename if wanted) 
 
   %m  
 
 CVS module/Git head name 
 
   %a  
 
 access method (one of "ext" or "pserver") 
 
   %u  
 
 Name of the user running  git-cvsserver .
If no name can be determined, the
numeric uid is used. 
 
 
 
 
 
 
 
 
 ENVIRONMENT 
 
 
 These variables obviate the need for command-line options in some
circumstances, allowing easier restricted usage through git-shell. 
 
 
 GIT_CVSSERVER_BASE_PATH takes the place of the argument to --base-path. 
 
 
 GIT_CVSSERVER_ROOT specifies a single-directory whitelist. The
repository must still be configured to allow access through
git-cvsserver, as described above. 
 
 
 When these environment variables are set, the corresponding
command-line arguments may not be used. 
 
 
 
 
 ECLIPSE CVS CLIENT NOTES 
 
 
 To get a checkout with the Eclipse CVS client: 
 
 
 
 
 Select "Create a new project → From CVS checkout" 
 
 
 Create a new location. See the notes below for details on how to choose the
right protocol. 
 
 
 Browse the  modules  available. It will give you a list of the heads in
the repository. You will not be able to browse the tree from there. Only
the heads. 
 
 
 Pick  HEAD  when it asks what branch/tag to check out. Untick the
"launch commit wizard" to avoid committing the .project file. 
 
 
 
 
 Protocol notes: If you are using anonymous access via pserver, just select that.
Those using SSH access should choose the  ext  protocol, and configure  ext 
access on the Preferences→Team→CVS→ExtConnection pane. Set CVS_SERVER to
" git cvsserver ". Note that password support is not good when using  ext ,
you will definitely want to have SSH keys setup. 
 
 
 Alternatively, you can just use the non-standard extssh protocol that Eclipse
offer. In that case CVS_SERVER is ignored, and you will have to replace
the cvs utility on the server with  git-cvsserver  or manipulate your  .bashrc 
so that calling  cvs  effectively calls  git-cvsserver . 
 
 
 
 
 CLIENTS KNOWN TO WORK 
 
 
 
 
 CVS 1.12.9 on Debian 
 
 
 CVS 1.11.17 on MacOSX (from Fink package) 
 
 
 Eclipse 3.0, 3.1.2 on MacOSX (see Eclipse CVS Client Notes) 
 
 
 TortoiseCVS 
 
 
 
 
 
 
 OPERATIONS SUPPORTED 
 
 
 All the operations required for normal use are supported, including
checkout, diff, status, update, log, add, remove, commit. 
 
 
 Most CVS command arguments that read CVS tags or revision numbers
(typically -r) work, and also support any git refspec
(tag, branch, commit ID, etc).
However, CVS revision numbers for non-default branches are not well
emulated, and cvs log does not show tags or branches at
all.  (Non-main-branch CVS revision numbers superficially resemble CVS
revision numbers, but they actually encode a git commit ID directly,
rather than represent the number of revisions since the branch point.) 
 
 
 Note that there are two ways to checkout a particular branch.
As described elsewhere on this page, the "module" parameter
of cvs checkout is interpreted as a branch name, and it becomes
the main branch.  It remains the main branch for a given sandbox
even if you temporarily make another branch sticky with
cvs update -r.  Alternatively, the -r argument can indicate
some other branch to actually checkout, even though the module
is still the "main" branch.  Tradeoffs (as currently
implemented): Each new "module" creates a new database on disk with
a history for the given module, and after the database is created,
operations against that main branch are fast.  Or alternatively,
-r doesn’t take any extra disk space, but may be significantly slower for
many operations, like cvs update. 
 
 
 If you want to refer to a git refspec that has characters that are
not allowed by CVS, you have two options.  First, it may just work
to supply the git refspec directly to the appropriate CVS -r argument;
some CVS clients don’t seem to do much sanity checking of the argument.
Second, if that fails, you can use a special character escape mechanism
that only uses characters that are valid in CVS tags.  A sequence
of 4 or 5 characters of the form (underscore ( "_" ), dash ( "-" ),
one or two characters, and dash ( "-" )) can encode various characters based
on the one or two letters:  "s"  for slash ( "/" ),  "p"  for
period ( "." ),  "u"  for underscore ( "_" ), or two hexadecimal digits
for any byte value at all (typically an ASCII number, or perhaps a part
of a UTF-8 encoded character). 
 
 
 Legacy monitoring operations are not supported (edit, watch and related).
Exports and tagging (tags and branches) are not supported at this stage. 
 
 
 CRLF Line Ending Conversions 
 
 By default the server leaves the  -k  mode blank for all files,
which causes the CVS client to treat them as a text files, subject
to end-of-line conversion on some platforms. 
 
 
 You can make the server use the end-of-line conversion attributes to
set the  -k  modes for files by setting the  gitcvs.usecrlfattr 
config variable.  See  gitattributes[5]  for more information
about end-of-line conversion. 
 
 
 Alternatively, if  gitcvs.usecrlfattr  config is not enabled
or the attributes do not allow automatic detection for a filename, then
the server uses the  gitcvs.allBinary  config for the default setting.
If  gitcvs.allBinary  is set, then file not otherwise
specified will default to  -kb  mode. Otherwise the  -k  mode
is left blank. But if  gitcvs.allBinary  is set to "guess", then
the correct  -k  mode will be guessed based on the contents of
the file. 
 
 
 For best consistency with  cvs , it is probably best to override the
defaults by setting  gitcvs.usecrlfattr  to true,
and  gitcvs.allBinary  to "guess". 
 
 
 
 
 
 DEPENDENCIES 
 
 
 git-cvsserver  depends on DBD::SQLite. 
 
 
 
 
 GIT 
 
 
 Part of the  git[1]  suite 
 
 
 
   

         
       
       
   
     About this site 
    Patches, suggestions, and comments are welcome.
   
   
    Git is a member of  Software Freedom Conservancy 
   
 

 

     





end_of_comments
#---------------------------------------

unset filename