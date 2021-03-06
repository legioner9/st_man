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
 
 
 
 posix_fadvise (2) >>  posix_fadvise  (2)   ( Русские man: Системные вызовы )   posix_fadvise  (2)   ( Linux man: Системные вызовы )   posix_fadvise  (3)   ( Solaris man: Библиотечные вызовы )   posix_fadvise  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

posix_fadvise - предварительно декларирует шаблон доступа для файла данных
   
 СИНТАКСИС 

 #include < fcntl.h > 

 int posix_fadvise(int  fd , off_t  offset , size_t  len , int  advice ); 
 

   
 ОПИСАНИЕ 

Программы могут использовать  posix_fadvise  для объявления намерений
осуществить доступ к файлу данных по особому шаблону в скором будущем,
тем самым позволяя ядру выполнить некоторые операции по оптимизации.
 
 advice  применяется к (не обязательно существующей) области,
начинающейся с  offset , длиной  len  байтов (или до конца
файла, если  len  равно 0) внутри файла, на который ссылается  fd .
Советуем не использовать привязки, они лишь только составляют
предположение по приложению.
 
Допустимыми значениями для  advice  являются:
 
 POSIX_FADV_NORMAL 

 
Указывает, что приложение не имеет предположений о шаблоне доступа для 
указанных данных. Если не указано предположение для открываемого файла,
то используется предположение по умолчанию.
 POSIX_FADV_SEQUENTIAL 

 
Приложение ожидает последовательный доступ к указанным данным
(более низкие адреса считываются перед старшими).
 POSIX_FADV_RANDOM 

 
Указанные данные будут запрашиваться в случайном порядке.
 POSIX_FADV_NOREUSE 

 
Указанные данные будут запрошены только один раз.
 POSIX_FADV_WILLNEED 

 
Указанные данные будут запрошены в скором будущем.
 POSIX_FADV_DONTNEED 

 
Указанные данные не будут запрошены в скором будущем.
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При успешном завершении работы возвращается ноль.
При ошибках возвращается -1 и переменная  errno 
устанавливается соответственно ошибке.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EBADF 

 
Аргумент  fd  не был корректным описателем файлов.
 EINVAL 

 
Для  advice  было указано некорректное значение.
 ESPIPE 

 
Указанный описатель файла ссылается на pipe или FIFO
(вообще Linux возвращает в таком случае EINVAL).
 
   
 ЗАМЕЧАНИЯ 

В Linux  POSIX_FADV_NORMAL  устанавливает окно упреждающего чтения
в размер устройства по умолчанию:  POSIX_FADV_SEQUENTIAL  удваивает
этот размер, а  POSIX_FADV_RANDOM  отменяет упреждающее чтение вообще.
Эти изменения влияют на весь файл, а не только на указанную его область
(но другие открытые обработчики файлов на этом файле не изменяются).
 
И  POSIX_FADV_WILLNEED , и  POSIX_FADV_NOREUSE  инициируют
неблокировочное чтение указанной области на странице кэша. Число
неблокированных данных может быть уменьшено ядром в зависимости
от загрузки VM (несколько мегабайт памяти наверняка будут выделены,
а больше обычно и не бывает нужно).
 
 POSIX_FADV_DONTNEED  пытается высвобождать кэшированные страницы,
ассоциированные с указанной областью. Это полезно, например, во время
потока больших файлов. Программа может периодически запрашивать ядро
об освобождении уже использованных кэшированных данных, так что
кэширование страниц будет использоваться достаточно эффективно.
 
Не записанные страницы не будут изменяться, так что если приложение
захочет гарантированно высвободить страницу, то оно должно вызвать
сначала  fsync  или  fdatasync .
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SUSv3 (Advanced Realtime Option)
   
 СМ. ТАКЖЕ 

 posix_fallocate (2),  posix_madvise (2).

 

 
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