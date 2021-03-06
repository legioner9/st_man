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
 
 
 
 tty_ioctl (4) >>  tty_ioctl  (4)   ( Русские man: Специальные файлы /dev/* )   tty_ioctl  (4)   ( Linux man: Специальные файлы /dev/* ) 
   
 НАЗВАНИЕ 

tty ioctl - вызовы ioctl для терминалов и последовательных портов
   
 СИНТАКСИС 

 
 #include < termios.h > 

 
 int ioctl(int  fd , int  cmd , ...); 

 
   
 ОПИСАНИЕ 

Вызов
 ioctl() 

для терминалов и последовательных портов воспринимает много разных
параметров команд. Большинство из них требуют при этом третий аргумент,
разных типаов, далее по тексту называемый  argp  или  arg .
 

Вызовы
 ioctl 

используются только в непортируемых программах. По возможности старайтесь
везде использовать интерфейс POSIX, описанный в
 termios (3).

 
   
 Определение и установка атрибутов терминала 

 
 TCGETS          struct termios * argp 

 
Эквивалентно 
 tcgetattr(fd, argp) .

 

Определяет текущие настройки последовательного порта.
 TCSETS   const struct termios * argp 

 
Эквивалентно 
 tcsetattr(fd, TCSANOW, argp) .

 

Устанавливает новые текущие настройки последовательного порта.
 TCSETSW          const struct termios * argp 

 
Эквивалентно 
 tcsetattr(fd, TCSADRAIN, argp) .

 

Позволяет очистить буфер вывода и установить новые
текущие настройки последовательного порта.
 TCSETSF          const struct termios * argp 

 
Эквивалентно 
 tcsetattr(fd, TCSAFLUSH, argp) .

 

Позволяет очистить буфер вывода, отменить ожидаемые данные на входе
и установить новые текущие настройки последовательного порта.
 
 

Следующие четыре вызова ioctl аналогичны TCGETS, TCSETS, TCSETSW, TCSETSF,
за исключением того, что они работают с
 struct termio * 

вместо 
 struct termios * .

 
 TCGETA      struct termio * argp 

 
 TCSETA          const struct termio * argp 

 
 TCSETAW         const struct termio * argp 

 
 TCSETAF         const struct termio * argp 

 
 
 
   
 Блокировка и структура termios 

Структура termios для tty может быть заблокирована. Блокировка сама по себе
является структурой termios, но с ненулевыми битами или полями, обозначающими
заблокированные значения.
 
 TIOCGLCKTRMIOS   struct termios * argp 

 
Определяет статус блокировки структуры termios терминала. 
 TIOCSLCKTRMIOS   const struct termios * argp 

 
Устанавливает статус блокировки структуры termios терминала. 
Это может делать только суперпользователь root.
 
 
   
 Определение и установка размера окна 

Размеры окон хранятся в ядре, но не используются им
(за исключением случаев виртуальных консолей, где ядро
обновляет размер окна при его изменении, например
из-за загрузки новых шрифтов).
 
 TIOCGWINSZ       struct winsize * argp 

 
Определить размер окна. 
 TIOCSWINSZ       const struct winsize * argp 

 
Установить размер окна. 
 
 

Структура используемая этими системными вызовами ioctl, определяется так:
 
 struct winsize {
        unsigned short ws_row;
        unsigned short ws_col;
        unsigned short ws_xpixel;   /* unused */
        unsigned short ws_ypixel;   /* unused */
};
 

 
При изменении размера окна отправляется сигнал SIGWINCH
в группу фоновых процессов.
 
   
 Отправление разрыва 

 
 TCSBRK          int  arg 

 
Эквивалентно 
 tcsendbreak(fd, arg) .

 

Если терминал использует асинхронную передачу данных, и
 arg 

равно нулю, то отправляется сигнал разрыва (поток нулевых битов)
в течении 0.25 - 0.5 секунд. Если терминал не использует
асинхронную передачу данных, то либо сигнал разрыва не отправляется,
либо фукнция просто завершает работу, ничего не исполняя.
Если
 arg 

не равно нулю, то неизвестно, что произойдет.
 
(SVR4, UnixWare, Solaris, Linux воспринимает
 tcsendbreak(fd,arg) 

с ненулевым значением
 arg 

аналогично вызову
 tcdrain(fd) .

SunOS воспринимает
 arg 

как множитель и отправляет потом битов в
 arg 

раз дольше, чем для нулевого значения
 arg .

DG-UX и AIX воспринимают
 arg 

(если оно не равно нулю) как временной интервал в миллисекундах.
HP-UX игнорирует
 arg .)

 TCSBRKP   int  arg 

 
Так называемая "версия POSIX" TCSBRK. Она воспринимает ненулевые значения 
 arg 

как временной интервал в децисекундах, и ничего не делает, если
драйвер не поддерживает сигналы разрыва.
 TIOCSBRK         void 

 
Включает сигнал разрыва, а именно - начинает отправлять нулевые биты. 
 TIOCCBRK         void 

 
Выключает сигнал разрыва, а именно - прекращает отправлять нулевые биты. 
 
 
   
 Программное управление потоками 

 
 TCXONC          int  arg 

 
Эквивалентно 
 tcflow(fd, arg) .

 

Смотрите
 tcflow (3)

для значений аргументов TCOOFF, TCOON, TCIOFF, TCION.
 
 
   
 Счетчик буфера и очистка 

 
 FIONREAD        int * argp 

 
Получает число байтов в буфере ввода. 
 TIOCINQ          int * argp 

 
Эквивалентно FIONREAD. 
 TIOCOUTQ         int * argp 

 
Получает число байтов в буфере вывода. 
 TCFLSH   int  arg 

 
Эквивалентно 
 tcflush(fd, arg) .

 

Смотрите 
 tcflush (3)

для значений аргументов TCIFLUSH, TCOFLUSH, TCIOFLUSH.
 
 
   
 Мнимый ввод 

 
 TIOCSTI         const char * argp 

 
Вставляет заданный байт в очередь ввода. 
 
 
   
 Перенаправление вывода консоли 

 
 TIOCCONS        void 

 
Перенаправляет вывод, который должен идти на 
 /dev/console 

или на
 /dev/tty0 

для указанного терминала tty. Если это был основной pty, то отправлять
его к подчиненному. Кто угодно может делать это, пока вывод не был
еще ни разу перенаправлен. Если он уже был перенаправлен, то
возвратится EBUSY, но root может остановить перенаправление,
используя этот вызов ioctl, с
 fd ,

указывающем на
 /dev/console 

или на
 /dev/tty0 .

 
 
   
 Управление tty 

 
 TIOCSCTTY       int  arg 

 
Определяет заданный tty как управляющий tty текущего процесса. 
Текущий процесс должен быть основной сессией и не иметь ни одного
управляющего терминала. Если этот tty уже является управляющим tty
другой группы сессий, то ioctl завершается с ошибкой EPERM,
если только его не вызывает root и
 arg 

не равно 1 - в этом случае tty отбирается и сбрасывается во всех
процессах, где он был указан как управляющий tty.
 TIOCNOTTY void 

 
Если заданный tty был управляющим tty текущего процесса,
то отказаться от этого управляющего tty. Если процесс был
основной сессией, то фоновой группе процессоа отправляются
SIGHUP и SIGCONT и все процессы в этой сесии теряют
управляющий tty.
 
 
   
 Группа процессов и идентификатор сессии 

 
 TIOCGPGRP       pid_t * argp 

 
Если успешно, то эквивалентно 
 *argp = tcgetpgrp(fd) .

 

Определяет идентификатор группы фоновой группы процессов данного tty.
 TIOCSPGRP        const pid_t * argp 

 
Эквивалентно 
 tcsetpgrp(fd, *argp) .

 

Устанавливает идентификатор фоновой группы процессов данного tty.
 TIOCGSID         pid_t * argp 

 
Определяет идентификатор сесии данного tty. Завершается с ошибкой ENOTTY 
в случае, если tty не является основным pty и не наш управляющий tty.
Странно, однако.
 
 
   
 Закрытый режим 

 
 TIOCEXCL        void 

 
помещает tty в закрытый режим. 
Дальнейшие операции
 open (2)

на терминале разрешены.
(Они будут выдавать ошибку EBUSY, за исключением root.)
 TIOCNXCL         void 

 
Отменяет закрытый режим. 
 
 
   
 Параметры линии 

 
 TIOCGETD        int * argp 

 
Определяет параметры линии для tty. 
 TIOCSETD         const int * argp 

 
Устанавливае параметры линии для tty. 
 
 
   
 Вызовы ioctl для псевдо-tty 

 
 TIOCPKT         const int * argp 

 
Включает (если 
* argp 

не равно нулю) или отключает пакетный режим.
Может применяться только к оснвной части псевдо-tty (и будет возвращать
ENOTTY в другом случае). В пакетном режиме каждое последующее
 read (2)

возвратит пакет, содержащий либо один ненулевой управляющий байт,
либо один нулевой байт с последующими данными, записанными на
подчиненной части pty. Если первые байты не равны TIOCPKT_DATA (0),
то они логически складываются (OR) с одним или несколькими
следующими битами:
 
 TIOCPKT_FLUSHREAD   The read queue for the terminal is flushed.
TIOCPKT_FLUSHWRITE  The write queue for the terminal is flushed.
TIOCPKT_STOP        Output to the terminal is stopped.
TIOCPKT_START       Output to the terminal is restarted.
TIOCPKT_DOSTOP      t_stopc is `^S' and t_startc is `^Q'.
TIOCPKT_NOSTOP      the start and stop characters are not `^S/^Q'.
 

 
При использовании этого режима наличие управляющей информации,
считываемой с основной части может быть определено через
 select (2)

для исключительных условий.
 
Этот режим используется
 rlogin (1)

и
 rlogind (8)

для реализации удаленного входа, откликающего дистанционно, локально управляемого `^S/^Q'.
 
Вызовы ioctl для BSD - TIOCSTOP, TIOCSTART, TIOCUCNTL, TIOCREMOTE -
не были реализованы в Linux.
 
 
   
 Управление модемом 

 
 TIOCMGET        int * argp 

 
Получает статус битов модема. 
 TIOCMSET         const int * argp 

 
Устанавливает статус битов модема. 
 TIOCMBIC         const int * argp 

 
Очищает указанные биты модема. 
 TIOCMBIS         const int * argp 

 
Устанавливает указанные биты модема. 
 
 

Биты, используемые в этих четырех вызовах ioctl:
 
 TIOCM_LE        DSR (линия включена/данные готовы, Data Set Ready)
TIOCM_DTR       DTR (терминал данных готов, Data Terminal Ready)
TIOCM_RTS       RTS (запрос на отправку, Request To Send)
TIOCM_ST        Вторичное TXD (передача, Secondary Transmit)
TIOCM_SR        Вторичное RXD (получение, Secondary Receive)
TIOCM_CTS       Готов к отправке CTS (Clear To Send)
TIOCM_CAR       Обнаружены данные DCD (Data Carrier Detect)
TIOCM_CD         см. TIOCM_CAR
TIOCM_RNG       RNG (ring, звонок)
TIOCM_RI         см. TIOCM_RNG
TIOCM_DSR       Данные готовы DSR (Data Set Ready)
 

 
   
 Пометка локальной линии 

 
 TIOCGSOFTCAR    int * argp 

 
("Get software carrier flag") 
Определяет статус флага CLOCAL в поле c_cflag структуры termios.
 TIOCSSOFTCAR     const int * argp 

 
("Set software carrier flag") 
Устанавливает флаг CLOCAL в поле c_cflag структуры termios при
* argp 

не равном нулю или очищая его в противном случае.
 
 

Если флаг CLOCAL для линии не установлен, то важен сигнал DCD, а
signal is significant, а
 open (2)

соответствующего tty будет блокировано, пока не будет утвержден DCD,
за исключением установленного флага O_NONBLOCK.
Если CLOCAL определено, то линия ведет себя, как если DCD утверждено
всегда. Поограммное определение сигнала обычно включено для
локальных устройств, и выключено для модемных линий.
 
   
 Специфичность Linux 

Для вызова ioctl TIOCLINUX смотрите
 console_ioctl (4).

 
   
 Отладка ядра 

 
 #include < linux/tty.h > 

 
 
 TIOCTTYGSTRUCT          struct tty_struct * argp 

 
Получает tty_struct, соответствующую 
 fd .



 
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Системный вызов
 ioctl() 

возвращает 0 при нормальном завершении работы. При ошибках возвращается -1
и соответствующим образом устанавливается переменная
 errno .

 
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 ENOIOCTLCMD 

 
Неизвестная команда.
 EINVAL 

 
Некорректный параметр команды.
 EPERM 

 
Недостаточно прав.
 ENOTTY 

 
Несоответствующее
 fd .

 
   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

Проверка условия DTR на последовательном порту.
 
 #include < termios.h >
#include < fcntl.h >
#include < sys/ioctl.h >

main() {
    int fd, serial;

    fd = open("/dev/ttyS0", O_RDONLY);
    ioctl(fd, TIOCMGET, &serial);
    if (serial & TIOCM_DTR)
        puts("TIOCM_DTR is not set");
    else
        puts("TIOCM_DTR is set");
    close(fd);
}
 

 
   
 СМ. ТАКЖЕ 

 ioctl (2),

 termios (3),

 console_ioctl (4)

 



 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 
 Определение и установка атрибутов терминала 
 Блокировка и структура termios 
 Определение и установка размера окна 
 Отправление разрыва 
 Программное управление потоками 
 Счетчик буфера и очистка 
 Мнимый ввод 
 Перенаправление вывода консоли 
 Управление tty 
 Группа процессов и идентификатор сессии 
 Закрытый режим 
 Параметры линии 
 Вызовы ioctl для псевдо-tty 
 Управление модемом 
 Пометка локальной линии 
 Специфичность Linux 
 Отладка ядра 
 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
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