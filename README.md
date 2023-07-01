# Relaciones

Consultar relaciones:

 ```php
 Modelo::With("Relacion") -> get()`//Retorna modelo con todas las instancias de la relacion.
 ```

```php
$modelo = Modelo::find(1); // Obtenemos una instancia de un modelo (fila de la tabla)
$modelo -> Relacion() -> get() // Obtenemos las filas de la relacion del modelo
 ```

```php
$modelo = Modelo::With("Relacion")->With("OtraRelacion")->get(); // Obtenemos instancia del modelo, con los datos de las dos relaciones cargadas
 ```


