(asdf:defsystem :claw-olm
  :description "Thin wrapper over OLM"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:claw-olm-bindings))


(asdf:defsystem :claw-olm/wrapper
  :description "Thin wrapper over OLM"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :uiop :cffi :claw-utils :claw)
  :pathname "src/"
  :serial t
  :components ((:file "claw")
               (:module :olm-includes :pathname "lib/olm/include/")))
