App.Views.EntryForm = Backbone.View.extend({
  el: '#new-entry',
  events: {
    'click button.submit' : 'addEntry'
  },
  initialize: function() {
    console.log('New Form Created');
  },
  addEntry: function() {
    var formData = {
      author:  $('#new-author').val(),
      title:   $('#new-title').val(),
      mood:    $('#new-mood').val(),
      content: $('#new-content').val(),
    };
    App.Collections.entries.create(formData);
    $('input').val('');
    App.Routers.entries.navigate('');
  }
});
