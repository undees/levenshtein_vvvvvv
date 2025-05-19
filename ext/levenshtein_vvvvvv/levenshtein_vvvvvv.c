#include "levenshtein_vvvvvv.h"

typedef struct vstring {
	uint8_t* str;
	int len;
	int is_lit;
} vstring;

extern int levenshtein__distance(
  vstring s1,
  vstring s2
);

static inline vstring mk_vstring(VALUE s) {
  const char* p = StringValuePtr(s);

  vstring v = {
    (unsigned char*)p,
    RSTRING_LEN(s),
    1
  };

  return v;
}

VALUE rb_mLevenshteinVvvvvv = Qnil;

VALUE distance(VALUE _self, VALUE s1, VALUE s2) {
  vstring v1 = mk_vstring(s1);
  vstring v2 = mk_vstring(s2);

  int result = levenshtein__distance(v1, v2);

  return INT2NUM(result);
}

void Init_levenshtein_vvvvvv(void) {
  rb_mLevenshteinVvvvvv = rb_define_module("LevenshteinVvvvvv");

  rb_define_module_function(
    rb_mLevenshteinVvvvvv,
    "distance",
    distance,
    2
  );
}
