// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$( document ).ready(function() {

  if ($("#formulario-login").length > 0){ //esta la etiqueta del formulario

    var campo_login = $("#usuario_nombre_usuario");
    var campo_clave = $("#usuario_contrasena");
    campo_login.focus();

    $("#formulario-login form").submit(function() {
      if (campo_login.val() == ""){
        alert("Debe rellenar el campo");
        campo_login.focus();
        return false;
      }

      if (campo_clave.val() == ""){
        alert("Debe rellenar el campo");
        campo_clave.focus();
        return false;
      }
    });
  }

});
