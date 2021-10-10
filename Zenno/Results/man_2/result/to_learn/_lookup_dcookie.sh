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
 
 
 
 lookup_dcookie (2) >>  lookup_dcookie  (2)   ( Русские man: Системные вызовы )   lookup_dcookie  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

lookup_dcookie - возвращает путь элемента каталога
   
 СИНТАКСИС 

 
 int lookup_dcookie(u64  cookie , char *  buffer , size_t  len ); 

   
 ОПИСАНИЕ 

Поиск полного пути элемента каталога, указанного значением 
 cookie .

Элемент cookie является непрозрачным идентификатором, уникально
определяющем отдельный элемент каталога. Заданный буфер заполняется
полным путем элементы каталога.
 
Для того, чтобы
 lookup_dcookie 

нормально возвращало значения,
ядро должно держать ссылку cookie на элемент каталога.
 
   
 ЗАМЕЧАНИЯ 

 lookup_dcookie 

является системным вызовом особого назначения, в данный момент используемого
только профайлером oprofile. Она основывается на регистрации драйвером ядра
cookies для элементов каталога.
 
Возвращаемый путь может заканчиваться дополнительной строкой " (deleted)",
если элемент каталога был удален.
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При нормальном завершении работы
 lookup_dcookie 

возвращает длину строки полного пути, скопированной в буфер.
При ошибках возвращается -1 и переменная
 errno 

устанавливается соответствующим образом.
   
 НАЙДЕННЫЕ ОШИБКИ 

 EPERM 

Процесс не имеет возможности осуществить поиск значения cookie.
 
 EINVAL 

 
Ядро не имеет зарегистрированных распределений элементов cookie/каталог
во время поиска, или cookie не ссылается на корректный элемент каталога.
 ENOMEM 

 
Ядро не может выделить память для временного буфера, содержащего путь.
 ERANGE 

 
Буфер не был достаточно велик для содержания пути или элемента каталога.
 ENAMETOOLONG 

 
Имя (название) не может поместиться в буфере.
 EFAULT 

 
Буфер некорректен.
 
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

 lookup_dcookie 

является специфичным для Linux.
   
 ДОСТУПНОСТЬ 

Доступен, начиная с Linux 2.5.43.
Возврат ошибки ENAMETOOLONG добавлен начиная с версии 2.5.70.
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ЗАМЕЧАНИЯ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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