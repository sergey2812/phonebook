<?php

use yii\db\Migration;

/**
 * Class m200626_074326_phonebook
 */
class m200626_074326_phonebook extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%phonebook}}', [
            'id' => $this->primaryKey(),
            'name' => $this->string(20)->notNull(),
            'address' => $this->string(),
            'phone' => $this->string(17)->notNull()->unique(),
            'created_at' => $this->integer()->notNull(),
            'updated_at' => $this->integer()->notNull(),
        ], $tableOptions);
    }

    /**
     * {@inheritdoc}
     */
    public function down()
    {
        $this->dropTable('{{%phonebook}}');
    }
}
