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
 
 
 
 sigqueue (2)   sigqueue  (2)   ( FreeBSD man: Системные вызовы ) >>  sigqueue  (2)   ( Русские man: Системные вызовы )   sigqueue  (2)   ( Linux man: Системные вызовы )   sigqueue  (3)   ( Solaris man: Библиотечные вызовы )   sigqueue  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

sigqueue - передает сигнал и данные процессу
   
 СИНТАКСИС 

 #include < signal.h > 

 
 int sigqueue(pid_t  pid , int  sig , const union sigval  value ); 

   
 ОПИСАНИЕ 

 sigqueue ()

отправляет сигнал, указанный в
 sig 

процессу с идентификатором PID, определенном
 pid .

Требуются определенные права для отправки сигнала, такие же как и для
 kill (2).

Как и в случае с
 kill (2),

пустой сигнал (null, 0) может использоваться для проверки того, что
заданный PID вообще существует.
 

Аргумент
 value 

используется для указания сопутствующих элементов или данных (либо целых
либо указателей), отправляемых сигналу, и имеет следующий тип:
 

 union sigval {
    int   sival_int;
    void *sival_ptr;
};
 


 
Если процесс, принимающий сигнал, имеет для него обработчик, используя флаг
 SA_SIGINFO 

для
 sigaction (2),

то он может получить данные через поле
 si_value 

структуры
 siginfo_t 

передаваемой как второй аргумент для обработчика.
Далее, поле
 si_code 

этой структуры будет установлено в
 SI_QUEUE .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При нормальном завершении работы
 sigqueue ()

возвращает 0, показывая что сигнал был успешно отправлен получающему процессу.
В других случаях будет возвращаться -1 и переменная
 errno 

будет установлена соответственно ошибке.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EAGAIN 

 
Достигнуто ограничение передаваемых сигналов.
(см.
 signal (7)).

 EINVAL 

 
 sig 

некорректен.
 ESRCH 

 
Нет процессов с идентификатором PID, соответствующем указанному
 pid .

 EPERM 

 
Процесс не имеет прав для отправки сигнала получающему процессу.
(см.
 kill (2)).

 
 
   
 ЗАМЕЧАНИЯ 

Если эта функция приводит к отправке сигнала процессу, породившему его,
и этот сигнал не заблокирован вызывающим подпроцессом, и никакие
другие подпроцессы не желают обрабатывать сигнал (либо разблокировав
его, либо ожидая использования
 sigwait (3)),

то по меньшей мере некоторый сигнал должен быть отправлен этому
подпроцессу перед завершением функции и возвратом результатов.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX 1003.1-2001
   
 СМ. ТАКЖЕ 

 kill (2),

 sigaction (2),

 signal (2),

 sigwait (3),

 signal (7)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ЗАМЕЧАНИЯ 
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