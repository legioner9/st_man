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
 
 
 
 ftpusers (5)   ftpusers  (4)   ( Solaris man: Специальные файлы /dev/* )   ftpusers  (5)   ( FreeBSD man: Форматы файлов ) >>  ftpusers  (5)   ( Русские man: Форматы файлов )   ftpusers  (5)   ( Linux man: Форматы файлов ) 
   
 ИМЯ 

ftpusers - список пользователей, которым запрещён вход через FTP демон
   
 ОПИСАНИЕ 

Текстовый файл
 ftpusers 

содержит список пользователей, которые не могут входить в систему через
FTP сервер. Этот файл используется не только для целей системного
администрирования, но и для увеличения безопасности сетевого окружения
TCP/IP. В списке обычно указываются пользователи, которые
не должны использовать FTP либо по своей функциональности, либо
потому что имеют слишком много привелегий, чтобы разрешить им вход
через FTP сервер. Среди таких пользователей обычно root, daemon, bin,
uucp и news. Если ваш FTP сервер не использует файл
 ftpusers , 

то мы советуем вам прочитать документацию по этому серверу, чтобы
найти как блокировать доступ определённых пользователей. FTP сервер
Вашингтонского университета (wuftpd) и Professional FTP Daemon (proftpd)
знают как использовать файл
 ftpusers .

   
 ФОРМАТ 

Формат файла
 ftpusers 

очень прост. Одно имя бюджета (или имя пользователя) на строку.
Строки, которые начинаются с # игнорируются.
   
 ФАЙЛЫ 

 /etc/ftpusers 

   
 СМОТРИ ТАКЖЕ 

 passwd (5),

 wuftpd (8),

 proftpd (8)

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2004
 

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ 
 ФОРМАТ 
 ФАЙЛЫ 
 СМОТРИ ТАКЖЕ 
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