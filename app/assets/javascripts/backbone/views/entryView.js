App.Views.Entry = Backbone.View.extend({
  className: 'entry',
  initialize: function(options) {
    console.log('New Entry View Created');
    this.listenTo(this.model, 'destroy', this.remove)
    this.template = HandlebarsTemplates['entries/single'];
    this.parent = options.parent;
    this.render();
  },
  events: {
    'click .delete' : 'deletePost',
    'click .view' : 'viewPost'
  },
  render: function() {
    this.$el.html(this.template(this.model.toJSON()));
    return this.$el;
  },
  viewPost: function() {
    this.parent.$el.empty().html(this.render());
  },
  deletePost: function() {
    this.model.destroy();
  }
});
