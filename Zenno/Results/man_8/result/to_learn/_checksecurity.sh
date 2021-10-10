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
 
 
 
 checksecurity (8) >>  checksecurity  (8)   ( Русские man: Команды системного администрирования ) 
 
   
 НАЗВАНИЕ 

checksecurity - проверяет изменения setuid программ
 
   
 СИНТАКСИС 

 checksecurity 
 
   
 ОПИСАНИЕ 

Команда  checksecurity  сканирует смонтированные файловые
системы и сравнивает список setuid программ со списком
полученым при предыдущем запуске. Любые изменения
выводятся на станлартное устройство вывода.
 
 checksecurity  запускавется ежедневно из  cron  , обо всех
обнаружненых изменениях будет послано почтовое сообщение
пользователю с именем root.
 
 
 КОНФИГУРАЦИЯ 
 
Файл  checksecurity.conf  определяет переменную окружения
 CHECKSECURITY_FILTER  которая является аргументом для `grep
-vE' применненой к выводу  mount  команды. Другими словами,
значение  CHECKSECURITY_FILTER     является регулярным
выражением ,которое удаляет сответсвующие строки из
файловых систем , которые будут проверятся. Значение по
умолчанию удаляет все файловые системы следущих типов
 proc, msdos, sio9660, ncpfs,  и  smbfs  ,  nfs  и  afs  файловые
ситемы которые смонтированы с опциями  nodev  или  noexec  или
 nosuid  , anything mounted в /dev/fd*, и anything mounted в
/mnt.
 
Файл  checksecurity.conf  берется из  checksecurity,  поэтому
вы можете сделать какие-нибудь хорошие уловки для
определения  CHECKSECURITY_FILTER. 
 
 
   
 ФАЙЛЫ 

 /etc/checksecurity.conf 
файл конфигурации проверки безопасности
 
 /var/log/setuid.today 
 
список setuid файлов после последнего запуска
checksecurity.
 
 /var/log/setuid.yesterday 
 
список setuid файлов после предыдущего запуска
checksecurity.
 
   
 Перевод 

Copyright(C) by Kosta Kudrin
 cola@tcsb.perm.su 
2:5054/ 69@fidonet 
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ФАЙЛЫ 
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