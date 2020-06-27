<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel common\models\PhonebookSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Смотреть данные телефонного справочника';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="phonebook-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php if(Yii::$app->user->can('admin')) : ?>

        <p>
            <?= Html::a('Добавить новую запись', ['create'], ['class' => 'btn btn-success']) ?>
        </p>

    <?php endif; ?>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?php if(Yii::$app->user->can('admin')) : ?>

        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                //'id',
                'name',
                'address',
                'phone',
                //'created_at',
                //'updated_at',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>

        <?php Pjax::end(); ?>

    <?php else: ?>

        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                //'id',
                'name',
                'address',
                'phone',
                //'created_at',
                //'updated_at',

                ['class' => 'yii\grid\ActionColumn', 'template' => '{view}'],
            ],
        ]); ?>

        <?php Pjax::end(); ?>

    <?php endif; ?>
</div>
