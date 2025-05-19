// Peek and poke at memory location
// http://forum.ulisp.com/t/peek-and-poke-in-ulisp/171/6

object *fn_peek (object *args, object *env) {
  (void) env;
  int addr = integer(first(args));
  return number(*(int *)addr);
}

// poke returns the value you gave it - it doesn’t read back the contents of the address
object *fn_poke (object *args, object *env) {
  (void) env;
  int addr = integer(first(args));
  object *val = second(args);
  *(int *)addr = integer(val);
  return val;
}

// Add their names on the end of the existing list

const char string174[] PROGMEM = "peek";
const char string175[] PROGMEM = "poke";

// Add their entry points onto the end of the existing table:

// { string174, fn_peek, 1, 1 },
// { string175, fn_poke, 2, 2 },

// Add their symbols onto the end of the enum function list:

// MILLIS, SLEEP, NOTE, EDIT, PPRINT, PPRINTALL, PEEK, POKE, ENDFUNCTIONS };

// Examples

// (peek #x20000160)
// (poke #x20000160 123)
// (peek #x20000160)

// Take care to check that the memory location is safe to write in
