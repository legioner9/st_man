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
 
 
 
 od (1)   od  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   od  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  od  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   od  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   od  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня ) 
   
 ИМЯ 

od - дамп файлов в восьмеричный и другие форматы
   
 СИНТАКСИС 

 od 

[ПЦИЯ]... [ ФАЙЛ ]...
 

 od 

[ -abcdfilosx ]... [ ФАЙЛ ] [[ + ] СМЕЩЕНИЕ [ . ][ b ]]
 

 od 

 --traditional  [ ОПЦИЯ ]... [ ФАЙЛ ] [[ + ] СМЕЩЕНИЕ [ . ][ b ] [ + ][ МЕТКА ][ . ][ b ]]
   
 ОПИСАНИЕ 


 

Печатает однозначное (по умолчанию байтовое восьмеричное) представление ФАЙЛА
на стандартный вывод. Если на входе более, чем один ФАЙЛ,
объединяет их по указанным правилам в форму ввода.
С не ФАЙЛ, или когда ФАЙЛ - -, считывает стандартный ввод.
 

Все аргументы для длинных ключей обязательны и для коротких ключей.
 
 -A ,  --address-radix = ОСНОВАНИЕ 
выводить смещения в файлах в заданной системе
счисления
 -j ,  --skip-bytes = Ч 
пропустить первые Ч байт
 -N ,  --read-bytes = Ч 
считывать только Ч байт в каждом файле
 -S ,  --strings [= Ч ] 
выводить строки длиной по меньшей мере Ч графических знаков
 -t ,  --format = ТИП 
выбор формата или форматов вывода
 -v ,  --output-duplicates 
не помечать знаком * невыводимые строки
 -w ,  --width [= Ч ] 
выводить Ч байт в каждой выходной строке
 --traditional 
принимать аргументы в традиционной форме
 --help 
показать справку и выйти
 --version 
показать информацию о версии и выйти
 
   
 Традиционные спецификации формата можно писать вперемешку, они аккумулируются: 

 
 -a 
синоним  -t  a,  именованные символы
 -b 
синоним  -t  o1, восьмеричные байты
 -c 
синоним  -t  c,  ASCII-символы или управляющие последовательности с `'
 -d 
синоним  -t  u2, беззнаковые десятичные двухбайтовые единицы
 -f 
синоним  -t  fF, числа с плавающей точкой
 -i 
синоним  -t  dI, десятичные целые
 -l 
синоним  -t  dL, десятичные длинные целые
 -o 
синоним  -t  o2, восьмеричные двухбайтовые единицы
 -s 
синоним  -t  d2, десятичные двухбайтовые единицы
 -x 
синоним  -t  x2, шестнадцатеричные двухбайтовые единицы
 
 

Если применимы и первая, и вторая формы вызова, предполагается вторая
форма, если последний операнд начинается на + или (если заданы два
операнда) на цифру.  Операнд СМЕЩЕНИЕ означает  -j  СМЕЩЕНИЕ.  МЕТКА --
это псевдоадрес первого напечатанного байта, увеличивается в процессе
вывода.  Префикс 0x или 0X задает СМЕЩЕНИЕ или МЕТКУ как
шестнадцатеричные числа, суффикс `.' -- как восьмеричные, а суффикс b
умножает на 512.
 

ТИП может состоять из одного или более следующих описаний:
 
 a 
именованный символ
 c 
ASCII-символ или управляющая последовательность с `'
 d[ЧИСЛО] 
знаковое десятичное целое размером заданное ЧИСЛО байт
 f[ЧИСЛО] 
число с плавающей точкой размером заданное ЧИСЛО байт
 o[ЧИСЛО] 
восьмеричное целое размером заданное ЧИСЛО байт
 u[ЧИСЛО] 
беззнаковое десятичное целое размером заданное ЧИСЛО байт
 x[ЧИСЛО] 
шестнадцатеричное целое размером заданное ЧИСЛО байт
 
 

Если ФОРМАТ - одно из [doux], ЧИСЛО может задаваться как C (char), S (short),
I (int) или L (long), если ФОРМАТ равен f, то ЧИСЛО также может быть F (float),
D (double) или L (long double).
 

ОСНОВАНИЕ может быть d (десятичным), o (восьмеричным), x (шестнадцатеричным) или
n (не выводить смещения).  Н с префиксом 0x или 0X воспринимается как
шестнадцатеричное, с суффиксом b умножается на 512, с суффиксом k - на 1024 и
суффиксом m -- на 1048576.  Если добавить к любому формату суффикс z, то в конце
каждой строки будут выводиться печатные символы.  --string  без параметра
подразумевает 3,  --width  подразумевает 32.  По умолчанию используются ключи
-A o -t d2 -w 16.
   
 АВТОР 

Джим Мейеринг.
   
 СООБЩЕНИЕ ОБ ОШИБКАХ 

Об ошибках сообщайте по адресу < bug-coreutils@gnu.org >.
   
 АВТОРСКИЕ ПРАВА 

Copyright (c) 2006 Free Software Foundation, Inc.
 

Это свободное программное обеспечение. 
Вы можете распространять его копии при соблюдении условий
GNU General Public License < http://www.gnu.org/licenses/gpl.html >.
Не предоставляется НИКАКИХ ГАРАНТИЙ в установленных законом пределах.
   
 СМ. ТАКЖЕ 

Полная документация для
 od 

поддерживается в виде руководства в формате Texinfo. Если программы
 info 

и
 od 

установлены и настроены в системе, то по команде
 
 
 info od 

 
 

вы получите доступ к более полному руководству.
   
 ПЕРЕВОД 

Перевод с английского russians < pawel5@mail.ru > 2007

 
   Index 
 
 ИМЯ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 
 Традиционные спецификации формата можно писать вперемешку, они аккумулируются: 
 
 АВТОР 
 СООБЩЕНИЕ ОБ ОШИБКАХ 
 АВТОРСКИЕ ПРАВА 
 СМ. ТАКЖЕ 
 ПЕРЕВОД 
 
 
 
 
 
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