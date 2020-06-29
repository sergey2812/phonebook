<p align="center">
    <h1 align="center">ТЕЛЕФОННЫЙ СПРАВОЧНИК (Yii 2 Advanced Project)</h1>
    <br>
</p>

#### Для скачивания и развертывания проекта на своем сервере используйте любой из 2-х вариантов.


#### Вариант 1. Установка проекта и базы данных (без миграций - развернул и работай!)

* в своей консоли выполнить: git clone {repository} {directoryName}
* cd {directoryName}
* создайте свою базу данных
* загрузите созданную базу данными из файла autoaliance.sql, находящегося в корне проекта
* в файле common\config\main-local.php измените настройки для базы данных
* проект должен работать: раздельные входы в frontend и backend
* для проверки работоспособности используйте один из 2-х логинов и паролей поочередно: "admin" и "viewer"
* После этого справочник можно смотреть и управлять им


#### Вариант 2. Установка проекта и базы данных с миграциями

* в своей консоли выполнить: git clone {repository} {directoryName}
* cd {directoryName}
* в консоли выполнить: composer install
* в консоли выполнить: php init
* создайте свою базу данных
* в файле common\config\main-local.php измените настройки для базы данных
* в консоли выполнить: yii migrate
* в консоли выполнить: yii migrate/create phonebook
* в консоли выполнить: yii migrate --migrationPath=@yii/rbac/migrations
* в консоли выполнить: yii rbac-start/init
* в frontend зарегистрируйте 2-х пользователей с логинами: "admin" и "viewer" (пароли любые)
* в консоли выполнить: yii rbac-admin-assign/init 1
* проект должен работать: раздельные входы в frontend и backend
* для проверки работоспособности используйте один из 2-х логинов и паролей поочередно: "admin" и "viewer"


#### Настройки, которые надо сделать (только для варианта номер 2)

* Для просмотра данных телефонного справочника их нужно сначала создать.
* Войдите в backend c логином "admin" 
* Наполнение справочника данными выполняется в backend по ссылке в меню "Создать"
* На странице создания данных справочника просто нажмите на едиственную кнопку
* После этого справочник можно смотреть и управлять им


#### Тесты
* Для примера создан один Unit тест по адресу: frontend\tests\unit\FirstTest.php
* Тест предназначен для тестирования валидации в SingupForm
* Для работы теста необходимо создать тестовую базу данных с именем "yii2advanced_test"
* В консоли из корня проекта выполнить миграцию: php yii_test migrate
* Альтернативный способ созданния тестовой базы данных: восстановление таблиц и данных из файла autoaliance.sql, находящегося в корне проекта
* В консоли из корня проекта запустить тест: codecept run -c frontend unit FirstTest
