//= require spec_helper
//= require views/header_view
//= require templates/header

describe('header', function() {
  describe('when you are logged in', function() {
    it('show the username', function() {
      var user = { username: 'sprite' };
      var header = Zedex.HeaderView.create();
      header.set('controller', Ember.ObjectController.create({
        currentUser: user
      }));

      Em.run(function() {
        header.append();
      });

      expect(header.$('.username')).to.contain('sprite');
    });
  });
});
