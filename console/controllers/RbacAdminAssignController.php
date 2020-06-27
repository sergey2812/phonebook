<?php
namespace console\controllers;

use Yii;
use yii\console\Controller;
use common\models\User;
use yii\console\ExitCode;
use yii\helpers\Console;

//php yii rbac-admin-assign/init 1 - это будет консольная команда для admina
class RbacAdminAssignController extends Controller
{
    public function actionInit($id){

        //Проверяем обязательный параметр id
        if(!$id || is_int($id)){
            $this->stdout("Параметр 'id' должен быть присвоен!\n", Console::BG_RED);
            return ExitCode::UNSPECIFIED_ERROR;
        }

        //Есть ли пользователь с таким id
        $user = (new User())->findIdentity($id);
        if(!$user){
            $this->stdout("Пользователь с таким id:'$id' не найден!\n", Console::BG_RED);
            return ExitCode::UNSPECIFIED_ERROR;
        }

        //Получаем объект yii\rbac\DbManager, который назначили в конфиге для компонента authManager
        $auth = Yii::$app->authManager;

        //Получаем объект роли
        $role = $auth->getRole('admin');

        //Удаляем все роли пользователя
        $auth->revokeAll($id);

        //Присваиваем роль админа по id
        $auth->assign($role, $id);

        //Выводим сообщение об успехе и возвращаем соответствующий код
        $this->stdout("Успешно завершено!\n", Console::BOLD);
        return ExitCode::OK;
        
   }
}