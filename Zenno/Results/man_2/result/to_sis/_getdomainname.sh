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
 
 
 
 getdomainname (2) >>  getdomainname  (2)   ( Русские man: Системные вызовы )   getdomainname  (2)   ( Linux man: Системные вызовы )   getdomainname  (3)   ( FreeBSD man: Библиотечные вызовы ) 
   
 ИМЯ 

getdomainname, setdomainname - получить/установить имя домена
   
 ОБЗОР 

 #include < unistd.h > 

 
 int getdomainname(char * name , size_t  len ); 

 

 int setdomainname(const char * name , size_t  len ); 

   
 ОПИСАНИЕ 

Эти функции используются для доступа к имени домена текущего процессора
или его изменения. Если длина имени домена, которое завершается нулевым
символом больше, чем  len  байт,
 getdomainname 

возвращает либо первые  len  байт (glibc) или ошибку (libc).
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

В случае успеха возвращается ноль. При ошибке возвращается -1 и
значение
 errno 

устанавливается соответствующим образом.
   
 ОШИБКИ 

 
 EINVAL 

 
Для
 getdomainname 

в libc:
 name 

является
 NULL 

или
 name 

длиннее, чем
 len 

байт.
 EINVAL 

 
Для
 setdomainname :

 len 

является отрицательным или очень большим числом.
 EPERM 

 
Для
 setdomainname :

вызвавший не имеет прав суперпользователя.
 EFAULT 

 
Для
 setdomainname :

 name 

указывает за пределы адресного пространства пользователя.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX не описывает эти вызовы.
   
 СМОТРИТЕ ТАКЖЕ 

 gethostname (2),

 sethostname (2),

 uname (2)

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
 ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 СМОТРИТЕ ТАКЖЕ 
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