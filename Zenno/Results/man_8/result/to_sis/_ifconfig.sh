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
 
 
 
 ifconfig (8)   ifconfig  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   ifconfig  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   ifconfig  (8)   ( FreeBSD man: Команды системного администрирования ) >>  ifconfig  (8)   ( Русские man: Команды системного администрирования )   ifconfig  (8)   ( Linux man: Команды системного администрирования ) 
 
 
   
 

 

 ifconfig  -   
 
   
 
 

ifconfig [ ]
ifconfig   [ _ ]   |   ...
 
 

   
 

 

   ifconfig       .
          .
           
 
 

    ,  ifconfig     
  .      , 
      ;    
 -a ,      ,  .
      .
 
  
 

          ,
           .
        inet  (TCP/IP, 
  ),  inet6  (IPv6),  ax25  (AMPR Packet Radio), 
 ddp  (Appletalk Phase 2),  ipx  (Novell IPX)   netrom  (AMPR Packet radio).
 
   
 

 
 
 
  .    ,     , ,
 eth0     Ethernet.
 
 up 
      .     
  .
 
 down 
         .
 
 [-]arp 
      ARP   .
 
 [-]promisc 
      (promiscuous mode) 
 .          
 .
 
 [-]allmulti 
      all-multicast .     
(multicast)        .
 
 metric N 
      .
 
 mtu N 
       (Maximum Transfer Unit - MTU)
   .
 
 dstaddr  
           IP-    (,   PPP). 
      ;    
   pointopoint .
 
 netmask  
    IP    .   
     A, B  C (   IP- ),
     .
 
 add /_ 
   IPv6   .
 
 del /_ 
   IPv6   .
 
 tunnel aa.bb.cc.dd 
    SIT (IPv6--IPv4) -    .
 
 irq  
   ,   .
         IRQ.
 
 io_addr  
     -   .
 
 mem_start  
      , 
  .      .
 
 media  
      ,  .
        ,     
   .    -  10base2  (
  Ethernet),  10baseT  (  Ethernet 10 /),  AUI 
( )  ..     auto  
,        .
      .
 
 [-]broadcast [] 
     ,   
    .   , 
( )   IFF_BROADCAST   .
 
 [-]pointopoint [] 
      (point-to-point)  ,
,       
,    .      ,
       ,
       dstaddr .   ,
      IFF_POINTOPOINT    .
 
 hw   
      ,
      .   
 hw      ,    
   .      
 ether  (Ethernet),  ax25  (AMPR AX.25),  ARCnet 
   netrom  (AMPR NET/ROM).
 
 multicast 
       . 
    ,     
  .
 
 
IP-,   .
 
 txqueuelen  
      .
         
    ( , ISDN),  
         
  , ,  telnet .
 
 
 
 
   
 

 

  ,    2.2,     -
   .  ,    ,
         .   
   ,          
   ipchains (8) .
 
 

         Ethernet, 
   EAGAIN .  .    http://cesdis.gsfc.nasa.gov/linux/misc/irq-conflict.html .
 
   
 
 

 /proc/net/socket 
 /proc/net/dev 
 /proc/net/if_inet6 
 
 
 

   
 

 

   appletalk DDP  IPX  ,     .
 
   
 

 
 
 route (8) ,
 netstat (8) ,
 arp (8) , 
 rarp (8) , 
 ipchains (8) 
 
 
 
   
 

    (Fred N. van Kempen), < waltje@uwalt.nl.mugnet.org >
   (Alan Cox), < Alan.Cox@linux.org >
   (Phil Blundell), < Philip.Blundell@pobox.com >
   (Andi Kleen)
 
14  2000 
 
   
 

Copyleft (no c) 2003 .  < valera@openxs.kiev.ua >,  http://ln.com.ua/~openxs 
 

 
   Index 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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