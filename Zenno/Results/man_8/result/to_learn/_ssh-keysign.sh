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
 
 
 
 ssh-keysign (8)   ssh-keysign  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   ssh-keysign  (8)   ( FreeBSD man: Команды системного администрирования ) >>  ssh-keysign  (8)   ( Русские man: Команды системного администрирования )   ssh-keysign  (8)   ( Linux man: Команды системного администрирования ) BSD mandoc 
   
 ИМЯ 



 ssh-keysign 

 - - вспомогательная программа ssh для аутентификации по хосту

   
 ОБЗОР 

 


   
 ОПИСАНИЕ 

 


используется программой
 ssh (1)


для доступа к локальным ключам хоста и генерирования цифровой подписи, 
требуемой при аутентификации по хосту (протокол SSH 2).
 

 


изначально отключена. Включить её можно включить только в глобальном
файле конфигурации 
/etc/ssh/ssh_config

установив 
 EnableSSHKeysign 

в 
``yes''

 
 

 


не должна запускаться напрямую. Её должна вызывать 
 ssh (1).


См.
 ssh (1)


и
 sshd (8)


про аутентификацию по хосту.
   
 ФАЙЛЫ 

 
 

 /etc/ssh/ssh_config

 
 
Содержит директиву, включающую использование
 . 

 /etc/ssh/ssh_host_dsa_key, /etc/ssh/ssh_host_rsa_key

 
 
Файлы с закрытыми компонентами ключей хоста используемых для генерирования цифровых подписей.
Должны принадлежать пользователю root, доступны для чтения только root и не быть доступными остальным.
Следовательно, для этого потребуется установить бит set-uid root для
 . 

 
 

   
 СМ. ТАКЖЕ 

 ssh (1),


ssh-keygen1,


ssh_config5,


 sshd (8)


   
 ИСТОРИЯ 

 


впервые появился в
Ox 3.2 .

   
 АВТОР 

An Markus Friedl Aq  markus@openbsd.org 

 
   
 ПЕРЕВОД 

Николай Шафоростов < shafff@ukr.net > 2007>
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
 ИСТОРИЯ 
 АВТОР 
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