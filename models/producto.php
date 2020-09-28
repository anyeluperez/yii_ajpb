<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "producto".
 *
 * @property int $id
 * @property string $productos
 * @property string $descripcion
 * @property int $id_proveedor
 * @property string $precio
 */
class Producto extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'producto';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['productos', 'descripcion', 'id_proveedor', 'precio'], 'required'],
            [['id_proveedor'], 'integer'],
            [['productos'], 'string', 'max' => 50],
            [['descripcion'], 'string', 'max' => 500],
            [['precio'], 'string', 'max' => 10],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'productos' => 'Productos',
            'descripcion' => 'Descripcion',
            'id_proveedor' => 'Id Proveedor',
            'precio' => 'Precio',
        ];
    }
}
