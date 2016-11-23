;;; Compiled snippets and support files for `c++-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'c++-mode
                     '(("akantu" "__BEGIN_AKANTU__\n\n`yas/selected-text`$0\n\n__END_AKANTU__" "__BEGIN_AKANTU__ .. __END_AKANTU__" nil nil nil nil nil nil)
                       ("beginend" "${1:v}.begin(), $1.end" "v.begin(), v.end()" nil nil nil nil nil nil)
                       ("class" "class ${1:`(replace-regexp-in-string \"_\" \"\" (capitalize \n      			       	      (file-name-nondirectory\n                                          (file-name-sans-extension (buffer-file-name)))))`} {\n  /* ------------------------------------------------------------------------ */\n  /* Constructors/Destructors                                                 */\n  /* ------------------------------------------------------------------------ */\npublic:\n\n  ${1:$(yas/substr yas-text \"[^: ]*\")}($2);\n  virtual ~${1:$(yas/substr yas-text \"[^: ]*\")}();\n\n  /* ------------------------------------------------------------------------ */\n  /* Methods                                                                  */\n  /* ------------------------------------------------------------------------ */\npublic:\n\n  /// function to print the contain of the class\n  virtual void printself(std::ostream & stream, int indent = 0) const;\n\n  /* ------------------------------------------------------------------------ */\n  /* Accessors                                                                */\n  /* ------------------------------------------------------------------------ */\npublic:\n\n  /* ------------------------------------------------------------------------ */\n  /* Class Members                                                            */\n  /* ------------------------------------------------------------------------ */\nprivate:\n\n};\n\n\n/* -------------------------------------------------------------------------- */\n/* inline functions                                                           */\n/* -------------------------------------------------------------------------- */\n\n#include \"${3:`(file-name-nondirectory (file-name-sans-extension (buffer-file-name)))`_inline_impl.cc}\"\n\n/// standard output stream operator\ninline std::ostream & operator <<(std::ostream & stream, const ${1:$(yas/substr yas-text \"[^: ]*\")} & _this)\n{\n  _this.printself(stream);\n  return stream;\n}\n" "class ... { ... }" nil nil nil nil nil nil)
                       ("inout" "AKANTU_DEBUG_IN();\n`yas/selected-text`$0\nAKANTU_DEBUG_OUT();" "AKANTU_DEBUG_IN(); ... AKANTU_DEBUG_OUT();" nil nil nil nil nil nil)
                       ("inst" "INSTANSIATE_MATERIAL(${1:`(yas/replace-all \"_\" \"\" (capitalize \n      			       	      (file-name-nondirectory\n                                          (file-name-sans-extension (buffer-file-name)))))`});\n$0" "INSTANTIATE_MATERIAL(...)" nil nil nil nil nil nil)
                       ("myfem" "__BEGIN_AKANTU__\n\n$0\n\n__END_AKANTU__\n" "__BEGIN_AKANTU__ .. __END_AKANTU__" nil nil nil nil nil nil)
                       ("ns" "namespace " "namespace ..." nil nil nil nil nil nil)
                       ("printself" "void ${1:`(capitalize (file-name-nondirectory (file-name-sans-extension (buffer-file-name))))`}::printself(std::ostream & stream, int indent) const {\n  std::string space;\n  for(Int i = 0; i < indent; i++, space += AKANTU_INDENT);\n\n  stream << space << \"${1:$(yas/substr text \"[^: ]*\")} [\" << std::endl;\n\n  stream << space << \"]\" << std::endl;\n};\n" "void printself(...) cont { ... }" nil nil nil nil nil nil)
                       ("template" "template <typename ${T}>" "template <typename ...>" nil nil nil nil nil nil)
                       ("using" "using namespace ${std};\n$0" "using namespace ... " nil nil nil nil nil nil)))


;;; Do not edit! File generated at Tue Mar 31 11:34:27 2015