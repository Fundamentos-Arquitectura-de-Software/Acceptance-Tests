Feature: US04 - CTA para suscripcion

    Scenario: Visitante hace clic en el boton de suscripcion
      Given un visitante esta en la landing page de FreshSense
      When visualiza el boton de CTA para suscripcion o prueba gratis
      Then el boton es visible y llamativo en la pagina
      And al hacer clic redirige al formulario de registro o prueba
