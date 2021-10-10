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
 
 
 
 uname (2)   uname  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   uname  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня )   uname  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   uname  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   uname  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня )   uname  (2)   ( Solaris man: Системные вызовы ) >>  uname  (2)   ( Русские man: Системные вызовы )   uname  (2)   ( Linux man: Системные вызовы )   uname  (3)   ( FreeBSD man: Библиотечные вызовы )   uname  (3)   ( POSIX man: Библиотечные вызовы )   uname  (8)   ( Русские man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

uname - получает название ядра и информацию о нем
   
 СИНТАКСИС 

 #include < sys/utsname.h > 

 
 int uname(struct utsname * buf ); 

   
 ОПИСАНИЕ 

 uname 

возвращает информацию о системе в структуру с адресом
 buf .

Структура
 utsname  

определена в
 < sys/utsname.h > 

следующим образом:
 
 struct utsname {
char sysname[];
char nodename[];
char release[];
char version[];
char machine[];
#ifdef _GNU_SOURCE
char domainname[];
#endif
};
 

 

Длина массивов в
 struct utsname 

не указана; все поля оканчиваются символом NUL.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При удачном завершении работы функции возвращается 0.
При ошибке возвращается -1, а переменной
 errno 

присваивается номер ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EFAULT 

 
Неверное значение
 buf .

 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVr4, SVID, POSIX, X/OPEN.
В BSD 4.3 вызов
 uname 

отсутствует.
 

Поле
 domainname 

(домен NIS или YP) является расширением, предложенным GNU.
   
 ЗАМЕЧАНИЯ 

Это системный вызов, и операционная система, предположительно, знает свое имя,
номер выпуска и версию. Она также знает, на каком аппаратном обеспечении она работает.
Таким образом, четыре поля структуры несут полезную информацию. С другой стороны, поле
 nodename  ее не несет: оно указывает имя машины в некой неопределенной сети,
но обычно машины находятся в более чем одной сети и имеют несколько имен.
Более того, ядро не может каким-либо образом получить информацию о таких вещах,
поэтому ему необходимо сообщить что же возвращать в этом поле. То же относится и
к дополнительному полю  domainname .
 

С этой целью в Linux используются системные вызовы
 sethostname (2)

и
 setdomainname (2).

Обратите внимание, что хотя не существует стандарта, который бы указывал, 
что имя машины, установленное
 sethostname (2),

является той же строкой, что возвращается в поле  nodename  при вызове
 uname ,

но для Linux это именно так (в действительности некоторые системы позволяют
256-символьное hostname и 8-символьное nodename). То же относится и к
 setdomainname (2)

и полю  domainname .
 

Длина полей в структуре может быть различна. Некоторые операционные системы
или библиотеки используют жестко прошитые значения 9, 33, 65 или 257. Другие
используют константы SYS_NMLN, _SYS_NMLN, UTSLEN или _UTSNAME_LENGTH. Несомненно,
идея использовать эти константы не очень хороша - можно просто использовать
sizeof(...).
Часто выбирается 257 для того, чтобы имелось достаточно места для хранения
имени машины в сети internet.
 

В Linux имелось три системных вызова  uname (). Первый использовал
длину 9, второй - 65, а третий также использовал 65, но добавлял поле
 domainname .

 

Часть информации из структуры utsname может быть получена также через
 sysctl 

и через
 /proc/sys/kernel/ { ostype ,

 hostname ,

 osrelease ,

 version ,

 domainname }.

   
 СМ. ТАКЖЕ 

 uname (1),

 getdomainname (2),

 gethostname (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 ЗАМЕЧАНИЯ 
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