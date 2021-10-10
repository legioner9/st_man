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
 
 
 
 glsa-check (1) >>  glsa-check  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
    glsa-check ¶ 


	 НАЗВАНИЕ ¶ 


glsa-check - Gentoo: утилита для локального мониторинга с помощью предупреждений по безопасности GLSA 

	 СИНТАКСИС ¶ 


	 glsa-check < опция > [ список-glsa ] 


	 Аргумент [ список glsa ] может содержать произвольное количество номеров GLSA, файлов, содержащих GLSA, или специальных идентификаторов: 'all' (все) и 'affected' (выявленные у вас уязвимости). 


	 ОПИСАНИЕ ¶ 


	 Данная утилита предназначена для локального мониторинга системы с помощью предупреждений по безопасности Gentoo Linux (GLSA). Прежде чем обращаться на багтрекер, ознакомьтесь со следующей документацией:  http://www.gentoo.org/security . 


	 Примечание: для эффективной работы утилиты следует регулярно обновлять локальное дерево портежей. 


	 ОПЦИИ ¶ 


	 -l, --list 


	 вывести краткий отчет по GLSA из  списка glsa , в том числе информацию о наличии известных уязвимостей 


	 -d, --dump, --print 


	 вывести полную информацию по GLSAs из  списка glsa 


	 -t, --test 


	 проверить, влияют ли GLSA из  списка glsa  на систему, и вывести их номера 


	 -p, --pretend 


	 проверить, относятся ли GLSA из  списка glsa  к вашей системе 


	 -f, --fix 


	 попытаться автоматически наложить заданные исправления GLSA из  списка glsa-list  на вашу систему с помощью emerge. При этом пакеты будут обновлены до последней версии, но если нет пути обновления, пакеты удалятся не будут (экспериментальная опция). 


	 -i, --inject 


	 Поместить данные GLSA в файл glsa_injected. 


	 -n, --nocolor 


	 Отключить цветной вывод (опционально). 


	 -h, --help 


	 Вывести эту справку. 


	 -V, --version 


	 Вывести информацию об утилите. 


	 -v, --verbose 


	 Использовать более подробный вывод (опционально). 


	 -c, --cve 


	 Показать номера CVE в режиме списка (опционально). 


	 -q, --quiet 


	 Использовать краткий вывод и не отправлять пустых писем (опционально). 


	 -m, --mail 


	 Отправить письмо с данными GLSA администратору. 


	 ФАЙЛЫ ¶ 


	 /var/lib/portage/glsa_injected 


	 Содержит список номеров GLSA, которые были исправлены и никогда не будут отображаться как 'affected' на данной системе. Каждая строка файла должна содержать только один номер GLSA (например, '200804-02'). 


	 ПЕРЕВОД ¶ 


	 
	 Елена Гаврилова < e.vl.gavrilova@yandex.ru > 
	 


	     


	 0.3 







 
 
 
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