Feature: US11 - Edición de inventario
    Como usuario, quiero agregar y editar alimentos apoyado en la base de datos de alimentos
    para registrarlos sin ingresar toda la información manualmente.

    Scenario: Registro asistido con la base de datos de alimentos
        Given que el usuario ingresa el nombre de un alimento existente en la base de datos
        When la app completa los datos y asigna la categoría automáticamente
        Then el alimento se agrega al inventario sin necesidad de ingresar toda la información.

    Scenario: Edición de un alimento del inventario
        Given que el usuario modifica los datos de un alimento ya registrado
        When el usuario guarda los cambios realizados
        Then la app actualiza el inventario conservando la categoría asignada.

    Scenario: Alimento no encontrado en la base de datos
        Given que el usuario ingresa un alimento que no existe en la base de datos
        When la app no encuentra coincidencias
        Then la app solicita al usuario completar los datos de forma manual.
