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
//I removed: 
//     require turbolinks 
//for an angular app
//
//= require jquery
//= require jquery_ujs
//
//The order below is important, and require_tree . just adds the files
//in some random order:
//
//= require angular
//
//Next, angular-file-upload has to added after angularJS:
//= require angular-file-upload
//
//And for some inexplicable reason, this is needed:
//= require main
//I would think require_tree would take care of that file.
//
//= require_tree .
