<?php namespace frontend\tests;

class FirstTest extends \Codeception\Test\Unit
{
    /**
     * @var \frontend\tests\UnitTester
     */
    protected $tester;
    
    protected function _before()
    {
    }

    protected function _after()
    {
    }

    // tests
    public function testSomeFeature()
    {
        $model = new \frontend\models\SignupForm();
        $model->username = 'probnic';
        $model->email = '1234@mail.ru';
        $model->password = 'probnic123';

        expect('Проверка правильности ввода', $model->validate())->true();
    }
}