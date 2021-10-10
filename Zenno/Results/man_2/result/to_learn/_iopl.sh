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
 
 
 
 iopl (2) >>  iopl  (2)   ( Русские man: Системные вызовы )   iopl  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

iopl - меняет уровень привилегий ввода-вывода
   
 СИНТАКСИС 

 #include < sys/io.h > 

 
 int iopl(int  level ); 

   
 ОПИСАНИЕ 

 iopl 

изменяет уровень привилегий ввода/вывода текущего процесса в соответствии с
 level .

Этот вызов необходим для того, чтобы 8514-совместимые X-серверы могли
работать под управлением Linux. Этим X-серверам необходим доступ ко всем
65536-и портам ввода/вывода, соответственно, им недостаточно вызова
 ioperm . 

В дополнение к тому, что на высоком уровне привилегий процессу разрешен
неограниченный доступ к портам ввода/вывода, он может также запретить
системные прерывания. Скорее всего, это приведет к сбою системы, поэтому 
использование этой возможности не рекомендуется.
Эти права наследуются через fork и exec.
Стандартный уровень привилегий ввода/вывода обычного процесса равен 0.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При удачном завершении работы возвращаемое значение равно 0. При ошибке оно равно
-1, а переменная
 errno 

приобретает соответствующее значение.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EINVAL 

 
Значение
 level 

больше 3.
 EPERM 

 
Пользователь процесса - не суперпользователь.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

 iopl  - это функция, специфичная для Linux. Не рекомендуется
использовать ее в программах, переносимых на
другие системы.
   
 ЗАМЕЧАНИЯ 

Libc5 воспринимает эту функцию как системный вызов и имеет прототип в
 < unistd.h > .

Glibc1 не имеет прототипа этой функции. Glibc2 имеет прототип в
 < sys/io.h > 

и в
 < sys/perm.h > .

Не используйте последнее, этот файл имеется только на i386.
   
 СМ. ТАКЖЕ 

 ioperm (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 ЗАМЕЧАНИЯ 
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