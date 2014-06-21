jQuery(document).ready(function($) {
    $('#user_subject_tokens').tokenInput('/subjects.json', {
        theme: 'facebook',
        prePopulate: $('#user_subject_tokens').data('load'),
    });

});
    