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
 
 
 
 ualarm (3)   ualarm  (3)   ( Solaris man: Библиотечные вызовы )   ualarm  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  ualarm  (3)   ( Русские man: Библиотечные вызовы )   ualarm  (3)   ( Linux man: Библиотечные вызовы )   ualarm  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

ualarm - отправление сигнала через заданное число микросекунд
   
 СИНТАКСИС 

 /* BSD version */
 #include < unistd.h > 

 unsigned int 
 
 ualarm(unsigned int  usecs , unsigned int  interval ); 

/* SUSv2 version */
 #define _XOPEN_SOURCE 500 
 
 #include < unistd.h > 

 useconds_t usleep(useconds_t  usecs , useconds_t  interval ); 
 

   
 ОПИСАНИЕ 

Функция  ualarm()  приводит к отправке сигнала SIGALRM
вызывающему процессу (не менее чем) через
 usecs 

микросекунд.
Задержка может быть слегка увеличена при большой загруженности системы,
из-за собственно времени обработки этого вызова или из-за неточности
хода системных часов.
 

Если сигнал не будет пойман или проигнорирован, то он уничтожит процесс.
 

Если аргумент
 interval 

не равен нулю, то дальнейшие сигналы SIGALRM будут отправляться каждые
 interval 

микросекунд после первого.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Эта функция возвращает число микросекунд, оставшихся от предудущего
вызова, или 0, если таймер выключен.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EINTR 
Прервано сигналом.
 EINVAL 
 usecs  или  interval  не меньше чем 1000000
(на системах, где это считается ошибкой.)
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3.
BSD 4.3 и SUSv2 не определяют никаких ошибок.
   
 ЗАМЕЧАНИЯ 

Тип
 useconds_t 

является беззнаковым целым типом, умеющих хранить целые в диапазоне [0,1000000].
Этот тип определяется
 < sys/types.h > 

включенным в
 < unistd.h > 

но glibc определяет его только когда _XOPEN_SOURCE имеет значение не меньше 500,
или если определены и _XOPEN_SOURCE, и _XOPEN_SOURCE_EXTENDED.

Программы будут более пригодны для портирования, если в них
никогда не будет явно упоминаться этот тип.
 

Взаимодействие этой функции с другими функциями таймеров, таких как
 alarm (),

 sleep (),

 nanosleep (),

 setitimer (),

 timer_create (),

 timer_delete (),

 timer_getoverrun (),

 timer_gettime (),

 timer_settime (),

 usleep ()

не определено.
 

Эта функция устарела. Используйте вместо нее
 nanosleep (2)

или
 setitimer (2).

   
 СМ. ТАКЖЕ 

 alarm (2),

 getitimer (2),

 nanosleep (2),

 select (2),

 setitimer (2),

 usleep (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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