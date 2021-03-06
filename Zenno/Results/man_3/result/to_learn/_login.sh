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
 
 
 
 login (3)   login  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   login  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня )   login  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   login  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   login  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  login  (3)   ( Русские man: Библиотечные вызовы )   login  (3)   ( Linux man: Библиотечные вызовы )   login  (8)   ( Русские man: Команды системного администрирования ) Ключ  login  обнаружен в базе ключевых слов. 
   
 НАЗВАНИЕ 

login, logout - функции работы с учетными записями
   
 СИНТАКСИС 

 #include < utmp.h > 

 
 void login(const struct utmp * entry ); 

 

 int logout(const char * ut_line ); 

   
 ОПИСАНИЕ 

Функция
 login ()

добавляет новую запись в базу учетных записей пользователей (файл utmp).
Элемент
 ut ->ut_line 

будет установлен в имя терминала на стандартном входе.
Если это не терминал, то
 login ()

будет использовать стандартный вывод или поток стандартных ошибок для
определения имени терминала. Элемент
 ut ->ut_type 


будет установлен в
 USER_PROCESS ,

а
 ut ->ut_pid 


будет установлен в идентификатор ID вызывающего процессаw.
Все оставшиесмя элементы будут скопированы из
 entry .

 
Копия полученного
 entry 

записывается в файл журнала учетных записей.
 
Функция
 logout ()

изменяет базу учетных записей пользователей для отображения, что
пользователь на терминале
 ut_line 

разрегистрировался.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция
 logout ()

возвращает 1, если элемент был успешно записан в базу, или 0 в случае ошибок.
   
 ЗАМЕЧАНИЯ 

Эти функции включены в libutil, так как требуется добавлять
 -lutil 

в командную строку вашего комплятора.
 
Заметим, что член
 ut_user 

структуры struct utmp
в BSD называется
 ut_name .

Тем не менее,
 ut_name 

определяется как псевдоним для
 ut_user 

в
 utmp.h .

   
 ФАЙЛЫ 

 
 /var/run/utmp 

 
база учетных записей пользователей, настраивается через _PATH_UTMP в
 < paths.h > 

 
   
 СМ. ТАКЖЕ 

 utmp (5),

 getutent (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ЗАМЕЧАНИЯ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
 
 
 
 
 
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