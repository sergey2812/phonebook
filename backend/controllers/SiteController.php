<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;
use common\models\Phonebook;
use Faker\Factory;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout', 'signup'],
                'rules' => [
                    [
                        'actions' => ['signup', 'logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                    
                ],

            ],

            //Доступ в админку только для админа 
            [
                'class' => AccessControl::className(),
                'only' => ['index', 'generate'],
                'rules' => [
                    [
                        'actions' => ['index', 'generate'],
                        'allow' => true,
                        'roles' => ['admin'],
                    ],
                ],
                
            ],
      
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            $model->password = '';

            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    /**
     * Generate data fake action.
     *
     */
    public function actionGenerate()
    {
        $phonebook = Phonebook::find()->asArray()->all(); // Читаем данные справочника

        $session = Yii::$app->session; // открываем сессию
        $session->open();


        if (Yii::$app->request->post()) // если кнопка нажата, то 
            {    
                $faker = Factory::create();

                for($i = 0; $i < 100; $i++)
                  {
                    $phonebook = new Phonebook();
                    $phonebook->name = $faker->text(rand(5, 15));
                    $phonebook->address = $faker->text(rand(60, 160));
                    $phonebook->phone = rand(8960, 89000000);             
                    $phonebook->created_at = $faker->unixTime();
                    $phonebook->updated_at = $faker->unixTime();
                    $phonebook->save(false);
                  }

                Yii::$app->session->setFlash('success', 'Данные для телефонного справочника успешно сгенерированы!'); // выводим сообщение в шаблон

                return $this->refresh(); // обновление страницы
            }
        else 
            {
                if (empty($phonebook))
                    {
                        return $this->render('generate', compact('session'));
                    }
                else
                    {
                        Yii::$app->session->setFlash('success', 'Данные для телефонного справочника уже сгенерированы!'); // выводим сообщение в шаблон

                        return $this->render('generate', compact('session'));
                    }
                
            }
     
    }
       
}
