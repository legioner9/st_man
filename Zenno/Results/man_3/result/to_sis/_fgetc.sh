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
 
 
 
 fgetc (3)   fgetc  (3)   ( Solaris man: Библиотечные вызовы )   fgetc  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  fgetc  (3)   ( Русские man: Библиотечные вызовы )   fgetc  (3)   ( Linux man: Библиотечные вызовы )   fgetc  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

fgetc, fgets, getc, getchar, gets, ungetc - функции для ввода символов и строк
   
 СИНТАКСИС 

 #include < stdio.h > 

 int fgetc(FILE * stream ); 
 char *fgets(char * s , int  size , FILE * stream ); 
 int getc(FILE * stream ); 
 int getchar(void); 
 char *gets(char * s ); 
 int ungetc(int  c , FILE * stream ); 
 

   
 ОПИСАНИЕ 

 fgetc() 

считывает очередной символ из потока 
 stream  

и возвращает преобразованный
 unsigned char 

в 
 int 

или возвращает константу
 EOF 

по достижении конца файла или при возникновении ошибки.
 

 getc() 

похожа на 
 fgetc() ,

но она может быть реализована как макрос, который определяет состояние
 stream 

более одного раза.
 

 getchar() 

эквивалентна 
 getc( stdin ) .

 

 gets()  

считывает строку из 
 stdin 

и записывает ее в буфер, на который указывает 
 s, 

пока не встретится символ новой строки или 
 EOF ,

которые заменяются значением 
 '\0' .

Проверка на переполнение буфера не производится (см. 
 ЗАМЕЧАHИЯ 

ниже).
 

 fgets() 

считывает максимум
 size - 1 

символов из
 stream 

и заносит их в буфер, на который указывает 
 s .

Чтение прерывается по достижении 
 EOF 

или символа новой строки.  Если считан символ новой строки, то он заносится в
буфер. В конце к строке добавляется
 '\0' .

 

 ungetc() 

заносит 
 c 

обратно в 
 stream ,

преобразует в 
 unsigned char ,

если это возможно для дальнейших операций чтения. Занесенные обратно символы
будут возвращаться в обратном порядке; гарантируется только одно занесение 
символов.
 

Вызовы функций, описанные здесь, могут смешиваться друг с другом и с другими
функциями ввода из библиотеки 
 stdio 

для того же потока ввода. 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 fgetc() ,  getc()  и  getchar() 

возвращают символ, считанный как
 unsigned char 

и преобразованный в
 int ;

а также возвращают
 EOF 

по достижении конца файла или при возникновении ошибки.
 

 gets()  и  fgets() 

возвращают 
 s 

при удачном завершении операции и
 NULL 

при ошибке или если достигнут конец файла, а символы остались несчитанными.
 

 ungetc() 

возвращает
 c 

при удачном завершении операции или
 EOF 

при возникновении ошибки.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ANSI - C, POSIX.1
   
 НАЙДЕННЫЕ ОШИБКИ 

Hикогда не применяйте в работе 
 gets() ,

потому что без предварительного знакомства с данными невозможно узнать, 
какое количество символов считает
 gets() ,

а также потому, что
 gets() 

будет продолжать заносить символы в буфер даже по достижении его конца, что 
представляет собой большую опасность. Эта функция использовалась для
взлома систем безопасности компьютера. Вместо этой функции используйте
 fgets() . 

 

Hе рекомендуется чередовать вызовы функций ввода библиотеки 
 stdio 

с низкоуровневыми вызовами 
 read()  

для описателя файла, связанного с потоком ввода; результат этого будет
неопределенным и, скорее всего, не тем, который ожидается.
   
 СМ. ТАКЖЕ 

 read (2),

 write (2),

 fopen (3),

 fread (3),

 scanf (3),

 puts (3),

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