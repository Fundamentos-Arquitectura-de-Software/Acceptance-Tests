  Feature: US05 - Compatibilidad movil

    Scenario: Usuario accede desde un dispositivo movil
      Given un usuario accede a la landing page desde un smartphone
      When carga la pagina en pantalla pequena
      Then todos los elementos se adaptan correctamente al tamaño de pantalla
      And el contenido es legible sin necesidad de zoom horizontal

    Scenario: Usuario accede desde una tablet
      Given un usuario accede a la landing page desde una tablet
      When carga la pagina
      Then el layout se adapta correctamente al tamaño de pantalla