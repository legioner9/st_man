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
 
 
 
 regfree (3)   regfree  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  regfree  (3)   ( Русские man: Библиотечные вызовы )   regfree  (3)   ( Linux man: Библиотечные вызовы )   regfree  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

regcomp, regexec, regerror, regfree - функции регулярных выражений POSIX
   
 СИНТАКСИС 

 #include < sys/types.h > 

 

 #include < regex.h > 

 


 
u

 int regcomp(regex_t * preg , const char * regex , 

 int  cflags ); 



 
u

 int regexec(const regex_t * preg , const char * string , 

 size_t  nmatch , regmatch_t  pmatch[] , 

 int  eflags ); 



 
u

 size_t regerror(int  errcode , 

 const regex_t * preg , char * errbuf , 

 size_t  errbuf_size ); 



 


 void regfree(regex_t * preg ); 

   
 КОМПИЛИРОВАНИЕ РЕГУЛЯРНОГО ВЫРАЖЕНИЯ POSIX 

 regcomp 

используется для обработки регулярного выражения
и придания ей формы, которая пригодна для последующих
 regexec -поисков.

 regcomp 

поддерживается:
 preg ,

указателем на область хранения буферного шаблона;
 regex ,

указателем на заканчивающуюся null строку, и
 cflags ,

флагами, используемыми для определения типа обработки.
Все поиски регулярных выражений должны выполняться с помощью
обработанного буферного шаблона таким образом, чтобы
 regexec 

всегда поддерживалась адресом инициализированного функцией
 regcomp 

буферного шаблона.
 cflags 

являются поразрядным
 ИЛИ 

одного или нескольких выражений:
 
 REG_EXTENDED 

 
(использовать синтаксис расширенных регулярных рыражений
 POSIX 

во время интерпретации
 regex .

Если не включен этот флаг, то
используется синтаксис простых регулярных выражений
 POSIX .);

 REG_ICASE 

 
(не учитывать регистр. Последующие поиски
 regexec 

с использованием данного буферного шаблона не будут зависеть от регистра.);
 REG_NOSUB 

 
(не требовать поддержки адресации внутристрочных совпадений.
Параметры
 nmatch 

и
 pmatch 

для
 regexec 

игнорируются, если данный буферный шаблон был скомпилирован с
этим включенным флагом.);
 REG_NEWLINE 

 
(операторы любых символов не равны новой строке.
Список символов
( [^...] ) , 

содержащий новую строку, не просто совпадает с новой строкой.
Операторы сравнения по началу строк
( ^ )

принимают совпадение с пустой строкой сразу после начала строки
независимо от того, что
 eflags ,

флаг выполнения
 regexec ,

содержит
 REG_NOTBOL .

Оператор конца линии
( $ )

считается равным пустой строке (до символа начала строки) 
независимо от того, что
 eflags 

содержит
 REG_NOTEOL .

 
   
 СООТВЕТСТВИЕ РЕГУЛЯРНОГО ВЫРАЖЕНИЯ POSIX 

 regexec 

используется для сравнения строки, завершающейся нулем, с предварительно
обработанным буферным шаблоном
 preg .

 nmatch 

и
 pmatch 

используются для получения информации о
местонахождении любых совпадений.
 eflags 

может быть поразрядным
 ИЛИ 

одного из значений
 REG_NOTBOL 

и
 REG_NOTEOL 

или их обоих. 
Данные значения определяют поведение процесса сравнения так, как описано ниже.
 
 REG_NOTBOL 

 
(не учитывается оператор начала новой строки
(но см. описанный выше флаг обработки
 REG_NEWLINE ).

Этот флаг может использоваться, когда в
 regexec 

обрабатываются отдельные части строк,
и начало таких частей в данном случае не должно 
интерпретироваться как начало новой строки.);
 REG_NOTEOL 

 
(не учитывается оператор конца строки
(но см. описанный выше флаг обработки
 REG_NEWLINE )).

 
   
 BYTE OFFSETS 

Если только
 REG_NOSUB 

не установлен для обработки буферного шаблона, 
возможно получать информацию о положении внутристрочных совпадений.
 pmatch 

должно быть определено так, чтобы иметь, по крайней мере,
 nmatch 

элементов. Они заполняются
 regexec -адресами

внутристрочных совпадений. Любые неиспользованные элементы
структуры будут содержать значение -1. Структура
 regmatch_t ,

являющаяся типом
 pmatch ,

определена в 
 regex.h следующим образом: 

 
 typedef struct 

 

 { 

 

   regoff_t  rm_so ; 

 

   regoff_t  rm_eo ; 

 

 } 

 regmatch_t; 

 

Каждый элемент
 rm_so ,

не равный -1, показывает смещение начального совпадения наибольшей подстроки
внутри заданной строки. Относительный элемент
 rm_eo 

указывает на смещение конца совпадения.
   
 СООБЩЕНИЕ ОБ ОШИБКАХ POSIX 

 regerror 

используется для преобразования кодов ошибок, 
которые могут быть получены от
 regcomp 

и
 regexec ,

в строки сообщений об ошибках. Через
 regerror 

проходят: код ошибки
 errcode ,

буферный шаблон
 preg ,

указатель на символьный буфер строки
 errbuf 

и размер буфера строки
 errbuf_size .

Возвращается размер
 errbuf ,

который требуется для содержащейся строки, с сообщением об ошибке. Если и
 errbuf ,

и
 errbuf_size 

не равны нулю, то
 errbuf 

заполняется первыми
 errbuf_size - 1 -

символами сообщения об ошибке и завершаются нулем.
   
 ВЫСВОБОЖДЕНИЕ БУФЕРА ШАБЛОНА POSIX 

Предоставив
 regfree 

предварительно обработанный буферный шаблон,
 preg 

освободит память, отведенную этому шаблону во время процесса компиляции
 regcomp .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 regcomp 

возвращает ноль при успешной компиляции или код ошибки при возникновении ошибок.
 regexec 

возвращает ноль при совпадениях или
 REG_NOMATCH ,

если совпадений не было.
   
 НАЙДЕННЫЕ ОШИБКИ 

 regcomp 

может возвращать следующие ошибки:
 
 REG_BADRPT 

 
(неправильное использование операторов повторения, таких, как
` * ',

в качестве первых символов);
 REG_BADBR 

 
(неправильное использование операторов обратных ссылок);
 REG_EBRACE 

 
(неправильные операторы обработки количества скобок);
 REG_EBRACK 

 
(неправильные операторы списка скобок);
 REG_ERANGE 

 
(неправильное использование операторов области: в этом случае
конец области появляется прежде ее начала);
 REG_ECTYPE 

 
(неизвестное имя класса символов);
 REG_ECOLLATE 

 
(неправильная сортировка элементов);
 REG_EPAREN 

 
(неправильные операторы групп скобок);
 REG_ESUBREG 

 
(неправильная обратная ссылка на подвыражение);
 REG_EEND 

 
(ошибка не определена в POSIX.2);
 REG_EESCAPE 

 
(конечная обратная косая черта);
 REG_BADPAT 

 
(неправильное использование операторов шаблона, таких, как операторы
группы или списка);
 REG_ESIZE 

 
(скомпилированное регулярное выражение требует буферный шаблон
размером, большим 64 Кб. Это не определено в POSIX.2);
 REG_ESPACE 

 
(для процедур регулярных выражений закончилась память).
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX.2
   
 СМ. ТАКЖЕ 

 regex (7),

 GNU regex manual 

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 КОМПИЛИРОВАНИЕ РЕГУЛЯРНОГО ВЫРАЖЕНИЯ POSIX 
 СООТВЕТСТВИЕ РЕГУЛЯРНОГО ВЫРАЖЕНИЯ POSIX 
 
 BYTE OFFSETS 
 
 СООБЩЕНИЕ ОБ ОШИБКАХ POSIX 
 ВЫСВОБОЖДЕНИЕ БУФЕРА ШАБЛОНА POSIX 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
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