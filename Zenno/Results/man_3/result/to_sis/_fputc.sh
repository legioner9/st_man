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
 
 
 
 fputc (3)   fputc  (3)   ( Solaris man: Библиотечные вызовы )   fputc  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  fputc  (3)   ( Русские man: Библиотечные вызовы )   fputc  (3)   ( Linux man: Библиотечные вызовы )   fputc  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

fputc, fputs, putc, putchar, puts - выводят символы или строки
   
 СИНТАКСИС 

 #include < stdio.h > 

 int fputc(int  c , FILE * stream ); 
 int fputs(const char * s , FILE * stream ); 
 int putc(int  c , FILE * stream ); 
 int putchar(int  c ); 
 int puts(const char * s ); 
 

   
 ОПИСАНИЕ 

 fputc() 

выводит символ
 c ,

приведенный к виду
 unsigned char ,

в поток
 stream .

 

 fputs() 

выводит строку
 s 

в поток
 stream 

без завершающего символа
 '\0' .

 

Функция
 putc() 

эквивалентна
 fputc() , 

так что она может быть реализована как макрос.
 

 putchar( c ); 

полностью эквивалентна
 putc( c , stdout ). 

 

 puts() 

записывает строку
 s 

и завершающий перевод строки в
 stdout .

 

Функции, перечисленные выше, могут быть использованы друг с другом
или вместе с другими функциями ввода/вывода из библиотеки
 stdio . 

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 fputc() ,  putc()  и  putchar() 

возвращают символ, описанный как
 unsigned char 

и приведенный к типу
 int , 

или
 EOF 

в случае ошибки.
 

 puts()  и  fputs() 

возвращают неотрицательное число  в случае удачного завершения вызова или
 EOF 

в случае ошибки.
 

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ANSI - C, POSIX.1
   
 НАЙДЕННЫЕ ОШИБКИ 

Не рекомендуется использовать функции из библиотеки
 stdio 

вместе с низкоуровневыми функциями
 write() 

для описателя файла, ассоциированного с одним и тем же потоком вывода:
результат будет непредсказуем и вряд ли Вам понравится.
   
 СМ. ТАКЖЕ 

 write (2),

 fopen (3),

 fwrite (3),

 scanf (3),

 gets (3),

 fseek (3),

 ferror (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 НАЙДЕННЫЕ ОШИБКИ 
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