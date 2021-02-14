(uiop:define-package :olm
  (:use :cl))

(claw:defwrapper (:claw-olm/wrapper
                  (:headers "olm/olm.h" "olm/pk.h" "olm/sas.h"
                            "olm/inbound_group_session.h" "olm/outbound_group_session.h")
                  (:includes :olm-includes)
                  (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu"))
                  (:persistent :claw-olm-bindings
                   :asd-path "../claw-olm-bindings.asd"
                   :bindings-path "../bindings/")
                  (:include-definitions "^(olm|OLM)_\\w+"))
  :in-package :%olm
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :symbolicate-names (:in-pipeline
                      (:by-removing-prefixes "olm_" "OLM_")))
