$(document).ready(function() {
  $('.btn-view-pdf').on('click', function (e) {
    $('#pdf-iframe').attr('src', $(this).attr('id'));
  });

  $('#resume-modal').on('hide.bs.modal', function (e) {
    $('#pdf-iframe').attr('src', '');
  });
});
