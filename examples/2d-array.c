// Access two-dimensional uLisp array from C
// http://forum.ulisp.com/t/how-to-access-two-dimensional-ulisp-array/1626/2

// (defvar a (make-array '(2 3)))
// (test a 1 2 73)

object *fn_test (object *args, object *env) {
  int bit;
  // Get the four parameters
  object *array = first(args);
  object *x = second(args);
  args = cddr(args);
  object *y = first(args);
  object *value = second(args);
  // Build a list of the subscripts
  object *subscripts = cons(x, cons(y, NULL));
  // Get a pointer to the required array element
  object **element = getarray(array, subscripts, env, &bit);
  // Set it to the value
  *element = value;
  return value;
}
