//= require jquery
//= require handlebars
//= require ember
//= require ember-data
//= require chai-jquery
//= require_self
//= require_tree ./support

mocha.ui('bdd');
chai.Assertion.includeStack = true;
Em.testing = true;

Zedex = Ember.Application.create();
