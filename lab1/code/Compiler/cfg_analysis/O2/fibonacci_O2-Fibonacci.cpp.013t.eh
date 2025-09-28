
;; Function main (main, funcdef_no=1808, decl_uid=44612, cgraph_uid=542, symbol_order=572)

int main ()
{
  struct basic_ostream & D.49426;
  struct basic_ostream & D.49425;
  struct basic_ostream & D.49424;
  int n;
  int t;
  int i;
  int b;
  int a;
  int D.49422;

  a = 0;
  b = 1;
  i = 1;
  std::basic_istream<char>::operator>> (&cin, &n);
  D.49424 = std::basic_ostream<char>::operator<< (&cout, a);
  _1 = D.49424;
  std::basic_ostream<char>::operator<< (_1, endl);
  D.49425 = std::basic_ostream<char>::operator<< (&cout, b);
  _2 = D.49425;
  std::basic_ostream<char>::operator<< (_2, endl);
  goto <D.44674>;
  <D.44675>:
  t = b;
  b = a + b;
  D.49426 = std::basic_ostream<char>::operator<< (&cout, b);
  _3 = D.49426;
  std::basic_ostream<char>::operator<< (_3, endl);
  a = t;
  i = i + 1;
  <D.44674>:
  n.0_4 = n;
  if (i < n.0_4) goto <D.44675>; else goto <D.44673>;
  <D.44673>:
  n = {CLOBBER};
  D.49422 = 0;
  goto <D.49423>;
  <D.49423>:
  return D.49422;
  <D.49427>:
  n = {CLOBBER};
  resx 1
}



;; Function std::endl<char, std::char_traits<char> > (_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, funcdef_no=2055, decl_uid=42038, cgraph_uid=789, symbol_order=822)

struct basic_ostream & std::endl<char, std::char_traits<char> > (struct basic_ostream & __os)
{
  struct basic_ostream & D.49433;
  struct basic_ostream & D.49432;
  char D.49431;
  struct basic_ostream & D.49429;

  _1 = __os->_vptr.basic_ostream;
  _2 = _1 + 18446744073709551592;
  _3 = MEM[(long int *)_2];
  _4 = (sizetype) _3;
  _5 = __os + _4;
  D.49431 = std::basic_ios<char>::widen (_5, 10);
  _6 = D.49431;
  D.49432 = std::basic_ostream<char>::put (__os, _6);
  _7 = D.49432;
  D.49433 = std::flush<char, std::char_traits<char> > (_7);
  D.49429 = D.49433;
  goto <D.49430>;
  <D.49430>:
  return D.49429;
}



;; Function std::basic_ios<char>::widen (_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc, funcdef_no=2134, decl_uid=41084, cgraph_uid=868, symbol_order=901)

char_type std::basic_ios<char>::widen (const struct basic_ios * const this, char __c)
{
  char_type D.49437;
  const struct ctype & D.49436;
  char_type D.49434;

  _1 = this->_M_ctype;
  D.49436 = std::__check_facet<std::ctype<char> > (_1);
  _2 = D.49436;
  D.49437 = std::ctype<char>::widen (_2, __c);
  D.49434 = D.49437;
  goto <D.49435>;
  <D.49435>:
  return D.49434;
}



;; Function std::__check_facet<std::ctype<char> > (_ZSt13__check_facetISt5ctypeIcEERKT_PS3_, funcdef_no=2178, decl_uid=47707, cgraph_uid=912, symbol_order=945)

const struct ctype & std::__check_facet<std::ctype<char> > (const struct ctype * __f)
{
  const struct ctype & D.49440;

  if (__f == 0B) goto <D.49438>; else goto <D.49439>;
  <D.49438>:
  std::__throw_bad_cast ();
  <D.49439>:
  D.49440 = __f;
  goto <D.49441>;
  <D.49441>:
  return D.49440;
}



;; Function std::ctype<char>::widen (_ZNKSt5ctypeIcE5widenEc, funcdef_no=1556, decl_uid=37522, cgraph_uid=527, symbol_order=556)

char_type std::ctype<char>::widen (const struct ctype * const this, char __c)
{
  char_type D.49446;
  char_type D.49444;

  _1 = this->_M_widen_ok;
  if (_1 != 0) goto <D.49442>; else goto <D.49443>;
  <D.49442>:
  _2 = (int) __c;
  D.49444 = this->_M_widen[_2];
  // predicted unlikely by early return (on trees) predictor.
  goto <D.49445>;
  <D.49443>:
  std::ctype<char>::_M_widen_init (this);
  _3 = this->D.37636._vptr.facet;
  _4 = _3 + 48;
  _5 = *_4;
  D.49446 = OBJ_TYPE_REF(_5;(const struct ctype)this->6) (this, __c);
  D.49444 = D.49446;
  goto <D.49445>;
  <D.49445>:
  return D.49444;
}



;; Function std::ctype<char>::do_widen (_ZNKSt5ctypeIcE8do_widenEc, funcdef_no=1561, decl_uid=37570, cgraph_uid=532, symbol_order=561)

char_type std::ctype<char>::do_widen (const struct ctype * const this, char __c)
{
  char_type D.49447;

  D.49447 = __c;
  goto <D.49448>;
  <D.49448>:
  return D.49447;
}



;; Function std::flush<char, std::char_traits<char> > (_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, funcdef_no=2135, decl_uid=42046, cgraph_uid=869, symbol_order=902)

struct basic_ostream & std::flush<char, std::char_traits<char> > (struct basic_ostream & __os)
{
  struct basic_ostream & D.49451;
  struct basic_ostream & D.49449;

  D.49451 = std::basic_ostream<char>::flush (__os);
  D.49449 = D.49451;
  goto <D.49450>;
  <D.49450>:
  return D.49449;
}



;; Function std::basic_ostream<char>::operator<< (_ZNSolsEPFRSoS_E, funcdef_no=2056, decl_uid=41826, cgraph_uid=790, symbol_order=823)

struct __ostream_type & std::basic_ostream<char>::operator<< (struct basic_ostream * const this, struct __ostream_type & (*<T6531>) (struct __ostream_type &) __pf)
{
  struct __ostream_type & D.49454;
  struct __ostream_type & D.49452;

  __pf.1_1 = __pf;
  D.49454 = __pf.1_1 (this);
  D.49452 = D.49454;
  goto <D.49453>;
  <D.49453>:
  return D.49452;
}



;; Function _GLOBAL__sub_I_main (_GLOBAL__sub_I_main, funcdef_no=2295, decl_uid=49420, cgraph_uid=1029, symbol_order=1204)

void _GLOBAL__sub_I_main ()
{
  __static_initialization_and_destruction_0 (1, 65535);
  return;
}



;; Function __static_initialization_and_destruction_0 (_Z41__static_initialization_and_destruction_0ii, funcdef_no=2294, decl_uid=49414, cgraph_uid=1028, symbol_order=1085)

void __static_initialization_and_destruction_0 (int __initialize_p, int __priority)
{
  if (__initialize_p == 1) goto <D.49455>; else goto <D.49456>;
  <D.49455>:
  if (__priority == 65535) goto <D.49457>; else goto <D.49458>;
  <D.49457>:
  std::ios_base::Init::Init (&__ioinit);
  __cxxabiv1::__cxa_atexit (__dt_comp , &__ioinit, &__dso_handle);
  goto <D.49459>;
  <D.49458>:
  <D.49459>:
  goto <D.49460>;
  <D.49456>:
  <D.49460>:
  return;
}


