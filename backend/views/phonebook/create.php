<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Phonebook */

$this->title = 'Добавление записи в телефонный справочник';
$this->params['breadcrumbs'][] = ['label' => 'Телефонный справочник', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="phonebook-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
