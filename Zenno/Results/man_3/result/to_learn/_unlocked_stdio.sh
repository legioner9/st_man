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
 
 
 
 unlocked_stdio (3) >>  unlocked_stdio  (3)   ( Русские man: Библиотечные вызовы )   unlocked_stdio  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

*_unlocked - неблокирующие функции стандартного ввода-вывода
   
 СИНТАКСИС 

 #include < stdio.h > 

 int getc_unlocked(FILE * stream ); 
 int getchar_unlocked(void); 
 int putc_unlocked(int  c , FILE * stream ); 
 int putchar_unlocked(int  c ); 

 #define _BSD_SOURCE  /* or _SVID_SOURCE or _GNU_SOURCE */
 #include < stdio.h > 

 void clearerr_unlocked(FILE * stream ); 
 int feof_unlocked(FILE * stream ); 
 int ferror_unlocked(FILE * stream ); 
 int fileno_unlocked(FILE * stream ); 
 int fflush_unlocked(FILE * stream ); 
 int fgetc_unlocked(FILE * stream ); 
 int fputc_unlocked(int  c , FILE * stream ); 
 size_t fread_unlocked(void * ptr , size_t  size , size_t  n , 
   FILE * stream ); 
 size_t fwrite_unlocked(const void * ptr , size_t  size , size_t  n , 
   FILE * stream ); 

 #define _GNU_SOURCE 
 #include < stdio.h > 

 char *fgets_unlocked(char * s , int  n , FILE * stream ); 
 int fputs_unlocked(const char * s , FILE * stream ); 

 #define _GNU_SOURCE 
 #include < wchar.h > 

+.BI "wint_t getwc_unlocked(FILE *" stream );
+.BI "wint_t getwchar_unlocked(void);"
+.BI "wint_t fgetwc_unlocked(FILE *" stream );
+.BI "wint_t fputwc_unlocked(wchar_t " wc ", FILE *" stream );
+.BI "wint_t putwc_unlocked(wchar_t " wc ", FILE *" stream );
+.BI "wint_t putwchar_unlocked(wchar_t " wc );
+.BI "wchar_t *fgetws_unlocked(wchar_t *" ws ", int " n ", FILE *" stream );
+.BI "int fputws_unlocked(const wchar_t *" ws ", FILE *" stream );
 

   
 ОПИСАНИЕ 

Все эти функции ведут себя так же, как и их аналоги без суффикса
`_unlocked', за исключением того, что они не используют блокировку
(они не устанавливают блокировки самостоятельно и не проверяют
наличие других блокировок) и, таким образом, не являются безопасными
с точки зрения подпроцессов.
См.
 flockfile (3).

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Функции  getc_unlocked (),  getchar_unlocked (),
 putc_unlocked (),  putchar_unlocked () влючены в POSIX.1.
На некоторых вариантах систем Unix встречаются нестандартные
 *_unlocked(). Они содержатся в последних версиях glibc. 



Вероятно, не стоит их использовать.
   
 СМ. ТАКЖЕ 

 flockfile (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
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