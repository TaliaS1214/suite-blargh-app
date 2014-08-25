App.Routers.Entries = Backbone.Router.extend({

  routes: {
    '' : 'index',
    'entries/new' : 'newEntry'
  },
  index: function() {
    console.log('Index Route Hit');
    App.Collections.entries.fetch({reset: true});
  },
  new: function() {
    var entries = App.Collections.entries;
    if (entries.models.length === 0) {
      entries.fetch({reset: true});
    }
  }

});
