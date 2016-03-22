(in-package :cepl.internals)

(deftype uploadable-lisp-seq () '(or list vector array))

(defvar *expanded-gl-type-names*
  '((:uint :unsigned-int) (:ubyte :unsigned-byte)
    (:ubyte :unsigned-byte) (:ushort :unsigned-short)))

(defun expand-gl-type-name (type)
  (or (second (assoc type *expanded-gl-type-names*))
      type))