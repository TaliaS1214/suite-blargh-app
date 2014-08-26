App.Views.EntryList = Backbone.View.extend({
  el: '#entry-list',
  initialize: function() {
    console.log('New Entry List Created');
    this.listenTo(this.collection, 'add', this.renderOne);
    this.listenTo(this.collection, 'delete', this.renderAll);
    this.listenTo(this.collection, 'reset', this.renderAll);
  },
  renderAll: function() {
    this.$el.empty();
    this.collection.each(this.renderOne, this);
  },
  renderOne: function(entry) {
    var newView = new App.Views.Entry({ model: entry, parent: this });
    this.$el.prepend(newView.$el);
  }

});
