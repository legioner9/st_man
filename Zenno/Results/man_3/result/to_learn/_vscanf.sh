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
 
 
 
 vscanf (3)   vscanf  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  vscanf  (3)   ( Русские man: Библиотечные вызовы )   vscanf  (3)   ( Linux man: Библиотечные вызовы )   vscanf  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

scanf, fscanf, sscanf, vscanf, vsscanf, vfscanf - ввод с преобразованием формата
   
 СИНТАКСИС 

 #include < stdio.h > 
 int scanf(const char * format , ... ); 
 
 int fscanf(FILE * stream , const char * format , ... ); 
 
 int sscanf(const char * str , const char * format , ... ); 

 #include < stdarg.h > 
 int vscanf(const char * format , va_list  ap ); 
 
 int vsscanf(const char * str , const char * format , va_list  ap ); 
 
 int vfscanf(FILE * stream , const char * format , va_list  ap ); 
 

   
 ОПИСАНИЕ 

Группа функций
 scanf 

считывает вводимую информацию в соответствии с форматом
 format 

так, кaк описано ниже.  Этот формат может включать в себя
 определители преобразования ;

результаты каждого преобразования, если они производились,
будут сохраняться c помощью параметров
 указателя .

Функция
 scanf 

считывает информацию, прибывающую из стандартного потока ввода
 stdin ;

 fscanf 

считывает информацию из потока, на который указывает
 stream ,

а
 sscanf 

считывает информацию из символьной строки, на которую указывает
 str .

 

Функция
 vfscanf 

является аналогом
 vfprintf (3)

и читает информацию из потока, на который указывает
 stream ,

используя список указателей (см.
 stdarg (3)).

Функция
 vscanf 

считывает список переменных аргументов из стандартного ввода, а функция
 vsscanf 

считывает его из строки. Эти функции являются аналогами функций
 vprintf 

и
 vsprintf 

соответственно.
 

Каждый последующий
 указатель 

на аргумент должен полностью соответствовать определителю преобразования
(однако, обратите внимание на знак отключения ("supressor"), описанный ниже).
Все определители обозначены символом
 % 

(знаком процента). Строка
 format 

может также содержать другие символы.
Пустые символы (такие, как пробел,
табуляция или перевод строки) в строке
 format 

соответствуют любому количеству пустых символов (даже нулю) в строке ввода.
Все остальные символы соответствуют только сами себе.
Считывание прекращается, когда вводимый символ не соответствует форматному символу.
Считывание также прекращается, если преобразование входящих данных не
может быть произведено (см. ниже).
   
 ПРЕОБРАЗОВАНИЯ 

После символа
 % ,

обозначающего преобразование, может быть некоторое количество символов
 flag 

из множества, обозначенного ниже:
 
 * 

 
- знак отключения, или "подавитель" (supressor).  Последующее преобразование работает 
как обычно, но
указатель уже не используется. Результат преобразования не учитывается.
 a  

 
(glibc) Обозначает, что преобразование будет равно
 s ,

необходимая область памяти для строки будет выделена посредством malloc,
а указатель на него станет указателем на переменную
 char ,

которая не должна быть заранее инициализирована.
Этого преобразователя нет в 
 ANSI C 

(C89) и он имеет другое значение в C99. 
 a  

 
(C99) Эквивалентно
 f .

 h 

 
Обозначает, что преобразователь будет равен
 dioux 

или
 n 

и следующий указатель является указателем на
 short  int 

(не на
 int ).

 l 

 
Обозначает, что преобразователь будет 
 dioux 

или
 n 

и следующий указатель обозначает
 long int 

(не 
 int ),

или на то, что преобразователь будет одним из
 efg 

и следующий указатель обозначает
 double 

(не 
 float ).

Два флага 
 l 

эквивалентны флагу 
 L. 

 L 

 
Обозначает, что преобразователь будет либо
 efg 

(и следующий указатель будет являться указателем на
 long double), 

либо преобразователь будет 
 dioux 

и следующий указатель является указателем на
 long long .

Обратите внимание на то, что тип long long не является типом 
 ANSI C .

Программу, использующую его, нельзя перенести ни в какую другую архитектуру. 
 q 

 
Является эквивалентом L.
Этот флаг отсутствует в
 ANSI C .

 
 

Дополнением к этим флагам может быть необязательная максимальная ширина поля,
выраженная целым десятичным числом и расположенная между знаком
 % 

и преобразованием. Если ширина не указана, по умолчанию используется "бесконечность";
в противном случае  соответствующее количество символов считывается в
процессе преобразования. До начала преобразования большинство преобразователей
пропускают пробелы; эти пробелы не учитываются при определении ширины поля.
 

Существуют следующие преобразователи:
 
 % 

 
(определяет символ `%'. То есть `%%' в форматной строке соответствует
символу `%' на входе);
 d 

 
(преобразователь знаковых десятичных целых;
указатель должен являться указателем на переменную типа
 int );

 D 

 
(является эквивалентом
 ld ;

оно оставлено только для совместимости с предыдущими версиями.
Примечание: только для libc4. В libc5 и glibc  %D игнорируется,
поэтому старые программы могут не работать.);
 i 

 
(преобразователь знакового целого числа; следующий указатель должен быть указателем на
 int .

Целое число читается в шестнадцатеричной системе исчисления, если оно начинается с `0x' 
или `0X';
в восьмеричной системе, если оно начинается с `0'; в любом другом случае -
в десятичной системе.  Используются только те символы,
которые соответствуют используемой системе.);
 o 

 
(соответствует беззнаковому восьмеричному числу;
следующий указатель должен являться указателем на
 unsigned int .);

 u 

 
(соответствует беззнаковому десятичному числу;
следующий указатель должен являться указателем на
 unsigned int .);

 x 

 
(соответствует беззнаковому шестнадцатеричному числу;
следующий указатель должен являться указателем на
 unsigned int .);

 X 

 
Эквивалентно
 x .

 f 

 
соответствует числу с плавающей точкой, необязательно со знаком;
следующий указатель должен являться указателем на
 float .

 e 

 
Эквивалентно
 f .

 g 

 
Эквивалентно
 f .

 E 

 
Эквивалентно
 f .

 s 

 
(соответствует последовательности "непустых" символов;
далее следует указатель на
 char ,

а массив должен быть достаточно большим, чтобы вместить всю входящую
последовательность, включая завершающий символ
 NULL .

Вводимая строка останавливается либо на пустом символе либо при достижении
максимальной ширины поля.);
 c 

 
(соответствует последовательности из 
 width 

символов (по умолчанию 1); далее следует указатель на
 char ;

для вмещения всех символов (к ним не добавляется завершающий
 NULL )  

должно быть достаточно места.
Обычный пропуск начальных "пустых" символов отключен, поэтому для
пропуска "пустых" символов в начале используйте явный пробел в формате.);
 [ 

 
(определяет "непустую" последовательность из определенного набора
принятых символов; далее следует указатель на
 char ;

для вмещения всех символов, включая завершающий
 NULL ,

должно быть достаточно места.
Обычный пропуск начальных пустых символов отключен.
Строка должна быть из символов в конкретном наборе или не в наборе;
набор определяется символами между скобками
 [ 

и
 ] .

Множество
 исключает из себя 

символы, если сразу после открывающейся скобки стоит символ 
 ^  

(циркумфлекс).
Чтобы включить закрывающую скобку в набор, поставьте ее сразу
после открывающей скобки или циркумфлекса; в любой другой позиции закрывающая
скобка будет обозначать конец набора.
Символ дефиса
( - )

также является специальным; когда он расположен между двумя другими
символами, он добавляет все промежуточные символы к набору.  Чтобы
включить дефис в набор, поставьте его на последнее место перед
закрывающей скобкой. Например, `[^]0-9-]' означает набор `все символы,
кроме закрывающей скобки, кроме чисел от нуля до 9-и и кроме дефиса'.
Строка заканчивается либо при появлением символа, не включенного (или
если с циркумфлексом, то включенного) в набор, либо при достижении
максимальной ширины поля.);
 p 

 
(соответствует значению указателя в формате `%p' для
 printf (3);

далее должен следовать указатель на
 void );

 n 

 
(ничего не ожидается; вместо этого символы, принятые до этого
момента с ввода, сохраняются с помощью последующего указателя на
 int ).

Это
 не 

преобразование, хотя оно также может быть "подавлено" при использовании флага
 * .

В стандарте C сказано: `Использование директивы %n не увеличивает
показания счетчика назначения, возвращаемые при завершении работы',-
но, видимо, это большая ошибка.
 
 

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Эти функции возвращают число полученных элементов ввода, количество 
которых может быть в действительности меньше количества принятых
элементов или даже нуля (в случае ошибки). Ноль обозначает, что,
несмотря на доступность данных, никаких преобразований не было сделано;
обычно такое бывает из-за неправильности входящих символов, например,
алфавитных символов для преобразования `%d'. Значение
 EOF 

возвращается в том случае, если до начала каких-либо преобразований
произошла ошибка, например, наступает конца файла.
Если происходит ошибка или наступает конец файла после нескольких
преобразований, то число удачно завершенных преобразований возвращается. 
   
 СМ. ТАКЖЕ 

 strtol (3),

 strtoul (3),

 strtod (3),

 getc (3),

 printf (3)

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Функции
 fscanf ,

 scanf ,

и
 sscanf 

соответствуют стандарту ANSI X3.159-1989 (``ANSI C'').
 

Флаг
 q 

указывается
 BSD 4.4 

для
 long long ,

а флаги
 ll 

или 
 L 

с преобразованиями чисел указываются в GNU
 

Версия этих функций в Linux основана на 
 GNU 

-библиотеке
 libio .

Более краткое описание можно найти в
 info 

-документации
 GNU 

 libc (glibc-1.08).  

   
 НАЙДЕННЫЕ ОШИБКИ 

Все функции полностью совместимы с ANSI X3.159-1989,
но, кроме этого, они определяют дополнительные флаги 
 q 

и
 a 

так же, как и измененное поведение флагов
 L 

и
 l . 

Последнее можно считать ошибкой, так как в этом случае поведение флагов,
определенное в ANSI X3.159-1989, меняется.
 

Некоторые комбинации флагов, определенные в
 ANSI C , 

не имеют смысла даже для этого стандарта 
(например,
 %Ld ).

Они могут иметь вполне определенное поведение в Linux, но это не значит,
что они будут вести себя так же и в других системах. Поэтому лучше
использовать флаги, не определенные в
 ANSI C , 

т.е. использовать 
 q 

вместо 
 L 

в комбинации с преобразованиями 
 diouxX 

или
 ll .

 

Использование
 q 

в системе
 BSD 4.4 

не похоже на описанное ранее, поскольку
данный флаг может быть использован 
при изменяемых преобразованиях аналогично
 L .

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПРЕОБРАЗОВАНИЯ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 СМ. ТАКЖЕ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 НАЙДЕННЫЕ ОШИБКИ 
 
 
 
 
 
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