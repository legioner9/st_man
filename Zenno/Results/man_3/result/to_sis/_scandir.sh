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
 
 
 
 scandir (3)   scandir  (3)   ( Solaris man: Библиотечные вызовы )   scandir  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  scandir  (3)   ( Русские man: Библиотечные вызовы )   scandir  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

scandir, alphasort, versionsort - поиск совпадающих элементов в каталоге
   
 СИНТАКСИС 

 #include < dirent.h > 

 int scandir(const char * dir , struct dirent *** namelist , 
 int(* select )(const struct dirent *), 
 int(* compar )(const struct dirent **, const struct dirent **)); 
 

 int alphasort(const void * a , const void * b ); 
 
 int versionsort(const void * a , const void * b ); 
 

   
 ОПИСАНИЕ 

Функция  scandir()  производит поиск элементов в каталоге  dir ,
посылая каждому элементу вызов  select() . Элементы, которым
 select()  возвращает ненулевое значение, записываются в строках
и размещаются в памяти при помощи  malloc() ; они
сортируются посредством функции  qsort()  и функции сравнения
 compar() , а затем накапливаются в массиве  namelist  ,
который размещается в памяти функцией  malloc() .
Если  select  равен NULL, то выбираются все записи.
 

Функции 
 alphasort() 

и
 versionsort() 

могут быть использованы как функции сравнения
 compar() .

Первая упорядочивает записи с помощью
 strcoll (3),

а вторая использует
 strverscmpcmp (3)

для строк  (*a)->d_name  и  (*b)->d_name .
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  scandir()  возвращает количество выбранных записей или -1,
если произошла ошибка.
 

Функции 
 alphasort() 

и 
 versionsort() 

возвращают целое число меньше нуля, ноль или
целое число больше нуля, если первый аргумент функции соответственно
меньше второго, равен второму или больше второго аргумента.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 ENOMEM 

 
недостаточно памяти для завершения операции.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Ни одна из этих функций не описана в POSIX.
Функции
 scandir() 

и
 alphasort() 

взяты из BSD 4.3 и появились в Linux начиная с libc4.
Libc4 и libc5 используют более точный прототип
 
 int alphasort(const struct dirent ** a , const struct dirent ** b ); 
 

 
а glibc 2.0 возвращает неточный прототп BSD.
 

Функция
 versionsort() 

является расширением GNU, появившимся начиная с glibc 2.1.
Начиная с glibc 2.1,
 alphasort() 

вызывает
 strcoll (3);

ранее использовалась
 strcmp (3).

   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

 /* печатает файлы в каталоге в обратном порядке */
#include < dirent.h >
main(){
    struct dirent **namelist;
    int n;
    n = scandir(".", &namelist, 0, alphasort);
    if (n < 0)
        perror("scandir");
    else {
        while(n--) {
            printf("%s\n", namelist[n]->d_name);
            free(namelist[n]);
        }
        free(namelist);
    }
}
 

   
 СМ. ТАКЖЕ 

 closedir (3),

 fnmatch (3),

 opendir (3),

 readdir (3),

 rewinddir (3),

 seekdir (3),

 strcmp (3),

 strcoll (3),

 strverscmp (3),

 telldir (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
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