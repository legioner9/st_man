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
 
 
 
 hosts.equiv (5)   hosts.equiv  (4)   ( Solaris man: Специальные файлы /dev/* )   hosts.equiv  (5)   ( FreeBSD man: Форматы файлов ) >>  hosts.equiv  (5)   ( Русские man: Форматы файлов )   hosts.equiv  (5)   ( Linux man: Форматы файлов ) 
   
 ИМЯ 

/etc/hosts.equiv - список узлов и пользователей, которым
предоставляется "доверительный"
доступ к вашей системе через  r -команды
   
 ОПИСАНИЕ 

Файл  hosts.equiv  разрешает или запрещает узлам и пользователям
использовать  r -команды (например,  rlogin ,  rsh  or  rcp )
без ввода пароля.
 

Файл имеет следующий формат:
 
 [ + | - ]   [hostname]   [username] 
 
 

Где  hostname  - это имя узла, которое логически эквивалентно
локальному узлу.  Пользователям, которые зарегистрировались на этом узле,
разрешается доступ к локальному узлу под их собственным именем без ввода
пароля.
 hostname  может (необязательно)
предваряться знаком плюс (+).  Если в качестве имени узла используется 
одиночный плюс, то
доступ к вашей системе разрешен с любого узла. Вы можете явно
запретить доступ для какого-либо узла, если перед  hostname 
поставите знак минус (-). Пользователи с этого узла всегда будут
должны вводить пароль. Из соображений безопасности вы всегда
должны использовать полностью заданные имена узлов (имя с доменом)
и не использовать коротких имен.
 

Запись  username  предоставляет доступ заданному пользователю
(исключая root) без ввода пароля. Это означает, что пользователь может 
использовать любые имена на локальной машине.
 username  может быть (необязательно)
предваряться знаком плюс (+).  Вы можете явно запретить доступ для
какого-либо пользователя, если перед  username  поставите знак
минус (-). Это будет означать, что этому пользователю с этого узла
мы не доверяем.
 

С помощью знака @ может быть задана сетевая группа.
 

Будьте очень осторожны, когда используете знак плюс (+). Простая
описка может привести к тому, что этот плюс будет стоять в строке в
полном одиночестве и в этом случае он будет означать "любой узел"!
 

   
 ФАЙЛЫ 

 /etc/hosts.equiv 

   
 ЗАМЕЧАНИЕ 

Некоторые системы используют содержимое данного файла только когда его
владельцем является root и при этом отсутствуют права на запись для
всех остальных. Некоторые исключительно параноидальные системы даже
требуют, чтобы для данного файла не существовало других жестких ссылок.
 

Современные системы используют библиотеку Pluggable Authentication Modules
(PAM) (Встраеваемые Модули Авторизации).
При использовании PAM одиночный знак плюса рассматривается только
как символ шаблона, который означает "любой узел", когда
слово
 promiscuous 

добавляется к компоненту auth в вашем файле PAM для конкретной службы
(например  rlogin ).

   
 СМОТРИ ТАКЖЕ 

 rhosts (5),

 rshd (8),

 rlogind (8)

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2004
 

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ 
 ФАЙЛЫ 
 ЗАМЕЧАНИЕ 
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