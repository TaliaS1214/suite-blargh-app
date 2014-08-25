App.Models.Entry = Backbone.Model.extend({
  initialize: function() {
    console.log('New Entry Model Created');
  },
  urlRoot: '/entries'
});
