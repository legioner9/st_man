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
 
 
 
 ftime (3)   ftime  (3)   ( Solaris man: Библиотечные вызовы )   ftime  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  ftime  (3)   ( Русские man: Библиотечные вызовы )   ftime  (3)   ( Linux man: Библиотечные вызовы )   ftime  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

ftime - возвращает значение даты и времени
   
 СИНТАКСИС 

 #include < sys/timeb.h > 

 
 int ftime(struct timeb * tp ); 

   
 ОПИСАНИЕ 

Возвращает текущую дату и время в виде
 tp ,

определенного следующим образом:
 

 struct timeb {
        time_t   time;
        unsigned short millitm;
        short    timezone;
        short    dstflag;
};
 


 

В данной структуре  time  является количеством секунд с начала эпохи;
 millitm  - количество миллисекунд, прошедших после  time  секунд с
начала эпохи;  timezone  - локальная временная зона в минутах западнее
Гринвича;  dstflag  - флаг, ненулевое значение которого указывает,
что в соответствующее время года используется "летнее" время.
 

В данный момент содержимое полей  timezone  и  dstflag  не определено.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция всегда возвращает 0.
   
 НАЙДЕННЫЕ ОШИБКИ 

Эта функция устарела. Не используйте ее. В случаях, когда достаточно секунд,
можно использовать
 time (2);

 gettimeofday (2)

позволяет работать с микросекундами;
 clock_gettime (3)

позволяет работать с наносекундами, однако пока что еще не очень широко
распространена.
 

При работе с libc4 и libc5 поле millitm представляет для пользователя 
особый интерес. Но ранние версии glibc2 работают некорректно и возвращает в 
этом поле нулевое значение; начиная с glibc 2.1.1 эта ошибка исправлена.
   
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 

Функция
 ftime 

появилась в версии 4.2BSD.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.2, POSIX 1003.1-2001.
   
 СМ. ТАКЖЕ 

 gettimeofday (2),

 time (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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