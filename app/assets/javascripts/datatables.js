// Call the dataTables jQuery plugin
$(document).ready(function() {
  $('#job-postings-table').dataTable({
    pageLength: 10,
    lengthMenu: [
      [ 10, 25, 50, -1 ],
      [ '10 listings', '25 listings', '50 listings', 'Show all' ]
    ],
    ordering: false
  });

  $('#applicants-table').dataTable({
    pageLength: 25,
    lengthMenu: [
      [ 25, 50, 100, -1 ],
      [ '25 applicants', '50 applicants', '100 applicants', 'Show all' ]
    ],
    ordering: false
  });
});
