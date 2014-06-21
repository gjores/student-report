jQuery(document).ready(function($) {
  $('#students-table').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": $('#students-table').data('source')
    // optional, if you want full pagination controls.
    // Check dataTables documentation to learn more about
    // available options.
  });



	
});