How to unit test MIT Scheme code
=================================

Seems like there is no standalone unit testing framework for MIT Scheme. Instead, using a file `test-framework.scm` with some simple test methods for testing.

```
scheme <foo-test.scm
```

Note
-----

The file `test-framework.scm` is from <http://bl.ocks.org/roryokane/4577394>, and there are more documents there.

Complex params passing
-------------------------

Say we have a function `deriv`, and we invoke it like this:

```
(deriv '(+ x 3) 'x)
```

and its return value is `'(+ 1 0)`

We should write the test code like this:

```
(test-with-cases deriv
    (list
        (list (list '(+ x 3) 'x) '(+ 1 0))))
```