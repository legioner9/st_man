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
 
 
 
 getutline (3) >>  getutline  (3)   ( Русские man: Библиотечные вызовы )   getutline  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

getutent, getutid, getutline, pututline, setutent, endutent, utmpname -
осуществляют доступ к записям файла utmp
   
 СИНТАКСИС 

 #include < utmp.h > 

 
 struct utmp *getutent(void); 

 

 struct utmp *getutid(struct utmp * ut ); 

 

 struct utmp *getutline(struct utmp * ut ); 

 
 struct utmp *pututline(struct utmp * ut ); 

 
 void setutent(void); 

 

 void endutent(void); 

 
 void utmpname(const char * file ); 

   
 ОПИСАНИЕ 

 utmpname ()

задает имя файла в формате utmp для других функций utmp.  Если
 utmpname ()

не используется для указания имени файла перед работой с другими функциями,
то они будут использовать имя
 _PATH_UTMP ,

определенное в 
 < paths.h > .

 

 setutent ()

переносит указатель начало файла utmp. Вообще оптимальным вариантом 
считается вызывать эту функцию перед вызовом остальных. 
 

 endutent ()

закрывает файл utmp. Она должна быть вызвана, когда будет завершена
работа с файлом посредством других функций.
 

 getutent ()

считывает строку, начиная с текущей позиции файла в файле utmp. Возвращает указатель на
структуру, содержащую поля этой строки. 
 

 getutid ()

производит прямой поиск, начиная с текущей позиции файла в файле utmp, 
основываясь на данных 
 ut .

Если 
 ut ->ut_type 

равно
 RUN_LVL ,

 BOOT_TIME ,

 NEW_TIME 

или 
 OLD_TIME ,

 getutid ()

найдет первую запись, поле 
 ut_type 

которой совпадает с  ut ->ut_type . Если 
 ut ->ut_type 

равно 
 INIT_PROCESS ,

 LOGIN_PROCESS ,

 USER_PROCESS 

или
 DEAD_PROCESS ,

то 
 getutid ()

найдет первую запись, поле 
 ut_id 

которой совпадает с  ut ->ut_id .
 

 getutline ()

производит прямой поиск, начиная с текущей позиции файла в файле utmp. 
Она просматривает записи, поле
 ut_type 

которых совпадает с 
 USER_PROCESS  

или
 LOGIN_PROCESS ,

и возвращает первую запись, поле 
 ut_line 

которой совпадает с  ut ->ut_line .
 

 pututline ()

записывает структуру utmp 
 ut  

в файл utmp. Для поиска места в файле, необходимого для вставки новой записи,
используется 
 getutid ()

. Если такое место не найдено, то 
 pututline ()

добавит запись к концу файла. 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функции  getutent (),  getutid (),  getutline () и  pututline ()
возвращают указатель на  static struct utmp  при успешном завершении и
NULL при ошибке.
   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

Hижеследующий пример добавляет и удаляет запись utmp на основании того, что
программа запущена с псевдотерминала. Для использования его в реальном
приложении необходимо проверить значения, возвращаемые getpwuid() и
ttyname().
 

 #include < string.h >
#include < stdlib.h >
#include < pwd.h >
#include < unistd.h >
#include < utmp.h >
int main(int argc, char *argv[])
{
  struct utmp entry;
  system("echo перед добавлением записи:;who");
  entry.ut_type=USER_PROCESS;
  entry.ut_pid=getpid();
  strcpy(entry.ut_line,ttyname(0)+strlen("/dev/"));
  /* справедливо только для ptys с именами /dev/tty[pqr][0-9a-z] */
  strcpy(entry.ut_id,ttyname(0)+strlen("/dev/tty"));
  time(&entry.ut_time);
  strcpy(entry.ut_user,getpwuid(getuid())->pw_name);
  memset(entry.ut_host,0,UT_HOSTSIZE);
  entry.ut_addr=0;
  setutent();
  pututline(&entry);
  system("echo после добавления записи:;who");
  entry.ut_type=DEAD_PROCESS;
  memset(entry.ut_line,0,UT_LINESIZE);
  entry.ut_time=0;
  memset(entry.ut_user,0,UT_NAMESIZE);
  setutent();
  pututline(&entry);
  system("echo после удаления записи:;who");
  endutent();
  return 0;
}
 

   
 ФАЙЛЫ 

/var/run/utmp    (база данных пользователей, находящихся в системе в данный момент);  
 

/var/log/wtmp    (база данных о последних входах пользователей в систему). 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

XPG 2, SVID 2, Linux FSSTND 1.2
 

В системах XPG2 и SVID2  функция  pututline()  возвращает
тип void (такое поведение можно встретить и в системах
AIX, HPUX, Linux libc5).
В HPUX описана новая функция  _pututline()  с прототипом приведенным выше для
 pututline()  (также она есть и в Linux libc5).
 

Эти функции являются устаревшими в не-Linux системах.
POSIX 1003.1-2001, в соответствие с XPG4.2, не содержит 
эти функции, вместо них он использует
 
 #include < utmpx.h > 

 
 struct utmpx *getutxent(void); 

 

 struct utmpx *getutxid(const struct utmpx *); 

 

 struct utmpx *getutxline(const struct utmpx *); 

 

 struct utmpx *pututxline(const struct utmpx *); 

 

 void setutxent(void); 

 

 void endutxent(void); 

 
Структура  utmpx  это набор структур  utmp  с дополнительными
полями и более широкими существующими полями.
Соответствующие файлы
 /var/*/utmpx 

и
 /var/*/wtmpx .

 

Linux glibc не использует  utmpx , так как структура
 utmp  и так очень большая. Функции  getutxent  и т.д.
являются псевдонимами  getutent .
 
   
 СМ. ТАКЖЕ 

 utmp (5)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
 ФАЙЛЫ 
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