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
//for angular app
//
//= require jquery
//= require jquery_ujs
//
//require_tree . just adds all the files in some random
//order, but for AngularJS the order is important:
//
//= require angular
//
//And for some inexplicable reason, this is needed:
//= require main
//I would think 'require_tree .' would be enough for that file.
//
//= require_tree .
