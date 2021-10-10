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
 
 
 
 getgroups (2)   getgroups  (2)   ( Solaris man: Системные вызовы )   getgroups  (2)   ( FreeBSD man: Системные вызовы ) >>  getgroups  (2)   ( Русские man: Системные вызовы )   getgroups  (2)   ( Linux man: Системные вызовы )   getgroups  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 ИМЯ 

getgroups, setgroups - получить/установить список дополнительных
идентификаторов (ID) групп
   
 ОБЗОР 

 #include < sys/types.h > 

 

 #include < unistd.h > 

 
 int getgroups(int  size , gid_t  list []); 

 
 #include < grp.h > 

 
 int setgroups(size_t  size , const gid_t * list ); 

   
 ОПИСАНИЕ 

 
 getgroups 

 
Увеличивает список
 list 

идентификаторов дополнительных групп (членами которых является текущий
пользователь -- прим. пер.) до размера
 size  

и возвращает этот список.
Невозможно узнать будет ли включен в этот список эффективный идентификатор
группы, вызывающего процесса. (Таким образом, приложение должно
также вызвать
 getegid (2)

и добавить или удалить полученное значение.)
Если размер
 size 

равен нулю, список
 list 

не изменяется, просто возвращается общее количество идентификаторов дополнительных
групп для текущего процесса.
 setgroups 

 
Устанавливает идентификаторы дополнительных групп для текущего процесса. Только
суперпользователь может использовать эту функцию.
 
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

 
 В случае успеха 
 getgroups 

возвращает количество идентификаторов дополнительных групп. При ошибке
возвращается -1 и значение
 errno 

устанавливается соответствующим образом.
 В случае успеха 
 setgroups 

возвращает ноль. При ошибке 
возвращается -1 и значение
 errno 

устанавливается соответствующим образом.
 
   
 ОШИБКИ 

 
 EFAULT 

 
Список
 list 

имеет неправильный адрес.
 EPERM 

 
Пользователь вызывавший
 setgroups ,

не является суперпользователем.
 EINVAL 

 
Для
 setgroups ,

 size 

больше, чем
 NGROUPS 

(32 для Linux 2.0.32).
Для
 getgroups ,

 size 

меньше, чем количество дополнительных идентификаторов групп, но не ноль.
 
   
 ЗАМЕЧАНИЯ 

Процесс может иметь как минимум NGROUPS_MAX дополнительных идентификаторов
групп в дополнении к эффективному идентификатору группы. Список дополнительных
идентификаторов групп наследуется из родительского процесса и может быть
изменён при использовании
 setgroups .

Максимальное количество дополнительных идентификаторов групп можно найти
используя
 sysconf (3):

     long ngroups_max;
    ngroups_max = sysconf(_SC_NGROUPS_MAX);
 

Максимальное значение, возвращаемое
 getgroups 

не может быть больше чем на единицу значения полученного данным способом.
 

Прототип для
 setgroups 

доступен только если задан флаг
 _BSD_SOURCE 

(или явно или неявно, но задан флаг
_POSIX_SOURCE или компиляция проводится с флагом -ansi).
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVr4, SVID (только в 4-й редакции; данные вызовы отсутствуют в SVr3),
X/OPEN, 4.3BSD.  Функция
 getgroups 

есть в POSIX.1.  С тех пор как
 setgroups 

требует превилений она не соответствует POSIX.1.
   
 СМОТРИТЕ ТАКЖЕ 

 initgroups (3),

 getgid (2),

 setgid (2)

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
 ОШИБКИ 
 ЗАМЕЧАНИЯ 
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