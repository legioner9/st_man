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
 
 
 
 xencrypt (3) >>  xencrypt  (3)   ( Русские man: Библиотечные вызовы )   xencrypt  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

xencrypt, xdecrypt, passwd2des - кодирование паролей RFS
   
 СИНТАКСИС 

 
 #include < rpc/des_crypt.h > 

 
 void passwd2des (char  *passwd , char * key ); 

 
 int xencrypt (char  *secret , char * passwd ); 

 
 int xdecrypt (char  *secret , char * passwd ); 

 
   
 ОПИСАНИЕ 

Функция
 passwd2des() 

берет строку символов
 passwd 

произвольной длины и заполняет массив ключей
 key 

длиной 8. Массив
 key 

подходит для использования в качестве ключа DES.
В каждом байте нулевой бит имеет установленную нечетность.
Остальные две функции, описанные тут, используют эту функцию для
преобразования своих аргументов
 passwd 

в ключ DES.
 

Функция
 xencrypt() 

берет строку символов ASCII
 secret ,

заданную в шестнадцатеричном виде

(ее длина должна быть кратна 16) и затем кодирует ее,
используя ключ DES, полученный из
 passwd 

с помощью
 passwd2des() ,

а потом выводит результат снова в
 secret 

в виде шестнадцатеричной строки

той же длины.
 

Функция
 xdecrypt() 

выполняет обратную операцию.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функции
 xencrypt() 

и
 xdecrypt() 

возвращают 1 при нормальном завершении работы и 0 при ошибках.
   
 ДОСТУПНОСТЬ 

Эти процедуры существуют в libc 4.6.27 и в glibc 2.1, а также в
последующих их версия.
   
 НАЙДЕННЫЕ ОШИБКИ 

Прототипы отсутствуют в указанных выше файлах include.
   
 СМ. ТАКЖЕ 

 cbc_crypt (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ДОСТУПНОСТЬ 
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