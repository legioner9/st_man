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
 
 
 
 getfsspec (3)   getfsspec  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  getfsspec  (3)   ( Русские man: Библиотечные вызовы )   getfsspec  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

getfsent, getfsspec, getfsfile, setfsent, endfsent - обработка
записей fstab
   
 СИНТАКСИС 

 #include < fstab.h > 

 
 void endfsent(void); 

 
 struct fstab *getfsent(void); 

 
 struct fstab *getfsfile(const char * mount_point ); 

 
 struct fstab *getfsspec(const char * special_file ); 

 
 int setfsent(void); 

   
 ОПИСАНИЕ 

Эти функции считывают файл
 /etc/fstab .

Структура struct fstab определена следующи образом
 

 struct fstab {
     char *fs_spec;          /* номер блочного устройства */
     char *fs_file;          /* точка монтирования */
     char *fs_vfstype;       /* тип файлововй системы */
     char *fs_mntops;        /* опции монтирования */
     const char *fs_type;    /* опции rw/rq/ro/sw/xx */
     int fs_freq;            /* частота запуска dump, в днях */
     int fs_passno;          /* номер прохода при параллельном dump */
};
 

Поле
 fs_type 

(на системах *BSD) содержит одну из пяти строк
"rw", "rq", "ro", "sw", "xx"
(чтение-запись, чтение-запись с квотами, только чтение, подкачка,
игнорирование).
 
Функция
 setfsent() 

открывает файл и устанавливает указатель на первую строку.
 

Функция
 getfsent() 

обрабатывает следующую строку из файла.
(Открыв файл, если требуется.)
 

Функция
 endfsent() 

закрывает файл.
 

Функция
 getfsspec() 

ищет с начала файла запись, для которой поле
 fs_spec 

соответствует аргументу
 special_file ,

и возвращает ее.
 

Функция
 getfsfile() 

ищет с начала файла запись, для которой поле
 fs_file 

соответсвует аргументу
 mount_point ,

и возвращает ее.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При удачном завершении функции
 getfsent() ,

 getfsfile() ,

и
 getfsspec() 

возвращают указатель на структуру struct fstab, а
 setfsent() 

возвращает 1.
При ошибке или обнаружении конца файла эти функции возвращают 
соответственно NULL или 0.
   
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 

Функция
 getfsent() 

появилась в 4.0BSD; остальные 4 функции появились в 4.3BSD.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Эти функции не включены в POSIX. Ряд операционных систем имеют их,
например *BSD, SunOS, Digital Unix, AIX (в котором также есть
 getfstype() ).

В HP-UX есть функции с тем же именем, но вместо стуруктуры struct
fstab они используют структуру struct checklist, вызовы этих функций
устарели, они заменены на
 getmntent (3).

   
 ЗАМЕЧАНИЯ 

Эти функции небезопасны с точки зрения подпроцессов.
 

Так как Linux позволяет подключать специальное блочное устройство
в несколько разных точек, а также так как несколько устройств могут иметь
одну точку монтирования, то неясно, будет ли результат (первая
запись), возвращенный функциями
 getfsfile() 

и
 getfsspec() 

именно тем, что и ожидался. Поэтому эти две функции не подходят для
использования под Linux.
 

   
 СМ. ТАКЖЕ 

 getmntent (3),

 fstab (5)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 
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