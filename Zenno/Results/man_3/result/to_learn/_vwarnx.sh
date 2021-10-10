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
 
 
 
 vwarnx (3)   vwarnx  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  vwarnx  (3)   ( Русские man: Библиотечные вызовы )   vwarnx  (3)   ( Linux man: Библиотечные вызовы ) BSD mandoc 
   
 НАЗВАНИЕ 



 err 

 
 verr 

 
 errx 

 
 verrx 

 
 warn 

 
 vwarn 

 
 warnx 

 
 vwarnx 

 
 - форматированные сообщения об ошибках

   
 СИНТАКСИС 

Fd #include < err.h >

 void 
err (int eval const char *fmt ...); 

 void 
errx (int eval const char *fmt ...); 

 void 
warn (const char *fmt ...); 

 void 
warnx (const char *fmt ...); 

Fd #include < stdarg.h >

 void 
verr (int eval const char *fmt va_list args); 

 void 
verrx (int eval const char *fmt va_list args); 

 void 
vwarn (const char *fmt va_list args); 

 void 
vwarnx (const char *fmt va_list args); 

   
 ОПИСАНИЕ 

Семейство функций
err (); 

и
warn (); 

выводит отформатированные сообщения об ошибках
на стандартное устройство ошибок stderr.
Во всех случаях выводятся последний компонент названия программы,
символ двоеточия и пробе.
Если аргумент
Fa fmt

не равно NULL, то выводятся сообщения об ошибках,
в формате похожем на
 printf (3).


Вывод заканчивается символом новой строки.
 

Функции
err (,); 

verr (,); 

warn (,); 

и
vwarn (); 

дополняют сообщения об ошибках, полученные от
 strerror (3),


основанные на коде из глобальной переменной
 errno 

 
предваряемой другим двоеточием и пробелом, если только аргумент
Fa fmt

не равен
 NULL 

 
 

Фукнции
err (,); 

verr (,); 

warn (,); 

и
vwarn (); 

используют глобальную переменную
 errno 

для поиска сообщени об ошибках.
 

Функции
errx (); 

и
warnx (); 

не дополняют сообщения об ошибках.
 

Функции
err (,); 

verr (,); 

errx (,); 

и
verrx (); 

ничего не возвращают, но заканчивают работу со значением аргумента
Fa eval .

   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

Показать текущую информационную строку errno и завершить работу:

 
 if ((p = malloc(size)) == NULL)
        err(1, NULL);
if ((fd = open(file_name, O_RDONLY, 0)) == -1)
        err(1, "%s", file_name);
 
 

 

Показать сообщение об ошибке и завершить работу:

 
 if (tm.tm_hour < START_TIME)
        errx(1, "too early, wait until %s", start_time_string);
 
 

 

Предупредить об ошибке:

 
 if ((fd = open(raw_device, O_RDONLY, 0)) == -1)
        warnx("%s: %s: trying the block device",
            raw_device, strerror(errno));
if ((fd = open(block_device, O_RDONLY, 0)) == -1)
        err(1, "%s", block_device);
 
 

   
 СМ. ТАКЖЕ 

 exit (3),


 printf (3),


 perror (3),


 strerror (3)


   
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 

Функции
err (); 

и
warn (); 

впервые появились в версии
BSD 4.4
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
 СМ. ТАКЖЕ 
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 
 
 
 
 
 
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