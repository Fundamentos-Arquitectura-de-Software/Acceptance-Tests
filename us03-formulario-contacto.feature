Feature: US03 - Formulario de contacto

    Scenario: Visitante envia formulario de contacto
      Given un visitante esta en la landing page de FreshSense
      When completa el formulario con nombre, email y mensaje
      And hace clic en el boton de enviar
      Then el sistema registra la solicitud de contacto
      And muestra un mensaje de confirmacion al usuario
