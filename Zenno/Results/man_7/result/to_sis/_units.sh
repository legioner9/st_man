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
 
 
 
 units (7)   units  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   units  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня )   units  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) >>  units  (7)   ( Русские man: Макропакеты и соглашения )   units  (7)   ( Linux man: Макропакеты и соглашения ) 
   
 НАЗВАНИЕ 

units, kilo, kibi, mega, mebi, giga, gibi - десятичные и двоичые префиксы
   
 ОПИСАНИЕ 

   
 Десятичные префиксы 

Метрическая система мер использует префиксы, чтобы обозначать степени
десяти. Километр - это 1000 метров, а мегаватт - это 1000000 ватт.
Ниже приведены стандартные префиксы.
 
 
 
 Префикс Имя Значение 
 y yocto 10^-24 = 0.000000000000000000000001 
 z zepto 10^-21 = 0.000000000000000000001 
 a atto 10^-18 = 0.000000000000000001 
 f femto 10^-15 = 0.000000000000001 
 p pico 10^-12 = 0.000000000001 
 n nano 10^-9  = 0.000000001 
 u micro 10^-6  = 0.000001 
 m milli 10^-3  = 0.001 
 c centi 10^-2  = 0.01 
 d deci 10^-1  = 0.1 
 da deka 10^ 1  = 10 
 h hecto 10^ 2  = 100 
 k kilo 10^ 3  = 1000 
 M mega 10^ 6  = 1000000 
 G giga 10^ 9  = 1000000000 
 T tera 10^12  = 1000000000000 
 P peta 10^15  = 1000000000000000 
 E exa 10^18  = 1000000000000000000 
 Z zetta 10^21  = 1000000000000000000000 
 Y yotta 10^24  = 1000000000000000000000000 
 

 

 
Для обозначения micro используется греческая буква мю. В кодировке
ASCII, где она отсутствует, вместо нее часто ипользуют латинскую u.
См. также
 
 
 http://physics.nist.gov/cuu/Units/prefixes.html 
 

   
 Двоичные префиксы 

Двоичные префиксы походят на десятичные, но имеют дополнительную 'i'
(и "Ki" начинается с заглавной 'K'). Имена формируются из первого
звука имени десятичных префиксов примерно того же размера, за которым
следует "bi" (от "binary" - "двоичный").
 
 
 
 Префикс Имя Значение 
 Ki kibi 2^10 = 1024 
 Mi mebi 2^20 = 1048576 
 Gi gibi 2^30 = 1073741824 
 Ti tebi 2^40 = 1099511627776 
 Pi pebi 2^50 = 1125899906842624 
 Ei exbi 2^60 = 1152921504606846976 
 

 

 
См. также
 
 
 http://physics.nist.gov/cuu/Units/binary.html 
 

   
 Обсуждение 

До введения двоичных префиксов довольно часто использовалось k=1000 и
K=1024, также как и b=bit (бит), B=byte (байт). К сожалению, заглавная
M уже занята, и не может быть использована как признак двоичности.
 
Поначалу это не имело большого значения, модули памяти и диски имели
размер, равный степеням двойки, и все знали, что в таких случаях
"килобайт" означает 1024, а "мегабайт" - 1048576 байтов. Впрочем,
некоторая путаница связанная с этим все же была. После некоторых
колебаний все производители дисков установили стандарт, по которому
k=1000, M=1000k, G=1000M.
 
Ситуация получилась запутанной: в модемах 14k4, k=1000; в дискетах
1.44MB, M=1024000; и т.д. В 1998 IEC принял стандарт, который
определяет двоичные префиксы как указано выше, что позволяет людям
быть точными и однозначными.
 
Таким образом, сегодня MB = 1000000B, а MiB = 1048576B.
 
В мире свободного программного обеспечения программы медленно
переходят к таким обозначениям. Когда ядро Linux при загрузке выводит
 
 
 hda: 120064896 sectors (61473 MB) w/2048KiB Cache
 

 

 
то MB - это мегабайты, а KiB - кибибайты.
 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 
 Десятичные префиксы 
 Двоичные префиксы 
 Обсуждение 
 
 
 
 
 
 
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