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
 
 
 
 gettimeofday (2)   gettimeofday  (2)   ( FreeBSD man: Системные вызовы ) >>  gettimeofday  (2)   ( Русские man: Системные вызовы )   gettimeofday  (2)   ( Linux man: Системные вызовы )   gettimeofday  (3)   ( Solaris man: Библиотечные вызовы )   gettimeofday  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

gettimeofday, settimeofday - определяет / устанавливает время
   
 СИНТАКСИС 

 #include < sys/time.h > 

 
 int gettimeofday(struct timeval * tv , struct timezone * tz ); 

 

 int settimeofday(const struct timeval * tv 

 , const struct timezone * tz ); 

   
 ОПИСАНИЕ 

 gettimeofday 

и
 settimeofday 

могут получать и устанавливать время и часовой пояс.
Аргумент
 tv 

является структурой 
 timeval  

и описанной в /usr/include/sys/time.h:
 
 struct timeval {
long    tv_sec;         /* секунды */
long    tv_usec;        /* микросекунды */
};
 

и задающей количество секунд и микросекунд с начала эпохи (см.
 time (2)).

 
Аргумент
 tz 

является
 timezone 

:
 
 struct timezone {
int     tz_minuteswest; /* количество минут коррекции по отношению к Гринвичу */
int     tz_dsttime;     /* тип сезонной коррекции времени */
};
 

 

Использование структуры timezone является устаревшим методом: поле
 tz_dsttime 

никогда не использовалось в Linux, оно не поддерживается и не будет
поддерживаться libc или glibc.
Любое появление этого поля в исходных версиях ядра (за исключением его описания) является ошибкой.
Поэтому все, что описано ниже, представляет собой только исторический интерес.
Поле
 tz_dsttime 

содержит символьную постоянную (значения приведены ниже),
которая включает в себя информацию о сезонной коррекции времени (Daylight Saving Time).
(Замечание: эта величина постоянна и указывает лишь на алгоритм коррекции.)
Алгоритмы сезонной коррекции определяются так : 
 



  DST_NONE       /* без коррекции */ 
 

  DST_USA       /* коррекция для Америки */ 
 

  DST_AUST      /* коррекция для Австралии */ 
 

  DST_WET       /* коррекция для Западной Европы */ 
 

  DST_MET       /* коррекция для Центральной Европы */ 
 

  DST_EET       /* коррекция для Восточной Европы */ 
 

  DST_CAN       /* коррекция для Канады */ 
 

  DST_GB        /* Коррекция для Великобритании */ 
 

  DST_RUM       /* коррекция для Румынии */ 
 

  DST_TUR       /* коррекция для Турции */ 
 

  DST_AUSTALT   /* коррекция со сдвигом в 1986 для Австралии */ 
 

Разумеется, коррекцию для каждой страны нельзя описать простым алгоритмом, 
так как этот фактор может зависеть даже от непредсказуемых политических решений.
Поэтому этот метод представления часовых поясов больше не используется.
В Linux при вызове 
 settimeofday 

поле
 tz_dsttime 

должно содержать нулевое значение.
 

В Linux существует специфическое понятие `часовой сдвиг', связанное с функцией
 settimeofday 


 tz 

не равен NULL, а параметр 
 tv 

равен NULL,  и значение поля
 tz_minuteswest 

не равно нулю. В этом случае предполагается, что время аппаратных часов (CMOS clock)
местное и к ним дожен быть добавлен этот параметр для того, чтобы 
получилось время UTC.
Но, как мы и говорили, использовать этот метод не рекомендуется.
 

Для работы со структурой timeval существуют следующие макросы:
 

 #define       timerisset(tvp)\
 
        ((tvp)->tv_sec || (tvp)->tv_usec)
#define       timercmp(tvp, uvp, cmp)\
((tvp)->tv_sec cmp (uvp)->tv_sec ||\
(tvp)->tv_sec == (uvp)->tv_sec &&\
(tvp)->tv_usec cmp (uvp)->tv_usec)
#define       timerclear(tvp)\
 
        ((tvp)->tv_sec = (tvp)->tv_usec = 0)
 

 

Если 
 tv 

или 
 tz 

равно нулю, то соответствующая структура не заполняется или не возвращается.
 

Только суперпользователь может работать с
 settimeofday .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 gettimeofday 

и
 settimeofday 

при успешном завершении работы возвращают ноль, и возвращают -1 при ошибках
(в этом случае 
 errno 

присваиваются соответствующие значения).
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EPERM  

 
 settimeofday 

вызвана без прав суперпользователя.
 EINVAL 

 
Неправильно указан часовой пояс (или другие параметры).
 EFAULT 

 
Или 
 tv 

или
 tz 

указывают на недоступную область адресного пространства.
 
   
 ЗАМЕЧАНИЯ 

Прототип
 settimeofday 

и определения для
 timercmp ,

 timerisset ,

 timerclear ,

 timeradd ,

 timersub 

доступны (с glibc2.2.2) только если определно
 _BSD_SOURCE 

(либо явно, либо неявно, неопределением _POSIX_SOURCE
или сборкой с флагом -ansi).
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVr4, BSD 4.3
   
 СМ. ТАКЖЕ 

 date (1),

 adjtimex (2),

 time (2),

 ctime (3),

 ftime (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ЗАМЕЧАНИЯ 
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