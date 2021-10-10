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
 
 
 
 logins (1)   logins  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   logins  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  logins  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
 
 
 logins(1M) 
 logins(1M) 
 
 

 НАЗВАНИЕ 
 logins  - выдает информацию о пользовательских и системных регистрационных 
именах 

 СИНТАКСИС 
 
   
	logins [-dmopstuxab] [-g  группы ] [-l  рег_имена ]
   
 

 ОПИСАНИЕ 
 Команда  logins  выдает информацию о пользовательских и системных 
регистрационных именах. Содержание выдаваемой информации управляется 
опциями команды и может включать: пользовательское или системное 
регистрационное имя, идентификатор пользователя, описание учетной записи в 
 /etc/passwd  (реальное имя пользователя или другая информация), имя основной 
группы, идентификатор основной группы, имена групп, идентификаторы групп, 
начальный каталог, начальный командный интерпретатор и четыре параметра 
устаревания пароля. По умолчанию выдается следующая информация: 
регистрационное имя, идентификатор пользователя, имя основной группы, 
идентификатор основной группы и поле описания учетной записи в  /etc/passwd . 
Результат сортируется по идентификатору пользователя, в результате чего 
сначала идут системные регистрационные имена, а затем - пользовательские. 

 
 -d 
 
Выбирает регистрационные имена с дублирующимися 
идентификаторами пользователя. 
 -m 
 
Показывает все группы, к которым принадлежит пользователь. 
 -o 
 
Форматирует вывод в виде одной строки полей, разделенных 
двоеточиями. 
 -p 
 
Выбирает регистрационные имена без паролей. 
 -s 
 
Выбирает все системные регистрационные имена. 
 -t 
 
Сортирует результат по регистрационному имени, а не по 
идентификатору пользователя. 
 -u 
 
Выбирает все пользовательские регистрационные имена. 
 -x 
 
Выдает расширенную информацию о каждом выбранном 
пользователе. Эта расширенная информация включает начальный 
каталог, начальный командный интерпретатор и информацию об 
устаревании паролей, причем каждый элемент выдается в отдельной 
строке. Информация о пароле содержит  статус пароля  ( PS  при 
наличии пароля,  NP  при отсутствии пароля или  LK  для 
заблокированного регистрационного имени), дату последнего 
изменения пароля, количество дней, через которое потребуется 
изменить пароль, минимальное количество дней между изменениями 
и за сколько дней пользователь начнет получать (при регистрации) 
предупреждающее сообщение об устаревании пароля. 
 -a 
 
Добавляет к результату два поля, связанных с устареванием пароля. 
Они показывают, сколько дней пароль можно не использовать, перед 
тем как он автоматически деактивируется, и дату устаревания 
пароля. 
 -b 
 
Выдает маску событий аудита для пользователя. Эта опция доступна, 
только если установлены  утилиты аудита  (Auditing Utilities). 
 -g 
 
Выбирает всех пользователей, принадлежащих указанной  группе , 
сортируя список по идентификатору пользователя. Можно указывать 
несколько групп в виде списка через запятую. 
 -l 
 
Выбирает указанное  регистрационное имя . Можно указывать 
несколько регистрационных имен в виде списка через запятую. 
 

 ПРИМЕЧАНИЯ 
 Когда совместно используется несколько опций, будут показаны 
регистрационные имена, удовлетворяющие любому критерию. При совместном 
использовании опций  -l  и  -g , информация о пользователе будет выдаваться 
только один раз, даже если он принадлежит к нескольким из указанных групп. 

 Copyright 1994 Novell, Inc. 
Copyright 2000  В. Кравчук ,
 OpenXS Initiative , перевод на русский язык
  

 
 
 
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