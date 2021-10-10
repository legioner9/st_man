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
 
 
 
 mpx (2) >>  mpx  (2)   ( Русские man: Системные вызовы )   mpx  (2)   ( Linux man: Системные вызовы ) 
   
 ИМЯ 

afs_syscall, break, ftime, getpmsg, gtty, lock, mpx, prof, profil,
putpmsg, security, stty, ulimit - нереализованные системные вызовы
   
 ОБЗОР 

Нереализованные системные вызовы.
   
 ОПИСАНИЕ 

Данные системные вызовы не реализованы в ядре Linux 2.4.
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

Данные системные вызовы всегда возвращают -1 и устанавливают
 errno 

в значение
 ENOSYS .

   
 ЗАМЕЧАНИЯ 

Заметим, что
 ftime (3),

 profil (3)

и
 ulimit (3)

реализуются как библиотечные функции.
 
Некоторые системные вызовы, такие как
 alloc_hugepages (2),

 free_hugepages (2),

 ioperm (2),

 iopl (2),

и
 vm86 (2)

существуют только в определённых архитектурах (на определённых аппаратных
платформах -- прим. пер.).
 
Некоторые системные вызовы, такие как
 ipc (2)

и
 {create,init,delete} _module (2)

существуют только если ядро Linux было собрано с их поддержкой.
 
   
 СМОТРИ ТАКЖЕ 

 obsolete (2)

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
 ЗАМЕЧАНИЯ 
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