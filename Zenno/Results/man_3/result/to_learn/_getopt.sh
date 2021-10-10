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
 
 
 
 getopt (3)   getopt  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   getopt  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня )   getopt  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   getopt  (3)   ( Solaris man: Библиотечные вызовы )   getopt  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  getopt  (3)   ( Русские man: Библиотечные вызовы )   getopt  (3)   ( Linux man: Библиотечные вызовы )   getopt  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

getopt - разбор командной строки, получение опций
   
 СИНТАКСИС 

 #include < unistd.h > 

 int getopt(int  argc , char * const  argv[] , 
            const char * optstring ); 

 extern char * optarg ; 
 extern int  optind ,  opterr ,  optopt ; 

 #define _GNU_SOURCE 
 
 #include < getopt.h > 

 int getopt_long(int  argc , char * const  argv[] , 
            const char * optstring , 
            const struct option * longopts , int * longindex ); 

 int getopt_long_only(int  argc , char * const  argv[] , 
            const char * optstring , 
            const struct option * longopts , int * longindex ); 
 

   
 ОПИСАНИЕ 

Функция
 getopt() 

разбирает аргументы командной строки. Ее аргументы
 argc 

и 
 argv 

являются счетчиком и массивом аргументов, которые передаются функции
 main() 

при запуске программы. Элемент
 argv ,

начинающийся с "-" (и не являющийся "-" или "--"), считается опцией.
Символы этого элемента (не считая начального "-") являются символами
опций. При каждом повторном вызове 
 getopt()  

возвращаются символы следующей опции.
 

Если
 getopt()  

находит символ опции, она возвращает этот символ, обновляя внешнюю переменную 
 optind  

и статическую переменную 
 nextchar ,

так что следующий вызов 
 getopt()  

может продолжить проверку со следующего символа опции или элемента 
 argv .

 

Если символов опций больше нет, то 
 getopt()  

возвращает -1. При этом 
 optind  

станет индексом первого элемента 
 argv ,

не являющегося опцией.
 

 optstring 

является строкой, содержащей допустимые символы опций. Если за таким символом
стоит двоеточие, то опция требует указания аргумента. При этом 
 getopt()  

помещает указатель на следующий за символом опции текст, в тот же элемент
 argv ,

или на текст следующего элемента 
 argv, 

в 
 optarg .

Два двоеточия означают, что опция имеет необязательный аргумент;
если текущий элемент 
 argv  

содержит текст, то он возвращается в 
 optarg ,

в противном случае 
 optarg  

содержит ноль. Это является дополнением GNU. 
Если 
 optstring 

содержит 
 W ,

за которой следует точка с запятой, то 
 -W foo 

рассматривается как длинная опция 
 --foo .

Опция 
 -W 

зарезервирована POSIX.2 для реализации расширений. Такое поведение является
дополнительным для GNU и недоступным в библиотеках GNU libc более ранних по сравнению
со второй версий.
 

По умолчанию 
 getopt() 

переставляет элементы содержимого 
 argv 

в процессе поиска, так что в конечном счете все аргументы, не являющиеся
опциями, оказываются в конце. Реализованы также два других режима. Если первым
символом 
 optstring 

является "+" или задана переменная окружения POSIXLY_CORRECT, то обработка
опций прерывается на первом аргументе, не являющемся опцией. Если первым
символом 
 optstring  

является "-", то каждый элемент 
 argv ,

не являющийся опцией, обрабатывается так, как если бы он был
аргументом опции с символом, имеющим код 1. Она используется программами,
которые требуют опции и другие аргументы командной строки.
Специальный аргумент "--" служит для обозначения конца опций независимо от
режима. 
 

Если 
 getopt()  

не распознал символ опции, то он выводит на стандартный поток ошибок 
соответствующее сообщение, заносит символ в 
 optopt  

и возвращает "?". Вызывающая программа может предотвратить вывод сообщения об
ошибке, установив нулевое значение
 opterr .

 

Если функция  getopt()  обнаружит в  argv  символ опции, не найденный
в  optstring , или если она обнаружит пропущенный аргумент опции, то она
возвратит `?' и занесет во внешную переменную  optopt  действительный
символ опции. Если первым символом  optstring  является двоеточие (`:'),
то для сообщения о пропущенном аргументе опции  getopt()  возвратит `:'
вместо `?'. Если при обнаружении ошибки первый символ  optstring  не
является двоеточием и внешняя переменная  opterr  не равно нулю
(по умолчанию так и есть), то  getopt()  выведет сообщение об ошибке.
 

Функция 
 getopt_long() 

работает так же, как  
 getopt() ,

за исключением того, что она воспринимает и длинные опции, начинающиеся с двух
дефисов. Длинные опции можно сокращать, если сокращение сохраняет уникальность
опции или полностью совпадает с одной из определенных опций. Длинная опция может
иметь параметр вида 
 --опция=параметр 

или 
 --опция параметр .

 

 longopts 

является указателем на первый элемент массива структур 
 struct option ,

указанного в 
 < getopt.h > 

следующим образом
 
struct option {
const char *name;
int has_arg;
int *flag;
int val;
};
 

 

Значения различных полей: 
 
 name 

 
является именем длинной опции. 
 has_arg 

 
может быть:
 no_argument  (или 0), если опция не имеет аргумента;
 required_argument  (или 1), если опция требует указания аргумента;
 optional_argument  (или 2), если опция может иметь необязательный
аргумент. 
 flag 

 
задает способ возвращения результатов для длинной опции. Если
 flag  

равен
 NULL ,

то
 getopt_long() 

возвращает
 val .

Hапример, вызывающая программа может назначить
 val 

эквивалентом символа короткой опции. В противном случае
 getopt_long() 

возвращает 0, а
 flag 

указывает на переменную, устанавливаемое значение которой равно 
 val ,

если опция найдена; и оставляемую без изменений, если опция не найдена.
 val   
является возвращаемым значением или загружается в переменную, на которую
указывает 
 flag .

 
 

Последний элемент массива должен быть заполнен нулями. 
 

Если 
 longindex 

не содержит 
 NULL ,

то он является указателем на переменную, содержащую индекс длинной опции
в соответствии с
 longopts .

 

 getopt_long_only() 

работает так же, как 
 getopt_long(), 

но в качестве указателя длинной опции может служить не только "--", но и
"-". Если опция, начинающаяся с "-" (не с "--"), не совпадает с длинной опцией,
но совпадает с короткой, то она обрабатывается как короткая опция.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция 
 getopt() 

возвращает символ опции, если опция была успешно найдена, ":", если был пропущен
параметр одной из опций, "?", если обнаружен неизвестный символ опции, или -1 в
конце списка опций.
 

 getopt_long() 

и
 getopt_long_only() 

также возвращают символ опции, если распознана короткая опция. Для длинной опции
они возвращают
 val ,

если
 flag 

равен
 NULL ,

и 0 в остальных случаях. Возвращаемые ошибки и -1 имеют то же значение, что и
для 
 getopt() ,

кроме того, "?" возвращается при двусмысленном толковании параметра.
   
 ПЕРЕМЕННЫЕ ОКРУЖЕНИЯ 

 
 POSIXLY_CORRECT 

 
 
Если установлена эта переменная, то обработка опций прерывается на первом
аргументе, не являющемся опцией. 
 _<PID>_GNU_nonoption_argv_flags_ 

 
 
Эта переменная использовалась 
 bash 

2.0 для связи с GNU libc, аргументы которой являются
результатом раскрытия шаблонов и, таким образом, не должны
рассматриваться как опции. Это было изъято из 
 bash 

версии 2.01, но поддержка такого поведения в GNU libc осталась.
 
   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

Приведенный ниже пример программы иллюстрирует
использование большинства возможностей 
 getopt_long() .

 
#include < stdio.h >     /* для printf */
#include < stdlib.h >    /* для exit */
#include < getopt.h >

int
main (int argc, char **argv) {
    int c;
    int digit_optind = 0;

    while (1) {
        int this_option_optind = optind ? optind : 1;
        int option_index = 0;
        static struct option long_options[] = {
            {"add", 1, 0, 0},
            {"append", 0, 0, 0},
            {"delete", 1, 0, 0},
            {"verbose", 0, 0, 0},
            {"create", 1, 0, 'c'},
            {"file", 1, 0, 0},
            {0, 0, 0, 0}
        };

        c = getopt_long (argc, argv, "abc:d:012",
                 long_options, &option_index);
        if (c == -1)
            break;

        switch (c) {
        case 0:
            printf ("параметр %s", long_options[option_index].name);
            if (optarg)
                printf (" с аргументом %s", optarg);
            printf ("\n");
            break;

        case '0':
        case '1':
        case '2':
            if (digit_optind != 0 && digit_optind != this_option_optind)
              printf ("цифры используются в двух разных элементах argv.\n");
            digit_optind = this_option_optind;
            printf ("параметр  %c\n", c);
            break;

        case 'a':
            printf ("параметр a\n");
            break;

        case 'b':
            printf ("параметр b\n");
            break;

        case 'c':
            printf ("параметр c со значением `%s'\n", optarg);
            break;

        case 'd':
            printf ("параметр d со значением `%s'\n", optarg);
            break;

        case '?':
            break;

        default:
            printf ("?? getopt возвратило код символа 0%o ??\n", c);
        }
    }

    if (optind < argc) {
        printf ("элементы ARGV, не параметры: ");
        while (optind < argc)
            printf ("%s ", argv[optind++]);
        printf ("\n");
    }

    exit (0);
}
 

   
 НАЙДЕННЫЕ ОШИБКИ 

Описание на этой странице руководства является не совсем ясным.
 

Описание в POSIX.2 функции 
 getopt() 

содержит техническую ошибку, рассмотренную в POSIX.2 Interpretation 150. В
реализации GNU (и, возможно, во всех других реализациях) работа функции 
отличается от описанной в спецификации и является корректной.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

 
 getopt() :

 
POSIX.2, если установлена переменная окружения POSIXLY_CORRECT.
В противном случае элементы
 argv  

на самом деле не являются константами, потому что мы изменяем их порядок.
Мы будем считать их постоянными в прототипах для совместимости этих прототипов
с другими операционными системами.
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ПЕРЕМЕННЫЕ ОКРУЖЕНИЯ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 
 
 
 
 
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