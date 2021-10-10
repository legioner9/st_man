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
 
 
 
 vconfig (8) >>  vconfig  (8)   ( Русские man: Команды системного администрирования )   vconfig  (8)   ( Linux man: Команды системного администрирования ) 
{{header}}
{{translator-igorchubin}}
Оригинал: [ http://linux.die.net/man/8/vconfig   vconfig (8)]
 
Эта страница является переводом официальной man-страницы программы  vconfig , предназначенной для настройки 
VLAN (802.1Q) в Linux. 
   
 Имя 

 

vconfig - Программа настройки VLAN (802.1q) в Linux
 
   
  Синтаксис 

 

vconfig [ множество длинных опций ]
 
   
 Описание 

 

 
Программа  vconfig  позволяет создавать и удалять VLAN-устройства  vlan-devices  в системе с ядром, поддерживающим 
802.1Q VLAN'ы. Устройства  vlan-devices  это виртуальные Ethernet-устройства, представляющие отдельные VLAN'ы физической 
сети. 
   
 Опции 

 

 
 
 add [ interface-name ] [ vlan-id ]

 
 

     Создаёт устройство  vlan-device  на интерфейсе  interface-name . Созданное устройство будет названо в 
соответсвии с настройками именования. .TP
 rem [ vlan-device ]

 

     Удаляет заданый  vlan-device . 
 set_flag [ vlan-device ] 0 | 1

 
 

     Если установить равным 1, выполняется reorder заголовка Ethernet. При выполнении прослушивания трафика (tcpdump) на 
устройстве, он будет выглядеть как обычное ethernet-устройство без VLAN'ов. Если задан 0 (по умолчанию), при просмотре 
трафика видны теги.  Обычно никаких проблем не возникает и при настройках по умолчанию, но иногда бывает -- с программами 
фильтрации трафика. .TP
 set_egress_map [ vlan-device ] [ skb-priority ] [ vlan-qos ]

 

     Говорит, что исходящие пакеты с заданным  skb-priority  должны маркироваться тегом с заданным приоритетом  vlan-qos . 
  По умолчанию устанавливается приоритет 0. .TP
 set_ingress_map [ vlan-device ] [ skb-priority ] [ vlan-qos ]

 

     Говорит, что входящие пакеты маркированные тегом с приоритетом  vlan-qos' должны ставиться в очередь с приоритетом 
 skb-priority''. По умолчанию приоритет равен 0. .TP
 set_name_type VLAN_PLUS_VID | VLAN_PLUS_VID_NO_PAD | DEV_PLUS_VID | DEV_PLUS_VID_NO_PAD 

 

     Задаёт режим в котором будет создаваться  vlan-device . Для того чтобы посмотреть какие режимы поддерживаются, 
нужно вызвать  vconfig  без параметров. 
Обозначает:
 
 
   VLAN_PLUS_VID (vlan0005), VLAN_PLUS_VID_NO_PAD (vlan5), DEV_PLUS_VID (eth0.0005), DEV_PLUS_VID_NO_PAD (eth0.5) 

 

 

 
 
   
 Замечания 

 

 
Если сетевое устройство поддерживает интерфейс Broadcom NICE, он используется.
Это важно, поскольку такие устройства сами удаляют тег VLAN на Ethernet-пакетах.
В этом случае опция 
 
 set_flag
 

 

  игнорируется.
При просмотре дампа трафика, увидеть теги уже не получится.
 
   
  Файлы  

 

 
  
 
 /proc/net/vlan/config
 

 

 
 

  
 
 /proc/net/vlan/[vlan-device]
 

 

 
 

 
   
  См. также 

 

 ip (8),  ifconfig (8)
 
   
 Авторы  

 

 

   *  Это руководство написал Ард ван Бремен (Ard van Breemen) < ard@kwaak.net >
 

   *  Патч vlan написал Бен Греар  (Ben Greear) < greearb@candelatech.com >
 
   
  Перевод  

 

 
 

   *  Игорь Чубин <igor ar chub.in>
 

 
   Index 
 
 Имя 
  Синтаксис 
 Описание 
 Опции 
 Замечания 
  Файлы  
  См. также 
 Авторы  
  Перевод  
 
 
 
 
 
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