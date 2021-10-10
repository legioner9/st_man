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
 
 
 
 free_hugepages (2) >>  free_hugepages  (2)   ( Русские man: Системные вызовы )   free_hugepages  (2)   ( Linux man: Системные вызовы ) 
   
 ИМЯ 

alloc_hugepages, free_hugepages - выделение или освобождение огромных страниц памяти
   
 ОБЗОР 

 void *alloc_hugepages(int  key , void * addr , size_t  len , int  prot , int  flag ); 



 
 int free_hugepages(void * addr ); 


   
 ОПИСАНИЕ 

Системные вызовы
 alloc_hugepages 

и
 free_hugepages 

были введены в Linux 2.5.36 и удалены снова в 2.5.54. Они существуют только
на платформах i386 и ia64 (когда ядро собрано с CONFIG_HUGETLB_PAGE).
В Linux 2.4.20 номера этих системных вызовов существуют, но возвращают ENOSYS.
 

На платформе i386 аппаратная часть управления памятью знает об обычных
страницах (4 kB) и огромных страницах (2 или 4 MB). Похожим образом и
на платформе ia64 аппартная часть знает об огромных страницах разных
размеров. Упомянутые системные вызовы обслуживают выделение огромных
страниц в память процесса или их освобождение.
Огромные страницы остаются в памяти и не сбрасываются на своппиг.
 

Параметр
 key 

- это некий идентификатор. Он равен нулю, если выделено ноль страниц и
нет страниц унаследованных процессами-потомками. Он больше нуля,
если несколько страниц разделяются несколькими приложениями,
использующими один и тот же
 key 

и приложения являются процессами-потомками.
 

Параметр
 addr 

вызова
 free_hugepages() 

говорит какая страница будет освобождена - это значение, которое
возвращает вызов
 alloc_hugepages() .

(Память фактически освобождается только когда все пользователи
освобождают её).
Параметр
 addr 

вызова
 alloc_hugepages() 

имеет в длину hint, и ядро может это поддерживать, а может нет.
Адреса должны быть должным образом выравнены.
 

Параметр
 len 

является длиной требуемого сегмента. Она должна быть кратной
размеру огромной страницы.
 

Параметр
 prot 

задаёт защиту выделяемого сегмента памяти. Может принимать
одно из значений PROT_READ, PROT_WRITE, PROT_EXEC.
 

Параметр
 flag 

игнорируется, пока значение
 key 

не является положительным. В этом случае, если
 flag 

установлен в значение IPC_CREAT, то новый огромный сегмент
создаётся, если не существуют других сегментов с заданным
значением
 key . 

Если флаг не установлен и не существуют других сегментов с
заданным
 key , 

то возвращается ENOENT.
 .SH ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ

В случае успеха
 alloc_hugepages 

возвращает выделенный виртуальный адрес, а
 free_hugepages 

возвращает ноль. В случае ошибки возврщается -1 и значение
 errno 

устанавливается должным образом.
   
 ОШИБКИ 

 
 ENOSYS 

 
Системный вызов не поддерживается данным ядром.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Данные системные вызовы существуют только в Linux 2.5.36 - 2.5.54.
Эти вызовы являются специфичными для Linux на процессорах Intel и
не должны использоваться в программах, которые задумываются как
переносимые. На самом деле, номера этих системных вызовов отмечены
для переиспользования, так что программы которые используют их
могут в будущих ядрах вытворять что-то совсем непонятное.
   
 ФАЙЛЫ 

 /proc/sys/vm/nr_hugepages 

Количество настроенных страниц hugetlb.
Этот файл можно как читать так и писать.
 

 /proc/meminfo 

Предоставляет информацию о количестве настроенных страниц hugetlb
и их размер в трёх переменных
HugePages_Total, HugePages_Free, Hugepagesize.
   
 ЗАМЕЧАНИЯ 

Данные системные вызовы умерли. Теперь вместо них можно использовать
файловую систему hugetlbfs. Память, выделяемая огромными страницами
(если процессор позволяет их использование) получается через
отображение файлов в этой виртуальной файловой системе.
 

Максимальное количество огромных страниц может быть задано с помощью
параметра загрузки
 hugepages= . 

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2003
 



 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 ФАЙЛЫ 
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