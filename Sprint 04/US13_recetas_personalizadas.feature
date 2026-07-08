Feature: US13 - Recetas personalizadas
    Como usuario, quiero que la IA analice mis ingredientes y su categoría
    para recibir la receta más adecuada a lo que tengo disponible.

    Scenario: Generación de receta con IA
        Given que el usuario cuenta con ingredientes registrados en su inventario
        When la IA analiza los ingredientes y determina su categoría
        Then la app presenta una receta adecuada a los ingredientes disponibles.

    Scenario: Ingredientes insuficientes para la IA
        Given que el usuario no cuenta con ingredientes suficientes en su inventario
        When la IA intenta analizar los ingredientes disponibles
        Then la app muestra un mensaje indicando que no es posible generar una receta.
