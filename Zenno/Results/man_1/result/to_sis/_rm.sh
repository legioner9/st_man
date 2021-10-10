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
 
 
 
 rm (1)   rm  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   rm  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  rm  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   rm  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   rm  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня ) 
   
 ИМЯ 

rm - удаляет файлы или каталоги
   
 ОБЗОР 

 rm [ опции ]  файл... 

 
Опции POSIX:
 [-fiRr] [--] 

 
Опции GNU (краткая форма):
 [-dfirvR] 

 [--help] [--version] [--] 

   
 ОПИСАНИЕ 

 rm 

удаляет каждый заданный
 файл .

По умолчанию каталоги не удаляются, но если заданы опции -r или -R,
то будет удаляться все дерево каталогов ниже заданного каталога,
включая и его самого (без ограничения на глубину этого дерева).  Будет
выдано сообщение об ошибке, если последний компонент
 файла  --

это `.' или `..'  (чтобы избежать неприятных сюрпризов при задании
команды `rm -r .*' или ей подобных).
 

Если задана опция -i или файл является недоступным на запись и при этом
стандартный вывод -- это терминал и не задана опция
 -f, 

то
 rm 

выводит на стандартный вывод ошибок запрос на подтверждение удаления
этого файла и читает ответ из стандартного ввода.  Если ответ не
утвердительный, то файл пропускается.
   
 ОПЦИИ POSIX 

 
 -f 

 
Не запрашивать подтверждения операции.  Не выдавать диагностических
сообщений.  Не возвращать код ошибочного завершения, если ошибки были
вызваны несуществующими файлами.
 -i 

 
Выводить запрос на подтверждение операции удаления (если заданы
одновременно опции -f и -i, то срабатывает последняя указанная).
 -r  or  -R 

 
Рекурсивное удаление дерева каталогов.
 [--] 

 
Завершает список опций.
 
   
 ДЕТАЛИ ВЕРСИИ SVID 

Документ System V Interface Definition
запрещает удалять последнюю ссылку на исполняемый бинарный файл,
который находится в процессе выполнения.
   
 ДЕТАЛИ ВЕРСИИ GNU 

Реализация GNU
 rm 

(в fileutils-3.16) работает неправильно, так как там имеется ограничение
на глубину дерева каталога, которое может быть удалено. (При необходимости
удаления очень глубоких деревьев может быть использована утилита
`deltree').
   
 ОПЦИИ GNU 

 
 -d, --directory 

 
Удалять каталоги с помощью системного вызова
 unlink (2)

вместо
 rmdir (2),

и не требовать, чтобы каталог был пуст перед его разлинковкой. Работает
только если у вас есть соответствующие привилегии. Поскольку
разлинковка (разрыв связи) каталога приводит к тому, что все файлы
в удаленном каталоге теряют ссылочную целостность, то будет
благоразумно после этой операции проверить файловую систему командой
 fsck (8).

 -f, --force 

 
Игнорировать несуществующие файлы и никогда не запрашивать
подтверждение на удаления.
 -i, --interactive 

 
Выдавать запрос на удаление каждого файла.  Если ответ не
утвердителен, то файл пропускается.
 -r, -R, --recursive 

 
Рекурсивно удалять содержимое каталогов.
 -v, --verbose 

 
Выдавать имя каждого файла перед его удалением.
 
   
 СТАНДАРТНЫЕ ОПЦИИ GNU 

 
 --help 

 
Выдать подсказку на стандартный вывод и успешно завершиться.
 --version 

 
Выдать информацию о версии на стандартный вывод и успешно завершиться.
 -- 

 
Служит для обозначения конца списка опций.
 
   
 ОКРУЖЕНИЕ 

При работе обычным образом используются значения переменных LANG, LC_ALL, LC_COLLATE,
LC_CTYPE и LC_MESSAGES.
   
 СОВМЕСТИМОСТЬ 

Соответствует POSIX 1003.2, за исключением ограничения на глубину
иерархии файлов.
   
 ЗАМЕЧАНИЯ 

Данная страница описывает версию
 rm 

пакета fileutils-4.0;
другие версии могут иметь небольшие отличия.
Исправления и дополнения присылайте по адресу  aeb@cwi.nl .
Отчеты об ошибках в этой программе присылайте по адресу
 fileutils-bugs@gnu.ai.mit.edu .
 

Иногда хочется восстановить удалённые файлы. В этом вам могут помочь
резервные копии. В этом вам может помочь использование специального
trash каталога, куда можно перемещать файлы вместо удаления. Но
фактически удалённые файлы, хотя бы даже в принципе, иногда могут
быть восстановлены. Подробности для файловой системы ext2, смотрите
в Ext2fs-Undeletion mini-Howto.
   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ОПЦИИ POSIX 
 ДЕТАЛИ ВЕРСИИ SVID 
 ДЕТАЛИ ВЕРСИИ GNU 
 ОПЦИИ GNU 
 СТАНДАРТНЫЕ ОПЦИИ GNU 
 ОКРУЖЕНИЕ 
 СОВМЕСТИМОСТЬ 
 ЗАМЕЧАНИЯ 
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