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
 
 
 
 arpwatch (8) >>  arpwatch  (8)   ( Русские man: Команды системного администрирования )   arpwatch  (8)   ( Linux man: Команды системного администрирования ) 
 
 
Эта страница является переводом официальной man-страницы программы
arpwatch, программы для обнаружения аномалий в работе протокола ARP и, в
частности, ARP-spoofing'а.
 
   
 Имя 

 

arpwatch  отслеживает соответствие между MAC и IP адресами
 
   
 Синтаксис 

 

arpwatch [ -dN ] [ -f datafile ] [ -i interface ]
[ -n net[/width ]] [ -r file ] [ -u username ] [ -e username ] [ -s username ]
 
   
 Описание 

 

Программа  arpwatch  отслеживает соответствие Ethernet-адресов и IP-адресов.
Активность регистрируется в syslog и с помощью почтовых оповещений.
Для прослушивания ARP-трафика на локальном ethernet-интерфейсе используется 
библиотека pcap.
 
 

   *  
 
 -d
 

 

   работать в отладочном режиме. Отключаются почтовые сообщения. Программа не 
   уходит в фон, а остаётся на консоли. Сообщения выдаются на стандартный поток 
   вывода. 
 

   *  
 
 -f
 

 

   установить имя файла базы данных пар соответствия адресов ethernet/ip. По 
   умолчанию arp.dat.
 

   *  
 
 -i
 

 

   перекрыть сетевой интерфейс, используемый по умолчанию.
 

   *  
 
 -n
 

 

   указывает дополнительные сети. Это нужно, при возникновении ложных 
   срабатываний "bogon", если больше одной сети присутствует в одной сети. 
   Если маска не указана, используется маска класса адреса.
 

   *  
 
 -N
 

 

   отключить сообщения о подменах.
 

   *  
 
 -r
 

 

   читать и анализировать данные не с интерфейса, а из файла, записанного с 
   помощью tcpdump. В этом случае arpwatch не уходит в фон.
 

   *  
 
 -u
 

 

   отбросить привелегии root'а и работать от имени указанного пользователя
 

   *  
 
 -e
 

 

   Отправлять сообщения по почте указанному пользователю, а не root'у (как 
   происходит по умолчанию). Если в качестве адреса указан символ "-", 
   отправка сообщений по почте не выполняется, но запись в syslog выполняется 
   как и обычно. (Такой режим работы может быть полезен при первоначальных 
   запусках arpwatch, когда происходит сбор данных и генерируется большое 
   количество сообщений о новых станциях.)
 

   *  
 
 -s
 

 

   если указан этот ключ, arpwatch отправляет сообщения на заданный e-mail. 
   По умолчанию сообщения отправляются root'у.
 
Перед первым запуском arpwatch необходимо создать пустой файл 
 
 arp.dat
 

 

 
Если используется ключ 
 
 -u
 

 

, каталог в котором хранится 
 
 arp.dat
 

 

 
должен принадлежать пользователю, который указан вместе с ключом.
 
   
 Сообщения 

 

Основные сообщения, которые генерирует arpwatch
(и  arpsnmp (1)):
 
 
 new activity 

 
 

     Эта пара ethernet/ip-адресов впервые используется снова за последние шесть 
     месяцев или больше. 
 new station 

 
 

     Этот ethernet-адрес раньше не замечали. 
 flip flop 

 
 

     Ethernet-адрес изменился с одного известного адреса на другой известный 
     адрес. (Если старый или новый адрес относится это DECnet-адрес и прошло 
     меньше 24х часов, почтовая версия сообщения не отправляется).
 changed ethernet address 

 
 

     Хост перешёл на использование нового ethernet-адреса.
 
 
   
 Сообщения в syslog  

 

 
Ниже перечислены основные сообщения отправляемые в syslog (указанные ранее 
сообщения отправляются в syslog в том числе).
 
 
 ethernet broadcast 

 
 

     MAC-адрес хоста явяляется широковещательным.
 ip broadcast 

 
 

     IP-адрес хоста явяляется широковещательным.
 bogon 

 
 

  Адрес отправителя IP-пакета не входит в непосредственно подключённую сеть 
  (directly connected network) для заданного интерфейса. 
 ethernet broadcast 

 
 

    MAC-адрес отправителя состоит из одних нулей или одних единиц.
 ethernet mismatch 

 
 

    MAC-адрес отправителя пакета не соответствует MAC-адресу, указанному 
    внутри ARP-запроса.
 reused old ethernet address 

 
 

     Ethernet-адрес изменился с известного адреса на адрес, который был замечен 
     ранее, но не только что. (Похоже на flip flop, но чуть-чуть другое.) 
 suppressed DECnet flip flop 

 
 

     Сообщение "flip flop" подавлено в связи с тем, что как минимум один из двух 
     адресов является адресом DECnet.
 
 
   
 Файлы 

 

 
 

   *  
 
 /var/arpwatch
 

 

   рабочий катало по умолчанию
 

   *  
 
 arp.dat
 

 

   база данных соответствия адресов ethernet/ip
 

   *  
 
 ethercodes.dat
 

 

   список блоков Ethernet-адресов, выделенный различным производителям (vendor base)
 
   
 См. также 

 

 arpsnmp (8),  arp (8),  bpf (4),  tcpdump (1),  pcapture (1),  pcap (3)
 
   
 Авторы 

 

 
Craig Leres of the Lawrence Berkeley National Laboratory Network Research Group, 
University of California, Berkeley, CA.
 
Текущая версия arpwatch доступна на анонимном ftp:
 
 
      ftp://ftp.ee.lbl.gov/arpwatch.tar.gz 

 

 

 
   
 Ошибки 

 

Сообщения об ошибках присылайте, пожалуйста, 
на 
 
 
 arpwatch@ee.lbl.gov 
 

 

 
 

   *  Были попытки подавть сообщения flip flop в сетях DECnet, но они не всегда 
   успешные.
 

   *  Большинство сообщений об ошибках отправляется через syslog
 
   
  Перевод  

 

 
 

   *  Игорь Чубин <igor ar chub.in>
Оригинал: [ http://linux.die.net/man/8/arpwatch   arpwatch (8)]
 

 
   Index 
 
 Имя 
 Синтаксис 
 Описание 
 Сообщения 
 Сообщения в syslog  
 Файлы 
 См. также 
 Авторы 
 Ошибки 
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