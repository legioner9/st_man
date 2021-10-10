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
 
 
 
 realpath (3)   realpath  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня )   realpath  (3)   ( Solaris man: Библиотечные вызовы )   realpath  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  realpath  (3)   ( Русские man: Библиотечные вызовы )   realpath  (3)   ( Linux man: Библиотечные вызовы )   realpath  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

realpath - возвращает приведенное к обычному виду полное имя файла
   
 СИНТАКСИС 

 #include < limits.h > 
 #include < stdlib.h > 

 char *realpath(const char * path , char * resolved_path ); 
 

   
 ОПИСАНИЕ 

 realpath 

распознает все символьные ссылки, удлиняет записи типа
 '/./' ,  '/../' 

(включая ведущий символ
 '/' 

в строке
 path 

символов, завершенных нулем)
и сохраняет приведенное к нормальному виду полное имя файла в буфере
размера
 PATH_MAX , 

указанном в
 resolved_path .

В результате путь не имеет ссылок и компонентов
 '/./' 

или
 '/../' .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Если не произошло никаких ошибок, возвращается указатель на
 resolved_path .

Иначе возвращается указатель на NULL и содержимое массива
 resolved_path 

не определяется. Глобальная переменная
 errno 

указывает на код ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EACCES 

 
- запрещено чтение или поиск для компонента, содержащегося в пути;
 EINVAL 

 
- одна из величин
 path 

или
 resolved_path 

равна NULL (в libc5 это просто вызывает ошибку segfault);
 EIO 

 
- ошибка ввода-вывода при чтении из файловой системы;
 ELOOP 

 
- слишком много символьных ссылок в транслируемом пути;
 ENAMETOOLONG 

 
- компонент имени в пути содержит более 
 NAME_MAX 

символов или компонент пути содержит более
 PATH_MAX 

символов);
 ENOENT 

 
- указанный файл отсутствует;
 ENOTDIR 

 
- компонент пути - это не каталог.
 
   
 НАЙДЕННЫЕ ОШИБКИ 

Никогда не используйте эту функцию. В ней изначально заложена
некорректность, так как невозможно определить подходящий размер
для буфера вывода. В соответствии с POSIX буфера размером
PATH_MAX должно хватить, но PATH_MAX может и не быть определяемой
константой, и может быть получен через
 pathconf() .

И запрос
 pathconf()  

особо не поможет, так как с одной стороны POSIX предупреждает,
что результат
 pathconf()  

может быть слишком велик и не входить в память, отведенную через malloc.
С другой стороны,
 pathconf()  

может возвратить -1 для обозначения того, что PATH_MAX неограничен.
 

Реализации libc4 и libc5 содержат ошибку, вызывающую переполнение
буфера (исправлено в libc-5.4.13).
Так что suid-програмы, такие, как mount, нуждаются в собственной версии.
   
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 

Функция
 realpath 

впервые появилась в BSD 4.4, распространяемой Jan-Simon Pendry.
В Linux эта функция появилась в libc 4.5.21.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

В BSD 4.4 и Solaris максимальная длина пути равна MAXPATHLEN
(находится в < sys/param.h >). SUSv2 описывает PATH_MAX и
NAME_MAX, находящиеся в < limits.h > и определяемые функцией
 pathconf() . 

Вот типичный фрагмент кода:
 

 
 #ifdef PATH_MAX
  path_max = PATH_MAX;
#else
  path_max = pathconf (path, _PC_PATH_MAX);
  if (path_max <= 0)
    path_max = 4096;
#endif
 

 

(Смотрите раздел "НАЙДЕННЫЕ ОШИБКИ".)
 

Версии BSD 4.4, Linux и SUSv2 всегда возвращают абсолютное полное имя.
Solaris может вернуть относительное имя, если аргумент
 path 

относителен. Прототип
 realpath 

определен в файле < unistd.h > libc4 и libc5,
а в других системах - в файле < stdlib.h >.
   
 СМ. ТАКЖЕ 

 readlink (2),

 getcwd (3),

 pathconf (3),

 sysconf (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 НАЙДЕННЫЕ ОШИБКИ 
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 
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