<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Phonebook */

$this->title = 'Обновить запись для: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Телефонный справочник', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Обновление записи';
?>
<div class="phonebook-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
