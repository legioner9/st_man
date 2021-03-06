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
 
 
 
 strfmon (3)   strfmon  (3)   ( Solaris man: Библиотечные вызовы )   strfmon  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  strfmon  (3)   ( Русские man: Библиотечные вызовы )   strfmon  (3)   ( Linux man: Библиотечные вызовы )   strfmon  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

strfmon - преобразует денежное значение в строку
   
 СИНТАКСИС 

 #include < monetary.h > 

 ssize_t strfmon(char * s , size_t  max , const char * format , 
 ...); 
 

   
 ОПИСАНИЕ 

Функция  strfmon()  форматирует определенные суммы соответственно
определенному формату  format  и помещает результат в символьный
массив  s  размера  max .
 

Обычные символы заданные в аргументе  format  копируются в  s 
без преобразования. Спецификаторы преобразования начинаются с символа `%'.
Непосредственно за ними могут следовать ноль или более флагов:
 
 = f 

 
Символ
 f 

используется в качестве символа-заполнителя (для выравнивания слева, см.
ниже). Когда символ не определен, используется символ пробела.
 ^ 

 
Не использовать никакие групповые символы, которые могут быть определены
в текущей локали. По умолчанию, разделение на группы разрядов разрешено.
 (  или  + 

 
Флаг ( указывает на то, что отрицательные суммы должны быть заключены в
скобки. Флаг + указывает на то, что сумма должна быть со знаком, это
зависит от локали, например, может быть так, что в результате ничего не
будет для положительных сумм и "-" для отрицательных.
 ! 

 
Опускать символ валюты.
 - 

 
Выравнивание по левому краю для всех полей. По умолчанию, выравнивание
по правому краю.
 
 

Далее может быть указана ширина поля: десятичное число, определяющее
минимальную ширину поля в байтах. По умолчанию - 0. Если результат
меньше чем ширина, то он дополняется пробелами (слева, если установлен
флаг выравнивания по левому краю).
 

Далее может быть указана ширина целой части суммы: символ "#" за которым
следует десятичное число. Если в сумме меньше цифр, чем задано, тогда
сумма дополняется слева символом-заполнителем. Групповые символы не
учитываются при подсчете ширины поля.
 

Далее может быть указана точность десятичной части: символ "." за
которым следует десятичное число. Сумма будет округлена до определенного
числа знаков. По умолчанию, это определено в элементах
 frac_digits 

и
 int_frac_digits 

текущей локали. Если десятичная точность равна 0, то разделитель целой и
дробной части не печатается. (Символ-разделитель определяется переменной
LC_MONETARY и может отличаться от символа определенного в переменной
LC_NUMERIC.)
 

И наконец, определение преобразования может заканчиваться символом
преобразования. Существует три символа преобразования:
 
 % 

 
(Если в строку необходимо включить этот символ, то необходимо его
удвоить "%%".) Помещает символ `%' в строку-результат.
 i 

 
Аргумент вещественного типа преобразуется с использованием локального
интернационального формата валюты.
 n 

 
Аргумент вещественного типа преобразуется с использованием локального
национального формата валюты.
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  strfmon()  возвращает количество символов, помещенных в 
массив  s , не включая символ окончания строки NUL, который
заканчивает строку. Иначе она устанавливает
 errno 

в значение E2BIG, возвращает -1, а содержимое массива неопределено.
   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

Вызов
 
 strfmon(buf, sizeof(buf), "[%^=*#6n] [%=*#6i]",
        1234.567, 1234.567);
 

 

выведет
 
[ fl **1234,57] [ NLG  **1 234,57]
 

в голландской локали (с fl для флоринов (florijnen) и NLG для
нидерландских гульденов). Групповой символ может выглядеть очень
некрасиво. Неожиданно, что "fl" стоит впереди и за ним следует пробел, а
"NLG" стоит впереди и за ним следует два пробела. Это может быть ошибка
в файлах локали. Примеры для итальянской, австралийской, швейцарской и
португальской локалей
 
[ L. **1235] [ ITL  **1.235]
 

[ $**1234.57] [ AUD **1,234.57]
 

[Fr. **1234,57] [CHF  **1.234,57]
 

[ **1234$57Esc] [ **1.234$57PTE ]
 

   
 СМ. ТАКЖЕ 

 setlocale (3),

 sprintf (3),

 locale (7)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
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