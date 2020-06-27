<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\helpers\Url;
use yii\bootstrap\ActiveForm;

$this->title = 'Создать тестовые данные для телефонного справочника';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    

		<?php if( Yii::$app->session->hasFlash('success') ): ?>

			<h1><?= Html::encode('Тестовые данные для телефонного справочника уже созданы!') ?></h1>

		<?php else : ?>

			<h1><?= Html::encode($this->title) ?></h1>

    		<p></br></br>Чтобы сгенерировать тестовые данные нажмите на кнопку "Сгенерировать"!</br></br></br></p>

			<? $form = ActiveForm::begin([
				    'id' => 'generate-form',
				]); ?>


				<?= Html::submitButton('Сгенерировать', ['class' => 'btn btn-primary', 'name' => 'generate-button']) ?>
		          	

			<? ActiveForm::end(); ?>

		<?php endif;?>			          

</div>