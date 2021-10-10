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
 
 
 
 apm (1) >>  apm  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   apm  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   apm  (4)   ( FreeBSD man: Специальные файлы /dev/* )   apm  (4)   ( Русские man: Специальные файлы /dev/* )   apm  (4)   ( Linux man: Специальные файлы /dev/* )   apm  (8)   ( FreeBSD man: Команды системного администрирования )   apm  (8)   ( Русские man: Команды системного администрирования ) Ключ  apm  обнаружен в базе ключевых слов. 
 
   
 НАЗВАНИЕ 

 
 

 apm  - запрос к подсистеме расширенного управления питанием 
(Advanced Power Management - APM) BIOS
 
   
 СИНТАКСИС 

 
 
         apm [ -vVmsS ] 
 
 
 
   
 ОПИСАНИЕ 

 
 

Программа  apm  читает файл  /proc/apm  и представляет результат в
понятном для человека виде. Поскольку, в основном, выдается информация о состоянии батареи,
эта команда наиболее полезна для ноутбуков с соответствующей APM BIOS. Программа  apm 
также позволяет перевести машину в режим ожидания (standby) или остановки 
(suspend).
 
   
 ОПЦИИ 

 
 
 
 -V ,  --version 
Выдает информацию о версии программы  apm  и немедленно завершает работу.
 -v ,  --verbose 
Выдает информацию о версии APM  BIOS и версии драйвера APM ОС Linux.       
 -m ,  --minutes 
Выдает, сколько всего осталось минут, не используя формат  чч:мм .
 -s ,  --suspend 
Если возможно, переводит машину в режим остановки.
 -S ,  --standby 
Если возможно, переводит машину в режим ожидания.
 
 
 
   
 ОШИБКИ 

 
 

Эта программа требует использовать ядро версии старше 1.3.57. Она не будет работать с
более старыми ядрами или с "заплатками" APM, поскольку формат файла  /proc/apm  
после этой версии принципиально изменился.
 
   
 ФАЙЛЫ 

 
 
 /proc/apm 
 linux/drivers/char/apm_bios.c 
 
 
 
   
 АВТОР 

 
 

Эта программа написана Риком Фейтом (Rik Faith) 
(<a href="mailto: faith@cs.unc.edu "> faith@cs.unc.edu ) и может свободно распространяться на
условиях Генеральной Общественной Лицензии GNU (General Public License). На эту программу
НЕТ НИКАКИХ ГАРАНТИЙ. Сейчас ее поддержкой занимается Авери Пеннаран (Avery Pennarun)
(<a href="mailto: apenwarr@worldvisions.ca "> apenwarr@worldvisions.ca ).
              
   
 ССЫЛКИ 

 
 
         xapm (1) ,  apmd (8) 
 
 
10 января 1996 года
 
 
   
 ПЕРЕВОД 

В. Кравчук < valera@openxs.kiev.ua >,  http://ln.com.ua/~openxs 
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОПЦИИ 
 ОШИБКИ 
 ФАЙЛЫ 
 АВТОР 
 ССЫЛКИ 
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