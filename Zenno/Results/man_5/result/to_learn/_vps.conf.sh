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
 
 
 
 vps.conf (5) >>  vps.conf  (5)   ( Русские man: Форматы файлов ) 
   
 ИМЯ 

vps.conf - файл конфигурации виртуальной среды (Virtual Environment - VE).
   
 ОБЗОР 

/etc/vz/conf/XXX.conf
   
 ОПИСАНИЕ 

Это файл конфигурации виртуальной среды. Он имеет имя 
 /etc/vz/conf/ id .conf , где  id 
- идентификатор данной виртуальной среды.
 

Файл состоит из строк в формате 
 

 ПАРАМЕТР =" значение "
 

Файл интерпретируется с учётом регистра. Заключение 
 значения  в кавычки обязательно только если в нём содержатся пробелы.
Дополнительные пробелы не допускаются. Все строки, которые не удалось проанализировать, будут игнорироваться.
 

Создание и изменение файла осуществляется с помощью утилиты  vzctl (8)  
(с ключами  set --save ), и все изменения, вносимые другими способами, 
будут утеряны при следующем запуске  vzctl .
 

Все параметры описаны в  vzctl (8) , потому далее приведены только соответствующие
параметры  vzctl set .
   
 Общие параметры 

 
 NAME = имя-среды 
Соответствует  --name .
 ONBOOT = yes | no 
Запускать ли виртуальную среду при загрузке системы.
Значение по умолчанию:  no  (не запускать).
Соответствует  --onboot .
 OSTEMPLATE = имя_шаблона 
Соответствует  --ostemplate .
 VE_ROOT = каталог 
Соответствует  --root .
 VE_PRIVATE = каталог 
Соответствует  --private .
 DISABLED = yes | no 
Соответствует  --disabled .
 ORIGIN_SAMPLE = имя 
Имя исходной конфигурации на которой основана конфигурация данной виртуальной среды.
 CONFIG_CUSTOMIZED = yes | no 
Должно быть  yes  если виртуальная среда была изменена.
 
   
 Параметры работы с ресурсами 

 
 NUMPROC 
Соответствует  --numproc .
 NUMFILE 
Соответствует  --numfile .
 NUMFLOCK 
Соответствует  --numflock .
 NUMPTY 
Соответствует  --numpty .
 NUMSIGINFO 
Соответствует  --numsiginfo .
 NUMTCPSOCK 
Соответствует  --numtcpsock .
 NUMOTHERSOCK 
Соответствует  --numothersock .
 PRIVVMPAGES 
Соответствует  --privvmpages .
 VMMGUARPAGES 
Соответствует  --vmguarpages .
 OOMGUARPAGES 
Соответствует  --oomguarpages .
 LOCKEDPAGES 
Соответствует  --lockedpages .
 SHMPAGES 
Соответствует  --shmpages .
 KMEMSIZE 
Соответствует  --kmemsize .
 TCPSNDBUF 
Соответствует  --tcpsndbuf .
 TCPRCVBUF 
Соответствует  --tcprcvbuf .
 OTHERSOCKBUF 
Соответствует  --othersockbuf .
 DGRAMRCVBUF 
Соответствует  --dgramrcvbuf .
 DCACHESIZE 
Соответствует  --dcachesize .
 NUMIPTENT 
Соответствует  --numiptent .
 CPUUNITS 
Соответствует  --cpuunits .
 DISKSPACE = гибкий-предел [: жёсткий-предел ] 
Соответствует  --diskspace .
 DISKINODES = гибкий-предел [: жёсткий-предел ] 
Соответствует  --diskinodes .
 QUOTATIME = количество_секунд 
Соответствует  --quotatime .
 QUOTAUGIDLIMIT = num 
Соответствует  --quotaugidlimit .
 NOATIME = yes | no 
Соответствует  --noatime .
 CAPABILITY = имя-функции : on | off  [...] 
Соответствует  --capability .
 
   
 Параметры работы с сетью 

 
 IP_ADDRESS = адрес [адрес] 
Указывает  адрес , который будет назначен виртуальной среде. Несколько адресов разделяются пробелами.
Соответствует  --ipadd .
 HOSTNAME = имя 
Соответствует  --hostname .
 NAMESERVER = ip  [ ip ] 
Соответствует  --nameserver . Несколько адресов разделяются пробелами.
 SEARCHDOMAIN = домен  [ домен ] 
Соответствует  --searchdomain . Несколько доменов разделяются пробелами.
 
   
 СМ. ТАКЖЕ 

 vzctl (8),

 vz.conf (5).

   
 АВТОРЫ 

Copyright (C) 2001-2007 by SWsoft. Распространяется на условиях лицензии GNU GPL.
 
   
 ПЕРЕВОД 

Николай Шафоростов < shafff@ukr.net > 2007
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 
 Общие параметры 
 Параметры работы с ресурсами 
 Параметры работы с сетью 
 
 СМ. ТАКЖЕ 
 АВТОРЫ 
 ПЕРЕВОД 
 
 
 
 
 
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