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
 
 
 
 sys-unconfig (8)   sys-unconfig  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  sys-unconfig  (8)   ( Русские man: Команды системного администрирования )   sys-unconfig  (8)   ( Linux man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

sys-unconfig - shell-скрипт для перенастройки системы во время следующей загрузки
   
 СИНТАКСИС 

 sys-unconfig 
   
 ОПИСАНИЕ 

 sys-unconfig  обеспечивает простой способ перенастройки системы под новую конфигурацию. При выполнении sys-unconfig остановит вашу систему и во время загрузки запустит следующие конфигурационные программы: passwd (для смены пароля root'а), netconfig, timeconfig, authconfig и ntsysv.

   
 ФАЙЛЫ 


 
 /.unconfigured 
Наличие этого файла заставит /etc/rc.d/rc.sysinit запустить программы, указанные выше. 


 
   
 СМ. ТАКЖЕ 

 passwd (1),

 netconfig (8),

 timeconfig (8),

 authconfig (8),

 ntsysv (8) 


   
 АВТОРЫ 

 H.J. Lu < hjl@valinux.com >
 


   
 ПЕРЕВОД 

 Павел Марьянов < acid_jack@ukr.net >
 


 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ФАЙЛЫ 
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