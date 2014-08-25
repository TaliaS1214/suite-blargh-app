App.Collections.Entries = Backbone.Collection.extend({
  model: App.Models.Entry,
  url: '/entries',
  initialize: function() {
    console.log('New Entry Collection Created');
  }
})
