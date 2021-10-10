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
 
 
 
 get_auditfail_action.ru (3) >>  get_auditfail_action.ru  (3)   ( Русские man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

get_auditfail_action - Получить значение конфигурационного параметра failure_action
   
 СИНТАКСИС 



 
#include < libaudit.h >
 
 
 
 int  get_auditfail_action  (int * failmode );


 
 
   
 ОПИСАНИE 

 
 

Эта функция получает значение параметра failure_action из конфигурационного файла  /etc/libaudit.conf .  get_auditfail_action  должна быть вызвана после того, как вызов  audit_open  вернет ошибку - для определения действия, которое необходимо предпринять.
 
 

Найденное в  /etc/libaudit.conf  значение failure_action копируется в аргумент  failmode . Затем это значение может быть использовано вызывающим приложением для того, чтобы определить какое действие должно быть выполнено, если подсистема аудита недоступна.
 
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

 
 

В случае успешного завершения  get_auditfail_action  возвращает 0, а аргумент  failmode  будет содержать значение failure_action. failure_action может принимать значения: FAIL_IGNORE (0), FAIL_LOG (1), and FAIL_TERMINATE (2). В случае возникновения ошибки  get_auditfail_action  возвращает 1.
 
   
 ОШИБКИ 

 
 

Ошибка возвратится, если невозможно чтение из  /etc/libaudit.conf  или если параметр failure_action не найден в этом файле.
 
   
 ПРИМЕРЫ 

 
 

        /* Пример кода */
        auditfail_t failmode;      
 
        if ((fd = audit_open() ) < 0 ) {
             fprintf (stderr, "Cannot open netlink audit socket");
 
             /* Получить действие из failure_action */
             if ((rc = get_auditfail_action(&failmode)) == 0) {
                 if (failmode == FAIL_LOG)
                      fprintf (stderr, "Audit subsystem unavailable");
                 else if (failmode == FAIL_TERMINATE) 
                      exit (1);
                 /* Если failmode == FAIL_IGNORE - ничего не делать */
             }
        }
 
   
 СМ. ТАКЖЕ 

 
 audit_open (3),

 auditd (8).

 
   
 АВТОР 

Lisa M. Smith.
 
   
 ПЕРЕВОД 

Перевод с английского Alexander Kolotov < alexandr.kolotov@gmail.com > 2007
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИE 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
 ОШИБКИ 
 ПРИМЕРЫ 
 СМ. ТАКЖЕ 
 АВТОР 
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