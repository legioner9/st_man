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
 
 
 
 attr_get_process (8) >>  attr_get_process  (8)   ( Русские man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

 

 attr_get_process  - Отображение прав процесса.
   
 СИНТАКСИС 

 

 attr_get_process  [ ключи ] процесс атрибут [ номер-бита ]
   
 ОПИСАНИЕ 

 

Программа  attr_get_process  предназначена для отображения значения требуемого атрибута для выбранного процесса.
   
 КЛЮЧИ 

 
 -p 
Вывести имена всех запросов (работает только вместе с запросом log_program_based)
 -n 
Показать список всех имён запросов
 
   
 АТРИБУТЫ И ЗНАЧЕНИЯ 

 

 
 auth_may_setuid 
Флаг допуска на смену прав.
 

Значение:  0  = неверно,  1  = верно
 auth_may_set_cap 
Набор возможностей владельцев смены процессов.
 

Значение:  0  = неверно,  1  = верно
 current_security_level 
Классификация текущего уровня безопасности.
 

Значение:  0  = неопределенный,  1  = конфиденциальный,  2  = секретный,  3  = сверхсекретный,  254  = наследованный, максимальный уровень  252 .
 log_program_based 
Журналирование событий системы базирующееся на запросах программ.
 

Значение: битовая строка для всех Запросов.
 

Дополнительно может использоваться с указанием номера изменяемого бита:  log_program_based   позиция .
 

Возвращаемыми значениями являются  0  = нет,  1  = да.
 mac_auto 
Автоматическая установка текущего набора категорий процесса.
 

Значение:  0  = отключена,  1  = включена
 

По умолчанию  1 .
 mac_categories 
Множество категорий.
 

64-значное строчное множество битов для всех категорий.
 

Возвращаемое значение: идентификатор RC-типа ( 0-63 ).
 

Служит для определения начальной роли процесса после каждого CHOWN (setuid).
 

Дополнительно может использоваться  с указанием номера изменяемого бита:  mac_categories   позиция .
 

Возвращаемыми значениями являются  0  = нет,  1  = да.
 mac_curr_categories 
Текущее множество категорий.
 

Значение: 64-значное строчное множество битов для всех категорий
 mac_trusted 
Использование доверительных связей.
 

Значение:  0  = отключено,  1  = включено
 

По умолчанию  0 .
 max_read_categories 
Высшая категория использованных файлов.
 

Значение: 64-значное строчное множество битов для всех категорий
 max_read_open 
Высший уровень использованных файлов.
 

Значение:  0  = неопределенный,  1  = конфиденциальный,  2  = секретный,  3  = сверхсекретный, максимальный уровень  252 .
 min_write_categories 
Низшая категория использованных файлов.
 

Значение: 64-значное строчное множество битов для всех категорий
 min_write_open 
Низший уровень использованных файлов.
 

Значение:  0  = неопределенный,  1  = конфиденциальный,  2  = секретный,  3  = сверхсекретный, максимальный уровень  252 .
 ms_sock_trusted_tcp 
Результат проверки доменного tcp-подключения на наличие не желательного программного кода.
 

Значение:  0  = не_доверенные,  1  = активные,  2  = полностью доверенные
 ms_sock_trusted_udp 
Результат проверки доменного udp-подключения на наличие не желательного программного кода.
 

Значение:  0  = не_доверенные,  1  = активные,  2  = полностью доверенные
 ms_trusted 
Результат проверки объекта на наличие не желательного программного кода.
 

Значение:  0  = не_доверенные,  1  = доверенные на чтение,  2  = полностью доверенные
 owner 
Идентификатор пользователя (положительное целое число)
 pm_current_task 
Идентификатор текущей задачи.
 

Значение:  Task-ID  (Идентификатор задачи (положительное целое число))
 pm_process_type 
Тип PM-процесса.
 

Значение:  0  = отсутствует,  1  = TP
 pm_tp 
PM-Transfer Procedure.
 

Значение:  TP-ID  (положительное целое число)
 rc_force_role   
Идентификатор RC-типа процесса.
 

Признак форсирования роли процесса.
 

Значение: идентификатор RC-роли ( 0-63 ) или:
 

 64  =  inherit_user 
 

Означает использование пользовательской rc_def_role при CHOWN и EXECUTE.
 

 65  =  inherit_process  (удержание)
 

Означает удержание текущей rc_role процесса при CHOWN и EXECUTE.
 

 66  =  inherit_parent  (по умолчанию)
 

Означает использование текущей rc_role родительского процесса.
 

 67  =  inherit_user_on_chown_only  (по умолчанию для root)
 

Означает использование пользовательской rc_def_role при CHOWN.
 rc_role 
Идентификатор RC-роли процесса.
 

Значение: идентификатор RC-типа ( 0-63 )
 rc_type 
Идентификатор RC-типа процесса.
 

Значение: идентификатор RC-типа ( 0-63 )
 security_level 
Уровень классификации безопасности.
 

Значение:  0  = неопределенный,  1  = 4 = наследованный, максимальный уровень  252 
 
   
 ПРИМЕРЫ 

 

Проверить наличие форсирования роли процесса с PID 9463:
 

attr_get_process 9463 rc_force_role
 

67 (inherit_user_on_chown_only)
 

Получить тип PM-процесса для процесса с PID 1:
 

attr_get_process 1 pm_process_type 
 

0 (отсутствует)
   
 АВТОРЫ 

 

 RSBAC  - Rule Set Based Access Control:
 


Amon Ott < ao@rsbac.org >
 

Stanislav Ievlev < inger@altlinux.ru >

 

Русские страницы руководства:
 


Александр Блохин < sass@uustoll.ee >

   
 СМ. ТАКЖЕ 

 

 RSBAC  - Rule Set Based Access Control,  attr_get_user (8),  attr_get_fd (8),  attr_get_dev (8),  attr_get_ipc (8),  attr_get_file_dir (8),  attr_get_up (8)
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 КЛЮЧИ 
 АТРИБУТЫ И ЗНАЧЕНИЯ 
 ПРИМЕРЫ 
 АВТОРЫ 
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