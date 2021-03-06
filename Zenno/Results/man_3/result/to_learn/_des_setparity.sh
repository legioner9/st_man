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
 
 
 
 des_setparity (3)   des_setparity  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  des_setparity  (3)   ( Русские man: Библиотечные вызовы )   des_setparity  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

des_crypt, ecb_crypt, cbc_crypt, des_setparity - быстрое шифрование DES
   
 СИНТАКСИС 

 #include < rpc/des_crypt.h > 

 int ecb_crypt(key, data, datalen, mode) 
 char *key; 
 char *data; 
 unsigned datalen; 
 unsigned mode; 

 int cbc_crypt(key, data, datalen, mode, ivec) 
 char *key; 
 char *data; 
 unsigned datalen; 
 unsigned mode; 
 char *ivec; 

 void des_setparity(key) 
 char *key; 
 

   
 ОПИСАНИЕ 

 
 
 
 
 ecb_crypt() 

и
 cbc_crypt() 

реализуют
 NBS 
стандарт шифрования данных
 DES 
(Data Encryption Standard).
Эти процедуры более быстры и имеют более широкое предназначение, чем
 crypt (3).

Они также могут использовать (при наличии) оборудование
 DES. 
 ecb_crypt() 

шифрует данные в режиме
 ECB 
(Electronic Code Book),
при котором шифруются независимые блоки данных.
 cbc_crypt() 

шифрует данные в режиме
 CBC 
(Cipher Block Chaining),
при котором вместе связываются успешно закодированные блоки.
Редим
 CBC 
защищен от вставки, удаления или подмены блоков.
Также повторяющиеся отрезки простого текста не будут повторяться
в зашифрованном в таком режиме коде.
 

Рассмотрим применение этих процедур. Первый параметр
 key ,

является 8-байтным ключем кодирования с паритетностью.
Для определения паритетности ключа, которая для
 DES 
находится в меньшем бите каждого байте, используйте
 des_setparity .

Второй параметр
 data 

содержит данные для кодирования или раскодирования.
Третий параметр
 datalen 

является длиной блока данных
 data 

в байтах, длина кратна 8. Четвертый параметр
 mode 

формируется через логическое сложение
 OR 
нескольких вещей. Для направления кодирования 'or' исполняется либо с
 DES_ENCRYPT 
либо с
 DES_DECRYPT .
Для программного кодирования или для использования оборудования 'or' исполняется либо с
 DES_HW 
либо с
 DES_SW .
Если указано
 DES_HW 
но оборудования не обнаружено, то кодирование выполняется в программном
режиме, а процедура возвращает
 DESERR_NOHWDEVICE .
Для
 cbc_crypt 

параметр
 ivec 

является 8-байтовым вектором инициализации для последовательностей.
Он обновляется на следующий вектор инициализации при возврате.
 

   
 СМ. ТАКЖЕ 

 des (1),

 crypt (3)


и
 xcrypt (3)

   
 ДИАГНОСТИКА 


 
 DESERR_NONE 
 
Нет ошибок.
 DESERR_NOHWDEVICE 
 
Кодирование успешно произведено, но использовался программный метод,
так как не было обнаружено указанное оборудование шифрования.
 DESERR_HWERR 
 
Ошибка в оборудовании или драйвере.
 DESERR_BADPARAM 
 
Некорректный параметр или процедура.

 
 

Указывая итоговый статус
 stat 

макросу
 DES_FAILED ( stat ) 

будет ложно только для первых двух состояний.
 


   
 ДОСТУПНОСТЬ 

Эти процедуры существуют в libc 4.6.27 и glibc 2.1,
а также в их более поздних версиях.
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 СМ. ТАКЖЕ 
 ДИАГНОСТИКА 
 ДОСТУПНОСТЬ 
 
 
 
 
 
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