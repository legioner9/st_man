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
 
 
 
 tkill (2)   tkill  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) >>  tkill  (2)   ( Русские man: Системные вызовы )   tkill  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

tkill - отправляет сигнал одному процессу
   
 СИНТАКСИС 

 #include < sys/types.h > 
 
 #include < linux/unistd.h > 

 _syscall2(int, tkill, pid_t, tid, int, sig) 

 int tkill(pid_t tid, int sig); 
 

   
 ОПИСАНИЕ 

Системный вызов  tkill  аналогичен вызову
 kill (2),

за исключением того, что указываемый процесс является частью группы подпроцессов
(созданной указанием флага CLONE_THREAD при вызове clone). Так как все процессы
в группе подпроцессов имеют одинаковый идентификатор процесса PID, то нельзя
передать сигнал каждому по отдельности процессу через использование  kill .
А с помощью  tkill  можно адресовать сигналы каждому процессу по отдельности,
используя его уникальный идентификатор TID.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При нормальном завершении работы возврашается ноль.
При ошибках возвращается -1 и  errno  устанавливается соответственно ошибке.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EINVAL 

 
Указан некорректный TID или сигнал.
 ESRCH 

 
Не существует процессов с указанным TID.
 EPERM 

 
Вызывающий не имеет прав для отправки сигнала указанному процессу.
Для того, чтобы процесс мог отправить сигнал, он должен либо иметь
привилегии root, либо его действующий или действительный идентификатор
пользователя должен быть равен действительному или сохраненному
set-user-ID принимающего процесса.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

 tkill  специфичен для Linux
и не должен использоваться в портируемых программах.
   
 СМ. ТАКЖЕ 

 gettid (2),

 kill (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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