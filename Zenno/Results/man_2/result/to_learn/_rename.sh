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
 
 
 
 rename (2)   rename  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   rename  (2)   ( Solaris man: Системные вызовы )   rename  (2)   ( FreeBSD man: Системные вызовы ) >>  rename  (2)   ( Русские man: Системные вызовы )   rename  (2)   ( Linux man: Системные вызовы )   rename  (3)   ( Solaris man: Библиотечные вызовы )   rename  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

rename - изменяет имя или расположение файла
   
 СИНТАКСИС 

 #include < unistd.h > 

 
 int rename(const char * oldpath , const char * newpath ); 

   
 ОПИСАНИЕ 

 rename 

переименовывает файл и, если требуется, перемещает его из одного каталога
в другой.
Все прочие "жесткие" ссылки на файл (созданные с помощью
 link (2)),

не изменяются.
Если
 newpath 

уже существует, то он будет вновь записан (при определенных
условиях, см. ОШИБКИ ниже), так что неизвестны условия, при которых
другой процесс, пытающийся обратиться к
 newpath, 

не обнаружит его.
Если
 newpath 

существует, но операция завершается ошибкой или система аварийно
завершает работу,
 rename 

гарантирует, что
 newpath 

останется нетронутым.
При повторной записи, однако, есть вероятность, что
 oldpath 

и
 newpath 

будут ссылаться на один и тот же файл.
Если
 oldpath 

является символьной ссылкой, то она переименовывается; если
 newpath 

является символьной ссылкой, то будет вновь записан файл, на который
она указывает.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

В случае успешного завершения вызова возвращается нулевое значение.
При ошибке возвращается -1, а переменной
 errno 

присваивается номер ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EISDIR 

 
Каталог
 newpath 

существует, но
 oldpath 

не является каталогом.
 EXDEV 

 
 oldpath  и  newpath 

находятся в разных файловых системах.
 ENOTEMPTY 

 
 newpath 

является непустым каталогом.
 EBUSY 

 
 newpath 

существует и является текущим рабочим каталогом или корневым каталогом
какого-то процесса.
 EEXIST 

 
Новое имя пути совпадает с началом старого имени.
 EINVAL 

 
Попытка сделать каталог своим собственным подкаталогом.
 EMLINK 

 
 oldpath 

уже имеет максимальное количество ссылок, или 
каталог, содержащий
 newpath, 

уже имеет максимальное количество ссылок.
 ENOTDIR 

 
Компонент, используемый как каталог в
 oldpath  или  newpath 

, в действительности не является каталогом.
 EFAULT 

 
 oldpath  или  newpath 

указывают на каталог за пределами доступного адресного пространства.
 EACCES 

 
Запись в каталог, содержащий
 oldpath  или  newpath 

  ,
запрещена для эффективного uid процесса, или один из каталогов в
 oldpath  или  newpath 

не позволяет производить поиск (выполнение), или
 oldpath 

был каталогом и не позволял запись в него информации для обновления
 .. ).

 EPERM 

 
Каталог, содержащий
 oldpath ,

имеет sticky-бит, а эффективный uid процесса не равен ни uid файла,
который нужно удалить, ни uid каталога, который его содержит, или
файловая система, содержащая
 pathname ,

не поддерживает переименования запрошенного типа.
 ENAMETOOLONG 

 
Имена
 oldpath  или  newpath 

являются слишком длинными.
 ENOENT 

 
Одна из частей каталога, указанная в
 oldpath  или  newpath 

, не существует или является "висячей" символьной ссылкой.
 ENOMEM 

 
Ядру не хватило памяти для выполнения операции.
 EROFS 

 
Файл находится в файловой системе, предназначенной только для чтения.
 ELOOP 

 
 oldpath  или  newpath 

содержат зацикленную символьную ссылку, то есть при соответствующей подстановке
происходит ссылка на нее саму.
 ENOSPC 

 
В устройстве, содержащем файл, нет места для новой записи.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX, 4.3BSD, ANSI C.
   
 НАЙДЕННЫЕ ОШИБКИ 

При работе с файловыми системами NFS нельзя считать, что
если операция завершилась неудачно, то имя файла  
не изменилось. Если сервер производит операцию rename, а затем
аварийно останавливает свою работу, то перепосланный пакет RPC будет 
вновь обработан при восстановлении работы сервера, что вызовет сообщение об ошибке.  
Приложение в этой ситуации должно работать корректно. См.
 link (2),

где описывается подобная проблема.
   
 СМ. ТАКЖЕ 

 link (2),

 unlink (2),

 symlink (2),

 mv (1)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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