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
 
 
 
 devinfo (3)   devinfo  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   devinfo  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  devinfo  (3)   ( Русские man: Библиотечные вызовы )   devinfo  (7)   ( Solaris man: Макропакеты и соглашения )   devinfo  (8)   ( FreeBSD man: Команды системного администрирования )   devinfo  (8)   ( Русские man: Команды системного администрирования ) 


 ИМЯ 
 

 

devinfo, devinfo_init, devinfo_free, devinfo_handle_to_device, devinfo_handle_to_resource, devinfo_handle_to_rman, devinfo_foreach_device_child, devinfo_foreach_device_resource, devinfo_foreach_rman_resource, devinfo_foreach_rman - библиотека для обработки информации об устройствах и ресурсах
 

 

 БИБЛИОТЕКА 
 

 

Библиотека для обработки информации об устройствах и ресурсах (libdevinfo, -ldevinfo)
 

 

 ОБЗОР 
 
 #include <devinfo.h> 
 int devinfo_init(void); 
 void devinfo_free(void); 
 struct devinfo_dev * devinfo_handle_to_device(devinfo_handle_t handle); 
 struct devinfo_res * devinfo_handle_to_resource(devinfo_handle_t handle); 
 struct devinfo_rman * devinfo_handle_to_rman(devinfo_handle_t handle); 
 int devinfo_foreach_device_child(struct devinfo_dev *parent, int (*fn)(struct devinfo_dev *child,
	void *arg), void *arg); 
 int devinfo_foreach_device_resource(struct devinfo_dev *dev, int (*fn)(struct devinfo_dev *dev,
	struct devinfo_res *res, void *arg), void *arg); 
 int devinfo_foreach_rman_resource(struct devinfo_rman *rman, int (*fn)(struct devinfo_res *res,
	void *arg), void *arg); 
 int devinfo_foreach_rman(int (*fn)(struct devinfo_rman *rman, void *arg), void *arg); 

 

 ОПИСАНИЕ 
 

 

Библиотека devinfo предоставляет доступ к внутренней иерархии устройств ядра и менеджера ресурсов ввода-вывода. Библиотека использует интерфейс  sysctl(3)  для получения снимка состояния ядра, который затем может быть доступен приложениям.
 

 
Фактически эта информация может быть логически сгруппирована различными способами, библиотека не пытается навязывать какую-либо структуру данных.
 

 
Информация об устройствах, ресурсах и менеджере ресурсов возвращается в структурах данных определённых в <devinfo.h>:

 
 struct devinfo_dev {
	devinfo_handle_t dd_handle;	/* дескриптор устройства */
	devinfo_handle_t dd_parent;	/* родительское устройство */
	char *dd_name;			/* имя устройства */
	char *dd_desc;			/* описание устройства */
	char *dd_drivername;		/* имя присоединённого драйвера */
	char *dd_pnpinfo;		/* информация pnp от родительской шины */
	char *dd_location;		/* где устройство по мнению шины */
	uint32_t dd_devflags;		/* API-флаги */
	uint16_t dd_flags;		/* внутренние флаги устройства */
	device_state_t dd_state;	/* состояние присоединения устройства */
}; 
 struct devinfo_rman {
	devinfo_handle_t dm_handle;	/* дескриптор менеджера ресурсов */
	u_long dm_start;		/* начало ресурса */
	u_long dm_size;			/* размер ресурса */
	char *dm_desc;			/* описание ресурса */
}; 
 struct devinfo_res {
	devinfo_handle_t dr_handle;	/* дескриптор ресурса */
	devinfo_handle_t dr_rman;	/* дескриптор менеджера ресурсов */
	devinfo_handle_t dr_device;	/* принадлежность устройства */
	u_long dr_start;		/* начало области */
	u_long dr_size;			/* размер области */
}; 

 

Значения devinfo_handle_t могут использоваться для поиска структур по соответствующим ссылкам.
 

 
devinfo_init() создаёт снимок состояния устройств и ресурсов внутри ядра . Она возвращает ненулевой результат если после нескольких последовательных попыток снимок не может быть получен. devinfo_init() должна вызываться перед использованием любых других функций.
 

 
devinfo_free() возвращает память, связанную со снимком. Любые указатели возвращённые другими функциями после этого становятся неправильными, и перед использованием других функций снова должна быть вызвана devinfo_init().
 

 
devinfo_handle_to_device(), devinfo_handle_to_resource() и devinfo_handle_to_rman() возвращают указатели на структуры соответственно devinfo_dev, devinfo_res и devinfo_rman, основываясь на переданном им devinfo_handle_t. Эти функции могут использоваться для обхода дерева с любого узла до любого другого. Если devinfo_handle_to_device() передать константу DEVINFO_ROOT_DEVICE, функция вернёт дескриптор корня дерева устройств.
 

 
devinfo_foreach_device_child() вызывает callback-функцию указанную аргументом fn для каждого устройства являющегося непосредственным потомком. Функции fn также передаётся аргумент, позволяющий обработать состояние в callback-функции. Если fn возвращает ненулевое значение ошибки, обход останавливается и devinfo_foreach_device_child() возвращает значение ошибки той функции, которая её вызвала.
 

 
devinfo_foreach_device_resource() вызывает callback-функцию указанную аргументом fn для каждого ресурса, которым владеет устройство. Функции fn также передаётся устройство и аргумент, позволяющий обработать состояние в callback-функции. Если fn возвращает ненулевое значение ошибки, обход останавливается и devinfo_foreach_device_resource() возвращает значение ошибки той функции, которая её вызвала.
 

 
devinfo_foreach_rman_resource() вызывает callback-функцию указанную аргументом fn для каждого ресурса в пределах менеджера ресурсов rman. Функции fn также передаётся аргумент, позволяющий обработать состояние в callback-функции. Если fn возвращает ненулевое значение ошибки, обход останавливается и devinfo_foreach_rman_resource() возвращает значение ошибки той функции, которая её вызвала.
 

 
devinfo_foreach_rman() вызывает callback-функцию указанную аргументом fn для каждого менеджера ресурсов. Функции fn также передаётся аргумент, позволяющий обработать состояние в callback-функции. Если fn возвращает ненулевое значение ошибки, обход останавливается и devinfo_foreach_rman() возвращает значение ошибки той функции, которая её вызвала.
 

 

 СМОТРИ ТАКЖЕ 
 

 

 devstat(3) 
 

 

 ИСТОРИЯ 
 

 

Библиотека devinfo появилась в FreeBSD 5.0 и была импортирована в DragonFly 1.11.
 

 

 АВТОРЫ 
 

 

Майкл Смит (Michael Smith)  msmith@FreeBSD.org 
 

 

 АВТОР ПЕРЕВОДА 
 

 

Перевод на русский язык выполнил Владимир Ступин  wheelof@gmail.com 
 

 

 ОШИБКИ 
 

 

Это первая реализация библиотеки, и интерфейс всё ещё нуждается в переработке.
 

 
Интерфейс не сообщает классы устройства или драйвера, делая тяжелой сортировку по классу или драйверу.
 

 

        
      
    
       
         
           
                     
           
          man/dragonfly_bsd/devinfo_3.txt · Последние изменения: 2009-02-05 20:26 (внешнее изменение)           
         
       

 
 
 
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