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
 
 
 
 utf-8 (7) >>  utf-8  (7)   ( Русские man: Макропакеты и соглашения )   utf-8  (7)   ( Linux man: Макропакеты и соглашения ) 
   
 НАЗВАНИЕ 

UTF-8 - ASCII-совместимая многобайтная кодировка Unicode
   
 ОПИСАНИЕ 

Набор символов 
 Unicode 3.0 

является 16-битным кодом. Наиболее распространенная кодировка
Unicode, известная как 
 UCS-2 ,

содержит последовательности 16-битных слов. Такие строки могут содержать 
комбинации символов (например, '\0' или '/'), которые имеют 
специальное значение в именах файлов и других параметрах функций из
библиотеки языка C.  Кроме того, большинство утилит UNIX предназначены
для обработки ASCII-файлов и не могут читать 16-битные символы без
специальной модификации. По этим причинам
 UCS-2 

является неподходящей кодировкой 
имен файлов, текстовых файлов, переменных окружения  
 Unicode 

и т.д.
Стандарт 
 ISO 10646 Universal Character Set (UCS) 

является 31-битным кодом,
а используемая для него кодировка 
 UCS-4 

(последовательность 32-битных слов) имеет те же недостатки, что и описанные выше.
Кодировка 
 Unicode 

и
 UCS  

под названием 
 UTF-8 

лишена этих недостатков и является общим методом использования
 Unicode 

в Unix-подобных операционных системах.
   
 СВОЙСТВА 

Кодировка
 UTF-8  

обладает следующими полезными свойствами:
 
 * 
 UCS -символы

с кодами от 0x00000000 до 0x0000007f (стандартный набор
 US-ASCII 

) кодируются как байты с кодами от 0x00 до 0x7f (совместимость с кодовой таблицей ASCII).
Это означает, что файлы и строки, содержащие только 7-битные ASCII-символы, будут иметь
одинаковое представление как в
 ASCII ,

так и в
 UTF-8 .

 * 
Все
 UCS -символы

с кодами > 0x7f кодируются как многобайтовые последовательности,
содержащие только байты в диапазоне от 0x80 до 0xfd, так что 
ASCII-байты не окажутся частью другого символа и, как следствие, 
не будет проблем с использованием '\0' или '/'.
 * 
Сохраняется лексикографический порядок сортировки строк кодировки
 UCS-4 .

 * 
При помощи 
 UTF-8 

могут быть закодированы все возможные 2^31 
 UCS .

 * 
В кодировке
 UTF-8 

никогда не используются байты с кодами 0xfe и 0xff.
 *  
Первый байт многобайтовой последовательности, представляющей один не-ASCII
 UCS -символ,

всегда находится в диапазоне от 0xc0 до 0xfd и указывает на длину
этой последовательности. Все последующие байты в многобайтовой 
последовательности находятся в диапазоне от 0x80 до 0xbf. Это обеспечивает 
легкую ресинхронизацию, устраняет необходимость учитывать состояние
входного потока (statelessness) и делает кодировку независимой от
пропущенных байтов.
 * 
Символы 
 UCS ,

закодированные в
 UTF-8 ,

могут быть длиной до шести байтов, однако стандарт
 Unicode 

не определяет символов выше 0x10ffff, поэтому символы Unicode
могут иметь максимальный размер в 4 байта в
 UTF-8 .

 
   
 КОДИРОВКА 

Приведенные ниже последовательности байтов используются для отображения
символов.  Конкретная последовательность зависит от
номера символа в кодировке UCS:
 
 0x00000000 - 0x0000007F: 
0 xxxxxxx 

 0x00000080 - 0x000007FF: 
110 xxxxx 

10 xxxxxx 

 0x00000800 - 0x0000FFFF: 
1110 xxxx 

10 xxxxxx 

10 xxxxxx 

 0x00010000 - 0x001FFFFF: 
11110 xxx 

10 xxxxxx 

10 xxxxxx 

10 xxxxxx 

 0x00200000 - 0x03FFFFFF: 
111110 xx 

10 xxxxxx 

10 xxxxxx 

10 xxxxxx 

10 xxxxxx 

 0x04000000 - 0x7FFFFFFF: 
1111110 x 

10 xxxxxx 

10 xxxxxx 

10 xxxxxx 

10 xxxxxx 

10 xxxxxx 

 
 

Позиции битов, обозначенные как
 xxx ,

заполняются соответствующими битами из кода символа в
двоичном виде. Используется самая короткая из возможных многобайтовых
последовательностей, которые могут представить код символа.
 

Значения кодов
 UCS 

0xd800-0xdfff (суррогаты UTF-16) также,как и 0xfffe и
0xffff (несимвольные значения UCS) не должны появляться в потоках
 UTF-8 .

   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

Символ
 Unicode 

с кодом 0xa9 = 1010 1001 (знак copyright) кодируется в UTF-8 как
 

 
11000010 10101001 = 0xc2 0xa9 ,
 

 

а символ с кодом 0x2260 = 0010 0010 0110 0000 (знак неравенства) кодируется так:
 

 
11100010 10001001 10100000 = 0xe2 0x89 0xa0
 

 
   
 ЗАМЕЧАНИЯ К ПРИЛОЖЕНИЮ 

Пользователи должны выбирать локаль
 UTF-8 ,

например в случае
 

 
export LANG=en_GB.UTF-8
 

 

для включения поддержки
 UTF-8 

в приложениях.
 

Программные приложения, которые должны знать о кодировках пользователя
должны менять локаль только так, как показано в примере:
 

 
setlocale(LC_CTYPE, "")
 

 

и тогда программист далее может проверить выражение
 

 
strcmp(nl_langinfo(CODESET), "UTF-8") == 0
 

 

для определения, выбрана-ли локаль
 UTF-8 

и будут-ли все стандартные текстовые потоки ввода и вывода, 
терминалы, содержание простых текстовых файлов, имена файлов и 
переменные окружения в кодировке
 UTF-8 .

 

Программисты, использующие однобайтовые кодировки, такие как, например,
 US-ASCII 

или
 ISO 8859 , 

должны помнить, что двойная посылка в локали
 UTF-8 

теперь считается некорректной. Во-первых, один байт теперь не обязательно соотвествует 
одному символу. Во-вторых, современные эмуляторы терминала в
 UTF-8 

также поддерживают Китайские, Японские и Корейские
 символы двойной ширины (double-width characters) 

также, как и
 комбинированные символы  

без пробелов, и вывод одного символа необязательно смещает курсор на одну позицию, как это было в
 ASCII .

Библиотечные функции, такие как
 mbsrtowcs (3)

и
 wcswidth (3),

сейчас используются для подсчета количества символов и позиций курсора.
 

Теперь стандартной ESC-последовательностью для переключения из схемы кодировки
 ISO 2022 

(которая ранее использовалась в терминалах VT100) в
 UTF-8 

будет ESC % G
("\x1b%G"). Соотвественно обратной последовательностью для переключения из
 UTF-8 

в ISO 2022 будет ESC % @ ("\x1b%@"). Остальные последовательности ISO 2022 (такие, как
для переключения в наборы G0 и G1) более не работают в режимах UTF-8.
 

Надеемся, что в ближайшем будущем
 UTF-8 

заменит
 ASCII 

и
 ISO 8859 

на всех уровнях кодировки общих символов в POSIX-системах,
что должно привести к более насыщенному выводу простого текста.
   
 БЕЗОПАСНОСТЬ 

Стандарты
 Unicode  и  UCS 

требуют, чтобы производители
 UTF-8 

использовали наименьшую возможную форму представления символов, то есть создание двухбайтной
последовательности с первым байтом, равным 0xc0 запрещено.
Стандарт
 Unicode 3.1 

расширил это правило, запрещая программам воспринимать не самую короткую форму
при вводе. Это сделано из соображений безопасности: если вводимые пользователем символы
проверяются системой безопасности на возвожные нарушения, то программам остается проверить 
только 
 ASCII 

версии символов "/../" и ";" ,или NUL, так-ка для этих символов может быть очень много
не- ASCII 

способов представления в не самой короткой кодировке
 UTF-8 .

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ISO/IEC 10646-1:2000, Unicode 3.1, RFC 2279, Plan 9.
   
 АВТОРЫ 

Markus Kuhn < mgk25@cl.cam.ac.uk >
   
 СМ. ТАКЖЕ 

 nl_langinfo (3),

 setlocale (3),

 charsets (7),

 unicode (7)

 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 СВОЙСТВА 
 КОДИРОВКА 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
 ЗАМЕЧАНИЯ К ПРИЛОЖЕНИЮ 
 БЕЗОПАСНОСТЬ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 АВТОРЫ 
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