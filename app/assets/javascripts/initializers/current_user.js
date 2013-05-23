Ember.Application.initializer({
  name: 'currentUser',
  initialize: function(container) {
    var attributes, controller, object, store, user;

    store = container.lookup('store:main');
    attributes = $('meta[name="current-user"]').attr('content');
    if (attributes) {
      object = store.load(Zedex.User, JSON.parse(attributes));
      user = Zedex.User.find(object.id);
      controller = container.lookup('controller:currentUser').set('content', user);
      container.typeInjection('controller', 'currentUser', 'controller:currentUser');
    }
  }
});
