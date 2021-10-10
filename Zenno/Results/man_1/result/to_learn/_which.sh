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
 
 
 
 which (1)   which  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   which  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  which  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   which  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 


   
 НАЗВАНИЕ 

which - отображает полный путь к указанным командам или сценариям.
   
 СИНТАКСИС 

 which 

[опции] [--] имя_программы [...]
   
 ОПИСАНИЕ 

 Which  принимает один или более аргументов  имя_программы .
Для каждого из них она выводит тот полный путь к исполняемому файлу,
который будет использован командной оболочкой, если  имя_программы  ввести в качестве команды в командной строке. Эта программа выполняет поиск исполняемых файлов или сценариев в каталогах, перечисленных в переменной окружения  PATH  используя тот же алгоритм,
что и  bash (1) .
 
Эта man-страница получена из файла  which.texinfo .
   
 ОПЦИИ 

 
 
 --all ,  -a 

 
Выводит все совпавшие исполняемые файлы по содержимому в переменной окружения  PATH ,
а не только первый из них.
 --read-alias ,  -i 

 
Считывает псевдонимы, поступающие из стандартного ввода и направляет на стандартный вывод
информацию по совпавшим. Эта опция полезна в сочетании с использованием псевдонима для самой
команды  which . Например:
 

 alias which='alias | which -i' .

 --skip-alias 

 
Игнорирует опцию `--read-alias', если таковая имеется. Эта опция полезна для точного
поиска обычных двоичных файлов, которые используют опцию
`--read-alias' в псевдониме или функции для  which .
 --read-functions 

 
Считывает функции, определённые в командной оболочке и поступающие из стандартного ввода,
а затем направляет на стандартный вывод информацию по совпавшим. Эта опция полезна в сочетании с
функциями командной оболочки для самой команды  which . Например:
 

 which() { declare -f | which --read-functions $@ } 

 

export -f which
 --skip-functions 

 
Игнорирует опцию `--read-functions',  если таковая имеется. Эта опция полезна для точного
поиска обычных двоичных файлов, которые используют опцию
`--read-alias' в псевдониме или функции для  which .
 --skip-dot 

 
Пропускает все каталоги из переменной окружения  PATH , которые начинаются с точки.
 --skip-tilde 

 
Пропускает все каталоги из переменной окружения  PATH , имена которых начинаются с
символа тильда (~), а также все исполняемые файлы, которые расположены в каталоге,
указанном в переменной  HOME .
 --show-dot 

 
Если имя каталога из переменной окружения  PATH  начинается с точки и соответствующий
исполняемый файл  имя_программы  был найден в этом пути, тогда вместо полного пути будет
выведено " ./имя_программы ".
 --show-tilde 

 
Выводит тильду, когда каталог совпадает с каталогом, указанном в переменной окружения  HOME 
(т.е. с домашним каталогом). Эта опция игнорируется, если  which  вызывается
суперпользователем (root).
 --tty-only 

 
Не обрабатывает опции, которые находятся справа за этой опцией, если они поступают не
с терминала (tty).
 --version,-v,-V 

 
Выводит информацию о версии программы на стандартное устройство и завершает её работу.
 --help 

 
Выводит краткое описание опций программы на стандартное устройство и завершает её работу.
 
   
 КОДЫ ЗАВЕРШЕНИЯ РАБОТЫ 

Программа  which  возвращает номера некорректных опций или -1, когда
пропущен аргумент ` имя_программы '.
   
 ПРИМЕР 

Обычно утилиту  which  используют в различных псевдонимах (C shell)
или сценариях (Bourne shell) командных оболочек, например, как показано ниже:
 
Командная оболочка [ba]sh:
 

 which ()
{
  (alias; declare -f) | /usr/bin/which --tty-only --read-alias --read-functions --show-tilde --show-dot $@
}
export -f which
 

 
Командная оболочка [t]csh:
 

 alias which 'alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'
 

 
В следующем  примере показано два возможных варианта вывода одной и той же команды  which ,
в зависимости от контекста ее применения. В первом случае, вместо полного пути
выводится ~/ и ./ (для исполняемого файла, расположенного в домашнем каталоге пользователя),
когда команда  which  непосредственно запущена пользователем из командной строки.
Во втором - команда  which  запущена из скрипта. Здесь будет выведен полный путь к
указанной программе:
 

 > which q2
~/bin/q2
> echo `which q2`
/home/carlo/bin/q2
 

 
   
 ОШИБКИ 

 Домашний каталог  определяется из переменной окружения  HOME , поэтому
если эта переменная будет неопределённой, это вызовет прерывание выполнения данной программы.
Программа  which  будет считать два эквивалентных каталога различными,
если один из них содержит путь с символической ссылкой.
   
 АВТОР 

 

Carlo Wood < carlo@gnu.org >
   
 СМ. ТАКЖЕ 

 bash (1) 

   
 ПЕРЕВОД 

оригинального файла на английском which.1.gz (1515 байт от 15.09.2003)
выполнен Aleksander N.Gorohovski < angel@feht.dgtu.donetsk.ua > 09.11.2005.

   
 РЕЦЕНЗИЯ ПЕРЕВОДА 

Kirill Maslinsky < kirill@altlinux.ru >
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОПЦИИ 
 КОДЫ ЗАВЕРШЕНИЯ РАБОТЫ 
 ПРИМЕР 
 ОШИБКИ 
 АВТОР 
 СМ. ТАКЖЕ 
 ПЕРЕВОД 
 РЕЦЕНЗИЯ ПЕРЕВОДА 
 
 
 
 
 
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