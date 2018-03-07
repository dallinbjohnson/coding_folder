$(window).scroll(function() {
  if ($(this).scrollTop() > 50){ // Set position from top to add class
    $(".navbar-default").addClass("affix");
  } else {
    $(".navbar-default").removeClass("affix");
  }
});