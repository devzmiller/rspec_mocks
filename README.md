# Rspec Mocks

A mock is a substitute object used in a test. If you are testing one object which relies on another object, it's a good idea to mock that other object. You can use this to test a model before another model it depends on exists. You can also use mocks to test objects or methods which have a random component; mocks allow you to specify what the return value should be. Mocks help isolate each object and its tests and reduce the dependencies on other objects.  

Rspec mocks are included with Rspec.  

## Doubles

Defining a double:

`cat_standin = double("cat")`

The string passed to the double is an optional identifier.

Verifying doubles:  

`standin = instance_double("ClassName")`

Verifying doubles check that the methods called on the double actually exist on instances of the real class (if it exists--it doesn't throw errors if the class doesn't exist yet).

By default, Rspec-Rails configures your spec_helper to use verifying doubles.

## Reference

* https://semaphoreci.com/community/tutorials/mocking-with-rspec-doubles-and-expectations
* https://relishapp.com/rspec/rspec-mocks/v/3-6/docs
* https://github.com/rspec/rspec-mocks
* https://blog.codeship.com/rspec-stub-and-mock/

