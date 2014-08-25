App.Views.Entry = Backbone.View.extend({
  className: 'entry',
  initialize: function() {
    console.log('New Entry View Created');
    this.template = HandlebarsTemplates['entries/single'];
    this.render();
  },
  render: function() {
    this.$el.html(this.template(this.model.toJSON()));
    return this;
  }
});
