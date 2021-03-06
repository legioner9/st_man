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
 
 
 
 __freadable (3) >>  __freadable  (3)   ( Русские man: Библиотечные вызовы )   __freadable  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

__fbufsize, __flbf, __fpending, __fpurge, __freadable, __freading,
  __fsetlocking, __fwritable, __fwriting, _flushlbf -
интерфейсы к структуре stdio FILE
   
 СИНТАКСИС 

 #include < stdio.h > 

 

 #include < stdio_ext.h > 

 
 size_t __fbufsize(FILE * stream ); 

 

 size_t __fpending(FILE * stream ); 

 

 int __flbf(FILE * stream ); 

 

 int __freadable(FILE * stream ); 

 

 int __fwritable(FILE * stream ); 

 

 int __freading(FILE * stream ); 

 

 int __fwriting(FILE * stream ); 

 

 int __fsetlocking(FILE * stream , int  type ); 

 

 void _flushlbf(void); 

 

 void __fpurge(FILE * stream ); 

   
 ОПИСАНИЕ 

В Solaris были введены функции для предоставления переносимого
доступа к внутренним полям структуры FILE. В glibc эти функции также
реализованы.
 

Функция
 __fbufsize() 

возвращает размер буфера, используемого в данный момент указанным
потоком.
 

Функция
 __fpending() 

возвращает количество байт в буфере вывода.
Дл потоков, ориентированных на широкие символы, возвращается
количество этих символов. Функция не определена для буферов в режиме
чтения, или потоков, открытых только для чтения.
 

Функция
 __flbf() 

возвращает ненулевое значение, если поток буферизуется построчно, в
противном случае возвращается ноль.
 

Функция
 __freadable() 

возвращает ненулевое значение, если поток позволяет чтение, иначе
возвращается ноль..
 

Функция
 __fwritable() 

возвращает ненулевое значение, если поток позволяет запись, иначе
возвращается ноль..
 

Функция
 __freading() 

возвращает ненулевое значение, если поток предназначен только для
чтения или последняя операция с потоком была операцией чтения, иначе
возвращается ноль.
 

Функция
 __fwriting() 

возвращает ненулевое значение, если поток предназначен только для
записи (или только для добавления) или последняя операция с потоком
была операцией записи, иначе возвращается ноль.
 

Функция
 __fsetlocking() 

может быть использована для выбора требуемого типа блокировки
потока. Она возвращает текущий тип. Аргумент
 type 

может принимать следующие три значения:
 
 FSETLOCKING_INTERNAL 

 
При каждой операции с потоком (кроме функций *_unlocked) производить
неявную блокировку потока. Это значение используется по умолчанию.
 FSETLOCKING_BYCALLER 

 
Вызывающая программа будет сама следить за блокировкой (возможно, в
случае существования более чем одного подпроцесса (thread), с помощью
 flockfile (3),

а функции stdio не будут выполнять блокировку до тех пор, пока
состояние не будет сброшено в FSETLOCKING_INTERNAL.
 FSETLOCKING_QUERY 

 
Не изменять тип блокировки. (Только вернуть его.)
 
 

Функция
 _flushlbf() 

сбрасывает все потоки, буферизуемые построчно. (Предположительно так,
что принудительно производится вывод на терминал перед чтением ввода с
клавиатуры.)
 

Функция
 __fpurge() 

отбрасывает содержимое буфера потока.
   
 СМ. ТАКЖЕ 

 flockfile (3),

 fpurge (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
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