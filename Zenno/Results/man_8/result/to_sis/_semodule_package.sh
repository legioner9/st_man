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
 
 
 
 semodule_package (8) >>  semodule_package  (8)   ( Русские man: Команды системного администрирования )   semodule_package  (8)   ( Linux man: Команды системного администрирования ) 
   
 НАЗВАНИЕ  

semodule_package - Создать пакет модуля политики SELinux.
 
   
 СИНТАКСИС 

 semodule_package -o <output file> -m <module> [-f <file contexts>] 

 

   
 ОПИСАНИЕ 

 

semodule_package - это утилита используемая для создания пакета модуля политики SELinux
из бинарного модуля политики и других источников данных, таких как файл контекстов.
semodule_package создает пакеты из бинарных модулей политики, созданных, в свою очередь,
при помощи checkmodule. Пакеты политик, созданные semodule_package, могут быть установлены
утилитой semodule. 
 
   
 ПРИМЕРЫ 

 # Создать пакет модуля политики для базового модуля.
$ semodule_package -o base.pp -m base.mod -f file_contexts
# Создать пакет модуля политики для модуля httpd.
$ semodule_package -o httpd.pp -m httpd.mod -f httpd.fc
# Создать пакет модуля политики для локальных TE-правил (TE rules) без использования
файла контекстов.
$ semodule_package -o local.pp -m local.mod 
 

 
   
 ОПЦИИ 

 
 -o --outfile <output file>  

 
Пакет модуля политики, создаваемый данной утилитой.
 -s --seuser <seuser file> 

 
Файл seuser будет включен в пакет.
 -u --user_extra <user extra file> 

 
Файл user_extra будет включен в пакет.
 -m --module <Module file> 

 
Файл модуля политик будет включен в пакет.
 -f --fc   <File context file> 

 
Файл с контекстами файлов для модуля (опционально). 
 -n --nc <netfilter context file> 

 
включить в пакет файл контекста netfilter.
 
 
   
 СМОТРИ ТАКЖЕ 

 checkmodule (8),  semodule (8) 

 
   
 АВТОРЫ 

 Эту страницу руководства написал Dan Walsh < dwalsh@redhat.com >.
Перевод  руководства  -  Андрей  Маркелов < andrey@markelov.net >, 2007г.
Программа написана Karl MacMillan < kmacmillan@tresys.com >

 
 
   Index 
 
 НАЗВАНИЕ  
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПРИМЕРЫ 
 ОПЦИИ 
 СМОТРИ ТАКЖЕ 
 АВТОРЫ 
 
 
 
 
 
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