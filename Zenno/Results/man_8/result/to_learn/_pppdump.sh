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
 
 
 
 pppdump (8) >>  pppdump  (8)   ( Русские man: Команды системного администрирования )   pppdump  (8)   ( Linux man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

pppdump - преобразует в читабельный формат файл записей PPP
   
 СИНТАКСИС 

 pppdump 

[
 -h 

|
 -p 

[
 -d 

]] [
 -r 

] [
 -m  mru 

] [
 file  ...

]
 
            
   
 ОПИСАНИЕ 

Утилита
 pppdump 

преобразует файлы, записанные с помощью опции  pppd   record ,
в формат, понятный для человека. Если указаны одно или более имён файлов,
 pppdump 

будет считывать их по очереди, в противном случае чтение производится со
стандартного ввода. В любом случае результат записывается в стандартный
вывод.
 

Имеются следующие опции:
 
 -h 

 
Выводит в шестнадцатеричном виде переданные и полученные байты. При отсутствии
этой опции или опции  -p , байты выводятся в виде символов, а непечатные
и не-ASCII символы выводятся как управляющие последовательности.
 -p 

 
Собирает переданные и полученные байты в PPP-пакеты, интерпретируя async
кадры HDLC и управляющие последовательности, и проверяя FCS (frame check sequence,
контрольная последовательность кадра) каждого пакета.  Пакеты выводятся
в виде шестнадцатеричных значений и символов (непечатные символы 
выводятся как `.').
 -d 

 
Эта опция вместе с опцией  -p  заставляет 
 pppdump 

декомпрессировать пакеты, сжатые с помощью методов BSD-Compress или
Deflate.
 -r 

 
Изменяет индикаторы направления, т.е. значение `send' (`переданные') 
указываются для полученных байтов и пакетов, а значение `rcvd' 
(`полученные') - для переданных байтов и пакетов.
 -m  mru 

 
Использовать  mru  в качестве MRU (maximum receive unit, максимальная
получаемая единица) для обоих направлений соединения при проверке
на превышение длины PPP-пакетов (с опцией  -p ).
 
   
 СМОТРИ ТАКЖЕ 

 pppd (8)
   
 ПЕРЕВОД 

 
Александр Саввин ( savvin@mail.ru ) Дек 01, 2002
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 СМОТРИ ТАКЖЕ 
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