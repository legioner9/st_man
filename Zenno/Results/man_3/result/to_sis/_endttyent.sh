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
 
 
 
 endttyent (3)   endttyent  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  endttyent  (3)   ( Русские man: Библиотечные вызовы )   endttyent  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

getttyent, getttynam, setttyent, endttyent - получение данных файла ttys
   
 СИНТАКСИС 

 
 #include < ttyent.h > 

 
 struct ttyent *getttyent(void); 

 
 struct ttyent *getttynam(const char * name ); 

 
 int setttyent(void); 

 
 int endttyent(void); 

   
 ОПИСАНИЕ 

Эти функции обеспечивают интерфейс для файла
 _PATH_TTYS 

(например,
 /etc/ttys ).

 
Функция
 setttyent ()

открывает файл или сбрасывает указатель чтения на начало, если он уже открыт.
 
Функция
 endttyent ()

закрывает файл.
 
Функция
 getttynam ()

ищет заданное имя ttyname в файле. Возвращается указатель на структуру
struct ttyent (описанную далее).
 
Функция
 getttyent ()

открывает файл _PATH_TTYS (при необходимости) и возвращает первый его элемент.
Если файл уже открыт, то возвращается следующий его элемент.
 
   
 Структура ttyent 

 struct ttyent {
        char    *ty_name;       /* имя устройства терминала */
        char    *ty_getty;      /* команда для исполнения, обычно getty */
        char    *ty_type;       /* тип терминала для termcap */
        int     ty_status;      /* флаги статуса */
        char    *ty_window;     /* команда для запуска менеджера окон */
        char    *ty_comment;    /* поле комментария */
};
 

 
 ty_status 

может быть
 

 #define TTY_ON       0x01   /* разрешить регистрации (запускаемые программой ty_getty) */
#define TTY_SECURE   0x02   /* разрешить uid 0 для регистраций */
 

   
 ЗАМЕЧАНИЯ 

В Linux не используются ни файл
 /etc/ttys ,

ни функции, описанные выше,
   
 СМ. ТАКЖЕ 

 ttyname (3),

 ttyslot (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 
 Структура ttyent 
 
 ЗАМЕЧАНИЯ 
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