$( document ).on('turbolinks:load', function() {
 $('#datetimepicker').datetimepicker({
   locale: 'fr',
   sideBySide: true,
   format: "DD-MM-YYYY"
  });
});


// var initialText = $('.editable').val();
// $('.editOption').val(initialText);

// $('#test').change(function(){
// var selected = $('option:selected', this).attr('class');
// var optionText = $('.editable').text();

// if(selected == "editable"){
//   $('.editOption').show();


//   $('.editOption').keyup(function(){
//       var editText = $('.editOption').val();
//       $('.editable').val(editText);
//       $('.editable').html(editText);
//   });

// }else{
//   $('.editOption').hide();
// }
// });
