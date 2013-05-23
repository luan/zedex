chai.Assertion.overwriteProperty('contain', function (_super) {
  return function () {
    _super.call(this);
    var $ = jQuery;
    var contain = function (text) {
      var obj = this._obj;
      if (obj instanceof $ && obj.children().length > 1) {
        obj = obj.clone();
        obj.children('script').remove();

        this.assert(
          obj.is(':contains(\'' + text + '\')')
        , "expected #{act} to contain #{exp}"
        , "expected #{act} not to contain #{exp}"
        , text
        , $('<div>').append(obj.html().trim()).html()
        );
      } else {
        Function.prototype.apply.call(_super.call(this), this, arguments);
      }
    }

    contain.__proto__ = this;
    return contain;
  };
});
