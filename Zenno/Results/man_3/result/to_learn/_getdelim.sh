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
 
 
 
 getdelim (3) >>  getdelim  (3)   ( Русские man: Библиотечные вызовы )   getdelim  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

getline, getdelim - ввод строки
   
 СИНТАКСИС 

 #define _GNU_SOURCE 
 #include < stdio.h > 

 ssize_t getline(char ** lineptr , size_t * n , FILE * stream ); 
 ssize_t getdelim(char ** lineptr , size_t * n , int  delim , FILE * stream ); 
 

   
 ОПИСАНИЕ 

 getline() 

считывает целую строку, сохраняя адрес буфера, содержащего текст, в
 *lineptr. 

Буфер завершается null и содержит символ новой строки, если был найден
разделитель для новой строки.
 


Если
 *lineptr 

равно
 NULL, 

то процедура
 getline() 

будет создавать буфер для содержимого строки, который затем
должен быть высвобожден программой пользователя.
Как альтернатива, перед вызовом
 getline(), 

 *lineptr 

может содержать указатель на буфер, размещенный через
 malloc() 

с размером
 *n 

байтов. Если буфер недостаточно велик для размещения всей считанной строки, то
 getline() 

изменяет размер буфера с помощью
 realloc(), 

обновляя
 *lineptr 

и
 *n 

при необходимости. В любом случае при успехном вызове
 *lineptr 

и
 *n 

будут обновлены для отражения адреса буфера и его размера соответственно.
 
 getdelim() 

работает аналогично
 getline(), 

за исключением того, что разделитель строки, отличающийся от символа
новой строки будет определен, как аргумент
 delimiter .

Как и с 
 getline(), 

символ-разделитель не добавляется, если на вводе не появилось знака
разделения и уже достигнут конец файла.
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При нормальном завершении работы
 getline() 

и
 getdelim() 

возвращают номер считанных символов, включая символ разделителя,
но не включая завершающий символ null. Это значение может
использоваться для обработки встроенных символов null при чтении строки.
 
Обе функции возвращают -1 при ошибках чтения строки (включая
условие достижения конца файла).
 
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EINVAL 

 
Плохие параметры
( n 

или
 lineptr 

равно NULL или
 stream 

некорректно).
 
 
   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

 #define _GNU_SOURCE
#include < stdio.h >
#include < stdlib.h >

int main(void)
{
        FILE * fp;
        char * line = NULL;
        size_t len = 0;
        ssize_t read;
        fp = fopen("/etc/motd", "r");
        if (fp == NULL)
                exit(EXIT_FAILURE);
        while ((read = getline(&line, &len, fp)) != -1) {
                printf("Retrieved line of length %zu :\n", read);
                printf("%s", line);
        }
        if (line)
                free(line);
        return EXIT_SUCCESS;
}
 

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

И getline(), и getdelim() являются расширениями GNU.
Они доступны, начиная с libc 4.6.27.
 
   
 СМ. ТАКЖЕ 

 read (2),

 fopen (3),

 fread (3),

 gets (3),

 fgets (3),

 scanf (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
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