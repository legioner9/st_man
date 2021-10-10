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
 
 
 
 dlsym (3)   dlsym  (3)   ( Solaris man: Библиотечные вызовы )   dlsym  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  dlsym  (3)   ( Русские man: Библиотечные вызовы )   dlsym  (3)   ( Linux man: Библиотечные вызовы )   dlsym  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

dlclose, dlerror, dlopen, dlsym - программный интерфейс для динамически загружаемых библиотек
   
 СИНТАКСИС 

 #include < dlfcn.h > 

 
 void *dlopen(const char * filename , int  flag ); 

 

 const char *dlerror(void); 

 

 void *dlsym(void * handle , char * symbol ); 

 

 int dlclose(void *handle ); 

 
Специальные символы:
 _init ,  _fini .

   
 ОПИСАНИЕ 

 dlopen 

загружает динамическую библиотеку, имя которой указано в строке
 filename ,

и возвращает прямой указатель на начало динамической библиотеки. Если
 filename 

не является полным именем файла (т.е. не начинается с "/"),
то файл ищется в следующих местах:
 
 

в разделенном двоеточием списке каталогов, в переменной окружения пользователя
 LD_LIBRARY_PATH .
 

В списке библиотек, кэшированных в файле  /etc/ld.so.cache .
 

В  /usr/lib  и далее в  /lib .
 

 

Если 
 filename 

указывает на NULL, то возвращается указатель на основную программу.
 

Внешние ссылки разрешаются при работе с библиотеками
в списке библиотечных зависимостей и любыми другими, 
которые уже открыты с флагом 
 RTLD_GLOBAL. 

Если исполняемый модуль был собран с флагом "-rdynamic",  его
символьная информация также используется для разрешения ссылок в
динамически загружаемых библиотеках.
 

Значение
 flag 

должно быть одним из двух: 
 RTLD_LAZY ,

подразумевающим разрешение неопределенных символов в виде кода, 
содержащегося в исполняемой
динамической библиотеке; или
 RTLD_NOW ,

требующим разрешения всех неопределенных символов перед возвратом их из 
 dlopen 

и возвращающим ошибку, если разрешение не может быть выполнено.
Также значение
 RTLD_GLOBAL 

может быть задано через OR вместе с
 flag; 

в этом случае внешние символы, определенные в библиотеке, будут доступны
загруженным позже библиотекам.
 

Если библиотека экспортировала функцию, названную 
 _init ,

то ее код выполняется перед возвратом из dlopen.
Если необходимо избежать привязки к системным файлам загрузки,
то это можно сделать, указав gcc параметр "-nostartfiles"
в командной строке.
 

Если одна и та же библиотека загружается дважды через
 dlopen() ,

то возвращается один и тот же указатель. Библиотека dl поддерживает счетчик
ссылок, созданный для указателей на файлы, так что динамическая библиотека не может
быть выгружена, пока не будет вызвана функция 
 dlclose 

столько раз, сколько необходимо для успешного выполнения функции
 dlopen . 

 

Если по какой-либо причине выполнение
 dlopen 

неудачно, то она возвращает значение NULL.
Понятный пользователю текст, описывающий большинство ошибок, происходящих
при выполнении любых функций dl (dlopen, dlsym or dlclose), может быть
получен при помощи функции
 dlerror() .

 dlerror 

возвращает NULL, если не возникло ошибок с момента инициализации или
его последнего вызова. Если вызывать
 dlerror() 

дважды, то во второй раз результат выполнения всегда будет равен NULL.
 dlsym 

использует указатель на динамическую библиотеку, возвращаемую dlopen, и
оканчивающееся нулем символьное имя, а затем возвращает адрес, указывающий,
откуда загружается этот символ. Если символ не найден, то возвращаемым значением
 dlsym 

является NULL; тем не менее, правильным способом проверки 
 dlsym 

на наличие ошибок является сохранение в переменной результата выполнения
 dlerror, 

а затем проверка, равно ли это значение NULL.
Это делается потому, что значение символа действительно может быть NULL.
Также необходимо сохранять результат 
 dlerror 

в переменной, поскольку если функция
 dlerror 

вызвана еще раз, то возвращаемое ею значение будет равно NULL.
 

Имеется две специальных псевдо-указателя динамической библитеки
 RTLD_DEFAULT 

и
 RTLD_NEXT .

Первый ищет требуемый символ, используя порядок поиска библиотек по умолчанию.
Второй найдет функцию в следующей библиотеке в соответствии с порядком поиска.
Он полезен только при использовании из динамической библиотеки. Это позволяет
реализовывать обертки (wrapper) вокруг функций из других библиотек.
 

 dlclose 

уменьшает на единицу счетчик ссылок на указатель динамической библиотеки
 handle .

Если нет других загруженных
библиотек, использующих ее символы и если счетчик ссылок
принимает нулевое значение, то динамическая библиотека
выгружается. Если динамическая библиотека экпортировала функцию, названную 
 _fini ,

то эта функция вызывается перед выгрузкой библиотеки.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 dlclose 

возвращает 0 при удачном завершении и ненулевой результат при ошибке.
   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

 Загрузка библиотеки math и вывод cosine (2.0) :

 
 #include < stdio.h >
#include < dlfcn.h >
int main(int argc, char **argv) {
    void *handle;
    double (*cosine)(double);
    char *error;
    handle = dlopen ("/lib/libm.so", RTLD_LAZY);
    if (!handle) {
        fputs (dlerror(), stderr);
         exit (1);
    }
    cosine = dlsym(handle, "cos");
    if ((error = dlerror()) != NULL)  {
        fprintf (stderr, "%s\n", error);
         exit (1);
    }
    printf ("%f\n", (*cosine)(2.0));
    dlclose(handle);
}
 

 

 

Если этот скрипт находится в файле "foo.c", вы можете собрать программу при помощи
следующей команды:
 
 

gcc -rdynamic -o foo foo.c -ldl
 

 

Библиотеки, экспортирующие _init() и _fini(), нужно скомпилировать
вот так, на примере имени bar.c:
 
 

gcc -shared -nostartfiles -o bar bar.c
 

   
 ЗАМЕЧАНИЯ 

Символы RTLD_DEFAULT и RTLD_NEXT определены
 < dlfcn.h > 

только когда было определено _GNU_SOURCE перед его включением.
   
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 

Стандарт интерфейса dlopen пришел из SunOS.



   
 СМ. ТАКЖЕ 

 ld (1), 

 ld.so (8),

 ldconfig (8), 

 ldd (1), 

 ld.so.info 

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
 ЗАМЕЧАНИЯ 
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 
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