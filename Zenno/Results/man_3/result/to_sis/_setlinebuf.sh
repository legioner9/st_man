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
 
 
 
 setlinebuf (3)   setlinebuf  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  setlinebuf  (3)   ( Русские man: Библиотечные вызовы )   setlinebuf  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

setbuf, setbuffer, setlinebuf, setvbuf - операции с буферами потока
   
 СИНТАКСИС 


 #include < stdio.h > 

 
 void setbuf(FILE * stream , char * buf ); 

 

 void setbuffer(FILE * stream , char * buf , size_t size ); 

 

 void setlinebuf(FILE * stream ); 

 

 int setvbuf(FILE * stream , char * buf , int  mode 

 , size_t  size ); 


   
 ОПИСАНИЕ 

Существует три типа буферизации: нулевая буферизация (ее отсутствие),
буферизация блока и буферизация строки. Когда выводимые данные не
буферизируются, то информация незамедлительно оказывается на терминале
(или в файле назначения); когда производится буферизация блока, то
сохраняется большое количество символов (их блок), при строчной
буферизации все символы сохраняются в буфере до перевода строки. Функция
 fflush (3)

принуждает закончить буферизацию блока раньше (см. 
 fclose (3)).

Обычно все файлы буферизуются блоком. При операции I/O над файлом
производится вызов 
 malloc (3),

затем принимается буфер. Если поток ссылается на терминал (как это делает
 stdout ),

то первый буферизируется построчно. Стандартный поток ошибок
 stderr 

по умолчанию никогда не буферизуется.
 

Функция
 setvbuf 

может быть использована над любым открытым потоком для
изменения типа буферизации. Параметр
 mode 

должен быть одним из трех следующих макросов:
 
 
 _IONBF 

 
(отключить буферизацию);
 _IOLBF 

 
(строчная буферизация);
 _IOFBF 

 
(блочная буферизация).
 
 

 

Аргумент 
 buf 

должен указывать на буфер (кроме случаев, когда буферизация отключается)
размером, как минимум, равным 
 size 

байтам; и этот буфер будет использоваться вместо текущего.  Если аргумент
 buf 

равен 
 NULL ,

то это отразится только на буферизации; при следующей операции считывания
или записи будет создан новый буфер.
Функция
 setvbuf 

может быть использована после открытия потока и до 
выполнения над ним любых операций.
 

Следующие три вызова идентичны по сути вызову
 setvbuf .

Функция
 setbuf 

в точности соответствует вызову
 

 
setvbuf(stream, buf, buf ? _IOFBF : _IONBF, BUFSIZ);
 

 

Функция
 setbuffer 

также аналогична ей, но размер буфера в данном случае определяется
вызовом, а не размером по умолчанию
 BUFSIZ .

Функция
 setlinebuf 

полностью идентична вызову
 

 
setvbuf(stream, (char *)NULL, _IOLBF, 0);
 

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция
 setvbuf 

возвращает 0 при нормальном завершении работы.
При ошибках она может возвратить любое значение, 
но также она возвращает ненулевое значение, когда
 mode 

неверно или когда запрос некорректен. При ошибках
 errno 

может быть соответственно изменено.
Другие функции не возвращают никаких значений.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Функции
 setbuf 

и
 setvbuf 

соответствуют стандарту ANSI X3.159-1989 (``ANSI C'').
   
 НАЙДЕННЫЕ ОШИБКИ 

Функции
 setbuffer 

и
 setlinebuf 

не подходят к версиям BSD до 4.2BSD, и доступны в Linux 
только с версии 4.5.21. В системах 4.2BSD and 4.3BSD
 setbuf 

по умолчанию всегда использует оптимальный размер буфера, и поэтому
этого вызова функции следует избегать.

Вы должны удостовериться, что 
 buf 

и позиция, на которую он указывает, все еще существуют, в то время как
 поток 

закрыт, что обычно случается при закрытии программы.

Например, следующее будет неправильным:
 
#include < stdio.h >
int main()
{
    char buf[BUFSIZ];
    setbuf(stdin, buf);
    printf("Hello, world!\n");
    return 0;
}
 

 
   
 СМ. ТАКЖЕ 

 fclose (3),

 fflush (3),

 fopen (3),

 fread (3),

 malloc (3),

 printf (3),

 puts (3)

 

 
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