import { module, test } from 'qunit';
import { setupTest } from 'delta-tutorial-books-frontend/tests/helpers';

module('Unit | Route | book', function (hooks) {
  setupTest(hooks);

  test('it exists', function (assert) {
    let route = this.owner.lookup('route:book');
    assert.ok(route);
  });
});
