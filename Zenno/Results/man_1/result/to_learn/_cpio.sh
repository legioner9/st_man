#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments


 
 
 
 
 
Профиль:  Аноним  ( вход  |  регистрация ) 

 
 
 
 
 
 

 
 
 
 
  НОВОСТИ  ( + )
 
   КОНТЕНТ 
 
   WIKI 
 
    MAN'ы 
 
    ФОРУМ 
 
 Поиск  ( теги )
 
 
 

 

           
 
 

 
 
 
 
 
 
 
 [  новости  / +++  |  форум  |  wiki  |  теги 
|  
] 
 
 
 
 


 
 
 
 
 
 
 
 
 
 

 Интерактивная система просмотра системных руководств (man-ов) 
  
 
 
 

 
   Тема Набор Категория   
 

  
 Solaris man
 FreeBSD man
 Разные man
 Русские man
 Linux man
 POSIX man
 
 
	   All
	   1
	   2
	   3
	   4
	   5
	   6
	   7
	   8
	   9
 

 
 
  [ Cписок руководств  |  Печать ] 
 
 
 
 cpio (1)   cpio  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   cpio  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  cpio  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   cpio  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   cpio  (5)   ( FreeBSD man: Форматы файлов )   cpio  (8)   ( Русские man: Команды системного администрирования ) 

   
 

 

 cpio  -       

   
 


 
 
      cpio -i [ bBcdfkmPrsStuvV6 ] [ -C  _  ] [ -E   ]
      &nbsp;&nbsp;&nbsp;[ -H   ] [ -I   
      [ -M   ]  ] [ -R  id  ] [   ... ]

 
      cpio -o [ aABcLPvV ] [ -C  _  ] [ -H   ] [ -O   [ -M   ] ]

 
      cpio -p [ adlLmPuvV ] [ -R  id  ]  



 
   
 


 

   cpio         cpio .
   cpio    .  
 -i ,  -o    -p  
   .  () 
  .

&nbsp;&nbsp;&nbsp;     

 

 cpio -i  ( copy in )      
,    
 cpio -o .     ,   .  
     .    
 sh (1)      .
         
         .
       ,      
    cpio -o .   -
     ,    
   root .       ,  
      cpio -o . 
,     cpio -i    , 
   ,         ,
  cpio        . 
(       
   -u .)

&nbsp;&nbsp;&nbsp;     

 

 cpio -o  (copy out)       
            
    .      
8192-     (    -B    -C ) 
  , ,  ,     
  (     CTC).

&nbsp;&nbsp;&nbsp;   

 

 cpio -p  (pass)    ,   , 
      ,     
   .

 

 :    cpio   
   .

 

        ( -o )  
       ( -i )   cpio  
    (,  ),    
 -O    -I ,  cpio    :

 
 
      To continue, type device/file name when ready.
          /.


 
 

          
   (,  /dev/rdiskette )   
Enter.       cpio   .
,    ,     
   ,   ,    . (
    Enter,   cpio   .)

   
 


 

   :


 
 -i 
(copy in)  cpio -i       .
 -o 
(copy out)  cpio -o        
         .
 -p 
(pass)  cpio -p         



 
 

         
 -o ,  -i    -p :


 
 -a 
         .
         
   cpio -pla  (   
 -m ).

 -A 
    .   -A    
   -O .      ,    
   .

 -b 
       (   
   -i .)

 -B 
  /   -  5120
 
-C , 
    - 8192 .   -B    
     ;  -B        
   , ,
 /dev/rmt/0m .

 -c 
        ASCII-
  .     
     UID  GID.   
     SVR4-;    
        -H odc .  
   -c      , 
     SVR4-.    
  SunOS 4  Interactive UNIX   Solaris 2.6   
       -H odc .

 -C _ 
  /      ( 
   ).   ,  
       -B , - 8192 .   -C   
         ,
,  /dev/rmt/0m .

 -d 
    .

 -E  
    ,    ,   
   (    ).

 -f 
   ,    . (
  .    .)

 -H  
        .
        -c ,      -
   (,   -c    -6 ).   
  :


 bar 
     bar .     
 -i  (  ).

 crc|CRC 
  ASCII      
    .      
    UID  GID.

 odc 
  ASCII    . 
      cpio   
 IEEE/P1003  Data  Interchange Standard .  
  -      . 
         ,
   POSIX 
(.  standards (5) ). 
        SunOS 4  Interactive 
UNIX.        
  UID  GID     262143.

 tar|TAR 
     tar .      
   UID  GID     2097151.

 ustar|USTAR 
     tar ,    IEEE/P1003 Data 
Interchange Standard .      
   UID  GID     2097151.

 
 


    UID  GID,    ,
      UID  GID 60001.    
(8  - 1 )     
 tar/TAR ,  ustar/USTAR    odc .


 
 -I  
       .    
       , 
     Enter    .
         -i .

 -k 
       
   /.    
    ,    
    . (   cpio  
     cpio ,     cpio    
 
cpio     ,   
    ,  ,   
  .)        -i .

 -l 
    ,    . 
(     -p .)

 -L 
    .       
  .

 -m 
     .    
    (    
 -a  - ). 

 -M  
   ,    .   
      -O    -I ,    
,     .   
       %d ,   
   .

 -O  
     cpio    .     
       ,
      Enter    
  .      -o .

 -P 
       (ACL).    
   ,   ACL 
         .  
ACL      . 
     ,     ACL
         . 
      . ,  
         ACL  
 cpio   .        
   -c ,   ACL     ,  
  .      ASCII.

 -r 
   .     Enter,
  .     ( . ),  
  . (     cpio -p .)

 -R id  
    id  (   )    
   ( id          
   /etc/passwd ).        root .

 -s 
     .

 -S 
  c   .

 -t 
    .    
   (      -V ).

 -u 
   (          
).

 -v 
   .     .  
     -t  ,      
   ls -l  (.  ls (1) .)

 -V 
     .  
      . 
   ,    cpio  ,  
     .

 -6 
     UNIX System Sixth Edition.  
     -i  (     
 -c    -H ).


 
   
 


 

   :


 
         cpio -p .

 
 
        ,  
      (  
   .    sh (1) ),    


 * 
   ,   , .
 ? 
    .
 [...] 
        .
  ,   ( - ),    
   (  ),   
  .      ( [ )   
  ( ! ),   .

 ! 

    abc .)

 
 


      ? ,  *    [...]     
  ( / ),      ( \fR)  . 
     ,      , 
   *  (..   ).
 


       ,   ,
        .


   
 


 

    cpio  ,   
2  (2**31 ) .     
 largefile (5) .

   
 


 

         cpio .

  1:    

 

         
    cpio -o ,    ,     
  (>)    ( ../_ ).   -c  
,        (  
 -H ).   ls (1)    
 find (1) ,  echo (1) , 
 cat (1)    
,         
   cpio .     ,     .

example% ls | cpio -oc >  ../_ 

  2:    

 

 cpio -i      cpio -o  (  
     cat    ),    ,
   ( memo/a1 ,  memo/b* ),    
     (  -d ),
      .   -c 
,       . 
    ,        
 newfile .

example% cat newfile | cpio -icd " memo/a1 " " memo/b* "

  3:       

 

 cpio -p        
        
(  -l )    ( newdir    ). 
   -d      . 
   -m      . 
(        cpio    
   find (1)    
   -depth .    
     ,    .) 
  ,  newdir ,  .

example% find . -depth -print | cpio -pdlmv  newdir 

 

,      cpio     find , 
    -L     cpio ,   
 -follow    find ,  .     


 

         
   ,
        ,   
  (     ).   
     Enter  cpio  .

   
 


 

    ,     cpio ,

 environ (5) :
 LC_COLLATE ,  LC_CTYPE ,  LC_MESSAGES  
 LC_TIME ,  TZ    NLSPATH .

   
 


 

       :


0  .
 
 >0  . 


 
   
 


 

    .    
 attributes (5) :


 
   
  
    
SUNWcsu
 CSI 



 
   
 .  

         
 ar (1) ,  cat (1)   echo (1) ,  find (1) ,  ls (1) ,  setfacl (1) ,  sh (1) ,  tar (1) ,  vold (1M) ,  archives (4) ,  attributes (5) ,  environ (5) ,  largefile (5) ,  standards (5) 


   
 


 


       256   
()      -H odc .   
      1024 .
 


  ,   UID  GID   , 
    ,    .
   ,    UID  GID,  
   -H crc    -c .
 


    root     .
 


         512 .
 


      000,      
  ,   root ,      .
 


      (inode),   ,
( /usr/include/archives.h ) -  2-    . 
  ,      
0  65535.         
  .       
   cpio     .
 


        (Volume Management daemon),
        (,  /dev/rdiskette )
   .    .   
   vold (1M) .
 


          
       ,      .
      -B .

   
 


Copyleft (no c) 2003 .  < valera@openxs.kiev.ua >,  http://ln.com.ua/~openxs 
 

 
   Index 
 
 
 
 
 
 
 
 
 
 
 
 .  
 
 
 
 
 
 
 
 Поиск по тексту MAN-ов:  
 
 
 
 
 
 
 
 
 
 
 


 
 


 
 
 
 
 
Спонсоры:
 
 
 
 
 
 
 
 
Хостинг:
 

 

 


 
 
 
 Закладки на сайте 
 Проследить за страницей 
 
 
Created 1996-2021 by  Maxim Chirkov 
 Добавить ,  Поддержать ,  Вебмастеру 
 
 
 
 


 
 
 






end_of_comments
#---------------------------------------

unset filename