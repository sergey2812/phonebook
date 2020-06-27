<?php

namespace common\models;

use Yii;
use yii\db\ActiveRecord;

/**
 * This is the model class for table "phonebook".
 *
 * @property int $id
 * @property string $name
 * @property string $family
 * @property int|null $age
 * @property string|null $education
 * @property string|null $email
 * @property string $phone
 * @property int $created_at
 * @property int $updated_at
 */
class Phonebook extends ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'phonebook';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'phone', 'created_at', 'updated_at'], 'required'],
            [['created_at', 'updated_at'], 'integer'],
            [['name'], 'string', 'max' => 20],
            [['address'], 'string', 'max' => 255],
            [['phone'], 'string', 'max' => 17],
            [['phone'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'name' => 'Имя',
            'address' => 'Адрес',
            'phone' => 'Телефон',
            'created_at' => 'Запись добавлена',
            'updated_at' => 'Запись обновлена',
        ];
    }
}
