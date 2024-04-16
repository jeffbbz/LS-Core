$(function() {
  $('form').on('submit', function(event) {
    event.preventDefault();
    let char = $("#key").val();

    $(document).off('keypress').on('keypress', function(event) {
      if (event.key !== char) return;
      $('a').trigger('click');
    });
  });

  $('a').on('click', function(event) {
    event.preventDefault();
    $('#accordion').slideToggle();
  });
});


