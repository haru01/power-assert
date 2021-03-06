q = require 'qunitjs'
empower = require 'empower'
qunitTap = require 'qunit-tap'
empower(q.assert, {destructive: true})
qunitTap(q, require('util').puts, {showSourceOnFailure: false})
q.init()
q.config.updateRate = 0

class Dog
    speak: -> "woof"
    legs: 4

q.test "dog says woof", 1, (assert) ->
    dog = new Dog()
    says = "meow"
    assert.ok dog.speak() == says
	
q.test "dogs have four legs", 1, (assert) ->
    dog = new Dog()
    three = 3
    assert.ok dog.legs == three
