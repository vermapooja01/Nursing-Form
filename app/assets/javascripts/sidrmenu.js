//function openNav() {
//  $(document).getElementById("mySidenav.sidenav").style.width = "250px";
//  $(document).getElementById("main").style.marginleft = "300px";


//function closeNav() {
//  $(document).getElementById("mySidenav").style.width = "0";
//  $(document).getElementById("main").style.marginleft = "0";
//}
//)};




// $(document).on('turbolinks:load', function () {
$( document ).ready(function() {
  $('#nav-menu').click(function(){
    $('ul.nav-list').addClass('open').slideToggle('50');
  });
});
