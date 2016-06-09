(load "test-framework.scm")
(load "foo.scm")


(test-with-cases foo
	(list
		'(( 1 1 ) 2)
		'(( 10 5 ) 15)
		'(( 12 2 ) 14)
		))