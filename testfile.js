'use strict';

var Mocha = require('mocha');
var Test = Mocha.Test;

describe('Mocha', function () {
  var blankOpts = { reporter: function () {} }; // no output

  describe('.run(fn)', function () {
    it('should not raise errors if callback was not provided', function () {
      var mocha = new Mocha(blankOpts);
      mocha.run();
    });

    it('should execute the callback when complete', function (done) {
      var mocha = new Mocha(blankOpts);
      mocha.run(function () {
        done();
      });
    });
  });
});
