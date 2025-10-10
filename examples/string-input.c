/*
  String Input uLisp Extension - Version 1 - 25th May 2025
  See http://www.ulisp.com/show?5837
*/

enum stream2 { STRINGINPUTSTREAM = USERSTREAMS };
object *InputString = NULL;
int InputStringIndex = 0;

/*
  (with-input-from-string (str string) form*)
  Evaluates the forms with str bound to a string-input-stream that supplies characters read from string.
*/
object *sp_WithInputFromString (object *args, object *env) {
  object *params = checkarguments(args, 2, 2);
  object *var = first(params);
  object *string = checkstring(eval(second(params), env));
  if (InputString == NULL) InputString = string;
  else { InputString = NULL; error2("only one string-input-stream allowed"); }
  InputStringIndex = 0;
  object *pair = cons(var, stream(STRINGINPUTSTREAM, 0));
  push(pair,env);
  object *forms = cdr(args);
  object *result = eval(tf_progn(forms,env), env);
  InputString = NULL;
  return result;
}

// Symbol names
const char stringWithInputFromString[] = "with-input-from-string";

// Documentation strings
const char docWithInputFromString[] = "(with-input-from-string (str string) form*)\n"
"Evaluates the forms with str bound to a string-input-stream that supplies characters read from string.";

// Symbol lookup table
const tbl_entry_t lookup_table2[] = {
 { stringWithInputFromString, sp_WithInputFromString, 0317, docWithInputFromString },
};

// Stream reading functions

int StringRead () {
  char c = nthchar(InputString, InputStringIndex++);
  if (c == 0) { InputString = NULL; error2("end of string-input-stream"); }
  return c;
}

gfun_t gfun_stringread (uint8_t address) {
  (void) address;
  return StringRead;
}

// Stream names used
const char stringinputstreamname[] = "string-input";

// Stream lookup table - needs to be in same order as enum stream2
const stream_entry_t stream_table2[] = {
 { stringinputstreamname, NULL, gfun_stringread },
};

// Stream table cross-reference functions - do not edit below this line

stream_entry_t *streamtables[] = {stream_table, stream_table2};

const stream_entry_t *streamtable (int n) {
 return streamtables[n];
}

// Table cross-reference functions - do not edit below this line

tbl_entry_t *tables[] = {lookup_table, lookup_table2};
const unsigned int tablesizes[] = { arraysize(lookup_table), arraysize(lookup_table2) };

const tbl_entry_t *table (int n) {
 return tables[n];
}

unsigned int tablesize (int n) {
 return tablesizes[n];
}