(uiop:define-package :%olm (:use))
(uiop:define-package :claw-olm-bindings~pristine (:use :cl))
(common-lisp:in-package :claw-olm-bindings~pristine)

(defparameter %olm::+message-type-message+ 1)

(defparameter %olm::+message-type-pre-key+ 0)

(defparameter %olm::+h-+ nil)

(defparameter %olm::+inbound-group-session-h-+ nil)

(defparameter %olm::+outbound-group-session-h-+ nil)

(defparameter %olm::+pk-h-+ nil)

(defparameter %olm::+sas-h-+ nil)

(cffi:defcstruct (%olm::olm-account :size 0))

(cffi:defctype %olm::olm-account (:struct %olm::olm-account))

(declaim (inline %olm::account))

(cffi:defcfun ("olm_account" %olm::account)
              (:pointer %olm::olm-account)
              (%olm::memory (:pointer :void)))

(cffi:defctype %olm::size-t :unsigned-long)

(declaim (inline %olm::account-fallback-key))

(cffi:defcfun ("olm_account_fallback_key" %olm::account-fallback-key)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account))
              (%olm::fallback-key (:pointer :void))
              (%olm::fallback-key-size %olm::size-t))

(declaim (inline %olm::account-fallback-key-length))

(cffi:defcfun ("olm_account_fallback_key_length"
               %olm::account-fallback-key-length)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account)))

(declaim (inline %olm::account-generate-fallback-key))

(cffi:defcfun ("olm_account_generate_fallback_key"
               %olm::account-generate-fallback-key)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account))
              (%olm::random (:pointer :void))
              (%olm::random-length %olm::size-t))

(declaim (inline %olm::account-generate-fallback-key-random-length))

(cffi:defcfun ("olm_account_generate_fallback_key_random_length"
               %olm::account-generate-fallback-key-random-length)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account)))

(declaim (inline %olm::account-generate-one-time-keys))

(cffi:defcfun ("olm_account_generate_one_time_keys"
               %olm::account-generate-one-time-keys)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account))
              (%olm::number-of-keys %olm::size-t)
              (%olm::random (:pointer :void))
              (%olm::random-length %olm::size-t))

(declaim (inline %olm::account-generate-one-time-keys-random-length))

(cffi:defcfun ("olm_account_generate_one_time_keys_random_length"
               %olm::account-generate-one-time-keys-random-length)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account))
              (%olm::number-of-keys %olm::size-t))

(declaim (inline %olm::account-identity-keys))

(cffi:defcfun ("olm_account_identity_keys"
               %olm::account-identity-keys)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account))
              (%olm::identity-keys (:pointer :void))
              (%olm::identity-key-length %olm::size-t))

(declaim (inline %olm::account-identity-keys-length))

(cffi:defcfun ("olm_account_identity_keys_length"
               %olm::account-identity-keys-length)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account)))

(declaim (inline %olm::account-last-error))

(cffi:defcfun ("olm_account_last_error" %olm::account-last-error)
              :string
              (%olm::account (:pointer %olm::olm-account)))

(declaim (inline %olm::account-mark-keys-as-published))

(cffi:defcfun ("olm_account_mark_keys_as_published"
               %olm::account-mark-keys-as-published)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account)))

(declaim (inline %olm::account-max-number-of-one-time-keys))

(cffi:defcfun ("olm_account_max_number_of_one_time_keys"
               %olm::account-max-number-of-one-time-keys)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account)))

(declaim (inline %olm::account-one-time-keys))

(cffi:defcfun ("olm_account_one_time_keys"
               %olm::account-one-time-keys)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account))
              (%olm::one-time-keys (:pointer :void))
              (%olm::one-time-keys-length %olm::size-t))

(declaim (inline %olm::account-one-time-keys-length))

(cffi:defcfun ("olm_account_one_time_keys_length"
               %olm::account-one-time-keys-length)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account)))

(declaim (inline %olm::account-sign))

(cffi:defcfun ("olm_account_sign" %olm::account-sign)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account))
              (%olm::message (:pointer :void))
              (%olm::message-length %olm::size-t)
              (%olm::signature (:pointer :void))
              (%olm::signature-length %olm::size-t))

(declaim (inline %olm::account-signature-length))

(cffi:defcfun ("olm_account_signature_length"
               %olm::account-signature-length)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account)))

(declaim (inline %olm::account-size))

(cffi:defcfun ("olm_account_size" %olm::account-size) %olm::size-t)

(declaim (inline %olm::clear-account))

(cffi:defcfun ("olm_clear_account" %olm::clear-account)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account)))

(cffi:defcstruct (%olm::olm-inbound-group-session :size 0))

(cffi:defctype %olm::olm-inbound-group-session
               (:struct %olm::olm-inbound-group-session))

(declaim (inline %olm::clear-inbound-group-session))

(cffi:defcfun ("olm_clear_inbound_group_session"
               %olm::clear-inbound-group-session)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-inbound-group-session)))

(cffi:defcstruct (%olm::olm-outbound-group-session :size 0))

(cffi:defctype %olm::olm-outbound-group-session
               (:struct %olm::olm-outbound-group-session))

(declaim (inline %olm::clear-outbound-group-session))

(cffi:defcfun ("olm_clear_outbound_group_session"
               %olm::clear-outbound-group-session)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-outbound-group-session)))

(cffi:defcstruct (%olm::olm-pk-decryption :size 0))

(cffi:defctype %olm::olm-pk-decryption
               (:struct %olm::olm-pk-decryption))

(declaim (inline %olm::clear-pk-decryption))

(cffi:defcfun ("olm_clear_pk_decryption" %olm::clear-pk-decryption)
              %olm::size-t
              (%olm::decryption (:pointer %olm::olm-pk-decryption)))

(cffi:defcstruct (%olm::olm-pk-encryption :size 0))

(cffi:defctype %olm::olm-pk-encryption
               (:struct %olm::olm-pk-encryption))

(declaim (inline %olm::clear-pk-encryption))

(cffi:defcfun ("olm_clear_pk_encryption" %olm::clear-pk-encryption)
              %olm::size-t
              (%olm::encryption (:pointer %olm::olm-pk-encryption)))

(cffi:defcstruct (%olm::olm-pk-signing :size 0))

(cffi:defctype %olm::olm-pk-signing (:struct %olm::olm-pk-signing))

(declaim (inline %olm::clear-pk-signing))

(cffi:defcfun ("olm_clear_pk_signing" %olm::clear-pk-signing)
              %olm::size-t
              (%olm::sign (:pointer %olm::olm-pk-signing)))

(cffi:defcstruct (%olm::olm-sas :size 0))

(cffi:defctype %olm::olm-sas (:struct %olm::olm-sas))

(declaim (inline %olm::clear-sas))

(cffi:defcfun ("olm_clear_sas" %olm::clear-sas)
              %olm::size-t
              (%olm::sas (:pointer %olm::olm-sas)))

(cffi:defcstruct (%olm::olm-session :size 0))

(cffi:defctype %olm::olm-session (:struct %olm::olm-session))

(declaim (inline %olm::clear-session))

(cffi:defcfun ("olm_clear_session" %olm::clear-session)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session)))

(cffi:defcstruct (%olm::olm-utility :size 0))

(cffi:defctype %olm::olm-utility (:struct %olm::olm-utility))

(declaim (inline %olm::clear-utility))

(cffi:defcfun ("olm_clear_utility" %olm::clear-utility)
              %olm::size-t
              (%olm::utility (:pointer %olm::olm-utility)))

(declaim (inline %olm::create-account))

(cffi:defcfun ("olm_create_account" %olm::create-account)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account))
              (%olm::random (:pointer :void))
              (%olm::random-length %olm::size-t))

(declaim (inline %olm::create-account-random-length))

(cffi:defcfun ("olm_create_account_random_length"
               %olm::create-account-random-length)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account)))

(declaim (inline %olm::create-inbound-session))

(cffi:defcfun ("olm_create_inbound_session"
               %olm::create-inbound-session)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session))
              (%olm::account (:pointer %olm::olm-account))
              (%olm::one-time-key-message (:pointer :void))
              (%olm::message-length %olm::size-t))

(declaim (inline %olm::create-inbound-session-from))

(cffi:defcfun ("olm_create_inbound_session_from"
               %olm::create-inbound-session-from)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session))
              (%olm::account (:pointer %olm::olm-account))
              (%olm::their-identity-key (:pointer :void))
              (%olm::their-identity-key-length %olm::size-t)
              (%olm::one-time-key-message (:pointer :void))
              (%olm::message-length %olm::size-t))

(declaim (inline %olm::create-outbound-session))

(cffi:defcfun ("olm_create_outbound_session"
               %olm::create-outbound-session)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session))
              (%olm::account (:pointer %olm::olm-account))
              (%olm::their-identity-key (:pointer :void))
              (%olm::their-identity-key-length %olm::size-t)
              (%olm::their-one-time-key (:pointer :void))
              (%olm::their-one-time-key-length %olm::size-t)
              (%olm::random (:pointer :void))
              (%olm::random-length %olm::size-t))

(declaim (inline %olm::create-outbound-session-random-length))

(cffi:defcfun ("olm_create_outbound_session_random_length"
               %olm::create-outbound-session-random-length)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session)))

(declaim (inline %olm::create-sas))

(cffi:defcfun ("olm_create_sas" %olm::create-sas)
              %olm::size-t
              (%olm::sas (:pointer %olm::olm-sas))
              (%olm::random (:pointer :void))
              (%olm::random-length %olm::size-t))

(declaim (inline %olm::create-sas-random-length))

(cffi:defcfun ("olm_create_sas_random_length"
               %olm::create-sas-random-length)
              %olm::size-t
              (%olm::sas (:pointer %olm::olm-sas)))

(declaim (inline %olm::decrypt))

(cffi:defcfun ("olm_decrypt" %olm::decrypt)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session))
              (%olm::message-type %olm::size-t)
              (%olm::message (:pointer :void))
              (%olm::message-length %olm::size-t)
              (%olm::plaintext (:pointer :void))
              (%olm::max-plaintext-length %olm::size-t))

(declaim (inline %olm::decrypt-max-plaintext-length))

(cffi:defcfun ("olm_decrypt_max_plaintext_length"
               %olm::decrypt-max-plaintext-length)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session))
              (%olm::message-type %olm::size-t)
              (%olm::message (:pointer :void))
              (%olm::message-length %olm::size-t))

(declaim (inline %olm::ed25519-verify))

(cffi:defcfun ("olm_ed25519_verify" %olm::ed25519-verify)
              %olm::size-t
              (%olm::utility (:pointer %olm::olm-utility))
              (%olm::key (:pointer :void))
              (%olm::key-length %olm::size-t)
              (%olm::message (:pointer :void))
              (%olm::message-length %olm::size-t)
              (%olm::signature (:pointer :void))
              (%olm::signature-length %olm::size-t))

(declaim (inline %olm::encrypt))

(cffi:defcfun ("olm_encrypt" %olm::encrypt)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session))
              (%olm::plaintext (:pointer :void))
              (%olm::plaintext-length %olm::size-t)
              (%olm::random (:pointer :void))
              (%olm::random-length %olm::size-t)
              (%olm::message (:pointer :void))
              (%olm::message-length %olm::size-t))

(declaim (inline %olm::encrypt-message-length))

(cffi:defcfun ("olm_encrypt_message_length"
               %olm::encrypt-message-length)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session))
              (%olm::plaintext-length %olm::size-t))

(declaim (inline %olm::encrypt-message-type))

(cffi:defcfun ("olm_encrypt_message_type" %olm::encrypt-message-type)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session)))

(declaim (inline %olm::encrypt-random-length))

(cffi:defcfun ("olm_encrypt_random_length"
               %olm::encrypt-random-length)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session)))

(declaim (inline %olm::error))

(cffi:defcfun ("olm_error" %olm::error) %olm::size-t)

(cffi:defctype %olm::uint8-t :unsigned-char)

(cffi:defctype %olm::uint32-t :unsigned-int)

(declaim (inline %olm::export-inbound-group-session))

(cffi:defcfun ("olm_export_inbound_group_session"
               %olm::export-inbound-group-session)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-inbound-group-session))
              (%olm::key (:pointer %olm::uint8-t))
              (%olm::key-length %olm::size-t)
              (%olm::message-index %olm::uint32-t))

(declaim (inline %olm::export-inbound-group-session-length))

(cffi:defcfun ("olm_export_inbound_group_session_length"
               %olm::export-inbound-group-session-length)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-inbound-group-session)))

(declaim (inline %olm::get-library-version))

(cffi:defcfun ("olm_get_library_version" %olm::get-library-version)
              :void
              (%olm::major (:pointer %olm::uint8-t))
              (%olm::minor (:pointer %olm::uint8-t))
              (%olm::patch (:pointer %olm::uint8-t)))

(declaim (inline %olm::group-decrypt))

(cffi:defcfun ("olm_group_decrypt" %olm::group-decrypt)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-inbound-group-session))
              (%olm::message (:pointer %olm::uint8-t))
              (%olm::message-length %olm::size-t)
              (%olm::plaintext (:pointer %olm::uint8-t))
              (%olm::max-plaintext-length %olm::size-t)
              (%olm::message-index (:pointer %olm::uint32-t)))

(declaim (inline %olm::group-decrypt-max-plaintext-length))

(cffi:defcfun ("olm_group_decrypt_max_plaintext_length"
               %olm::group-decrypt-max-plaintext-length)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-inbound-group-session))
              (%olm::message (:pointer %olm::uint8-t))
              (%olm::message-length %olm::size-t))

(declaim (inline %olm::group-encrypt))

(cffi:defcfun ("olm_group_encrypt" %olm::group-encrypt)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-outbound-group-session))
              (%olm::plaintext (:pointer %olm::uint8-t))
              (%olm::plaintext-length %olm::size-t)
              (%olm::message (:pointer %olm::uint8-t))
              (%olm::message-length %olm::size-t))

(declaim (inline %olm::group-encrypt-message-length))

(cffi:defcfun ("olm_group_encrypt_message_length"
               %olm::group-encrypt-message-length)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-outbound-group-session))
              (%olm::plaintext-length %olm::size-t))

(declaim (inline %olm::import-inbound-group-session))

(cffi:defcfun ("olm_import_inbound_group_session"
               %olm::import-inbound-group-session)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-inbound-group-session))
              (%olm::session-key (:pointer %olm::uint8-t))
              (%olm::session-key-length %olm::size-t))

(declaim (inline %olm::inbound-group-session))

(cffi:defcfun ("olm_inbound_group_session"
               %olm::inbound-group-session)
              (:pointer %olm::olm-inbound-group-session)
              (%olm::memory (:pointer :void)))

(declaim (inline %olm::inbound-group-session-first-known-index))

(cffi:defcfun ("olm_inbound_group_session_first_known_index"
               %olm::inbound-group-session-first-known-index)
              %olm::uint32-t
              (%olm::session (:pointer
                              %olm::olm-inbound-group-session)))

(declaim (inline %olm::inbound-group-session-id))

(cffi:defcfun ("olm_inbound_group_session_id"
               %olm::inbound-group-session-id)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-inbound-group-session))
              (%olm::id (:pointer %olm::uint8-t))
              (%olm::id-length %olm::size-t))

(declaim (inline %olm::inbound-group-session-id-length))

(cffi:defcfun ("olm_inbound_group_session_id_length"
               %olm::inbound-group-session-id-length)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-inbound-group-session)))

(declaim (inline %olm::inbound-group-session-is-verified))

(cffi:defcfun ("olm_inbound_group_session_is_verified"
               %olm::inbound-group-session-is-verified)
              :int
              (%olm::session (:pointer
                              %olm::olm-inbound-group-session)))

(declaim (inline %olm::inbound-group-session-last-error))

(cffi:defcfun ("olm_inbound_group_session_last_error"
               %olm::inbound-group-session-last-error)
              :string
              (%olm::session (:pointer
                              %olm::olm-inbound-group-session)))

(declaim (inline %olm::inbound-group-session-size))

(cffi:defcfun ("olm_inbound_group_session_size"
               %olm::inbound-group-session-size)
              %olm::size-t)

(declaim (inline %olm::init-inbound-group-session))

(cffi:defcfun ("olm_init_inbound_group_session"
               %olm::init-inbound-group-session)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-inbound-group-session))
              (%olm::session-key (:pointer %olm::uint8-t))
              (%olm::session-key-length %olm::size-t))

(declaim (inline %olm::init-outbound-group-session))

(cffi:defcfun ("olm_init_outbound_group_session"
               %olm::init-outbound-group-session)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-outbound-group-session))
              (%olm::random (:pointer %olm::uint8-t))
              (%olm::random-length %olm::size-t))

(declaim (inline %olm::init-outbound-group-session-random-length))

(cffi:defcfun ("olm_init_outbound_group_session_random_length"
               %olm::init-outbound-group-session-random-length)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-outbound-group-session)))

(declaim (inline %olm::matches-inbound-session))

(cffi:defcfun ("olm_matches_inbound_session"
               %olm::matches-inbound-session)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session))
              (%olm::one-time-key-message (:pointer :void))
              (%olm::message-length %olm::size-t))

(declaim (inline %olm::matches-inbound-session-from))

(cffi:defcfun ("olm_matches_inbound_session_from"
               %olm::matches-inbound-session-from)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session))
              (%olm::their-identity-key (:pointer :void))
              (%olm::their-identity-key-length %olm::size-t)
              (%olm::one-time-key-message (:pointer :void))
              (%olm::message-length %olm::size-t))

(declaim (inline %olm::outbound-group-session))

(cffi:defcfun ("olm_outbound_group_session"
               %olm::outbound-group-session)
              (:pointer %olm::olm-outbound-group-session)
              (%olm::memory (:pointer :void)))

(declaim (inline %olm::outbound-group-session-id))

(cffi:defcfun ("olm_outbound_group_session_id"
               %olm::outbound-group-session-id)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-outbound-group-session))
              (%olm::id (:pointer %olm::uint8-t))
              (%olm::id-length %olm::size-t))

(declaim (inline %olm::outbound-group-session-id-length))

(cffi:defcfun ("olm_outbound_group_session_id_length"
               %olm::outbound-group-session-id-length)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-outbound-group-session)))

(declaim (inline %olm::outbound-group-session-key))

(cffi:defcfun ("olm_outbound_group_session_key"
               %olm::outbound-group-session-key)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-outbound-group-session))
              (%olm::key (:pointer %olm::uint8-t))
              (%olm::key-length %olm::size-t))

(declaim (inline %olm::outbound-group-session-key-length))

(cffi:defcfun ("olm_outbound_group_session_key_length"
               %olm::outbound-group-session-key-length)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-outbound-group-session)))

(declaim (inline %olm::outbound-group-session-last-error))

(cffi:defcfun ("olm_outbound_group_session_last_error"
               %olm::outbound-group-session-last-error)
              :string
              (%olm::session (:pointer
                              %olm::olm-outbound-group-session)))

(declaim (inline %olm::outbound-group-session-message-index))

(cffi:defcfun ("olm_outbound_group_session_message_index"
               %olm::outbound-group-session-message-index)
              %olm::uint32-t
              (%olm::session (:pointer
                              %olm::olm-outbound-group-session)))

(declaim (inline %olm::outbound-group-session-size))

(cffi:defcfun ("olm_outbound_group_session_size"
               %olm::outbound-group-session-size)
              %olm::size-t)

(declaim (inline %olm::pickle-account))

(cffi:defcfun ("olm_pickle_account" %olm::pickle-account)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account))
              (%olm::key (:pointer :void))
              (%olm::key-length %olm::size-t)
              (%olm::pickled (:pointer :void))
              (%olm::pickled-length %olm::size-t))

(declaim (inline %olm::pickle-account-length))

(cffi:defcfun ("olm_pickle_account_length"
               %olm::pickle-account-length)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account)))

(declaim (inline %olm::pickle-inbound-group-session))

(cffi:defcfun ("olm_pickle_inbound_group_session"
               %olm::pickle-inbound-group-session)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-inbound-group-session))
              (%olm::key (:pointer :void))
              (%olm::key-length %olm::size-t)
              (%olm::pickled (:pointer :void))
              (%olm::pickled-length %olm::size-t))

(declaim (inline %olm::pickle-inbound-group-session-length))

(cffi:defcfun ("olm_pickle_inbound_group_session_length"
               %olm::pickle-inbound-group-session-length)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-inbound-group-session)))

(declaim (inline %olm::pickle-outbound-group-session))

(cffi:defcfun ("olm_pickle_outbound_group_session"
               %olm::pickle-outbound-group-session)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-outbound-group-session))
              (%olm::key (:pointer :void))
              (%olm::key-length %olm::size-t)
              (%olm::pickled (:pointer :void))
              (%olm::pickled-length %olm::size-t))

(declaim (inline %olm::pickle-outbound-group-session-length))

(cffi:defcfun ("olm_pickle_outbound_group_session_length"
               %olm::pickle-outbound-group-session-length)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-outbound-group-session)))

(declaim (inline %olm::pickle-pk-decryption))

(cffi:defcfun ("olm_pickle_pk_decryption" %olm::pickle-pk-decryption)
              %olm::size-t
              (%olm::decryption (:pointer %olm::olm-pk-decryption))
              (%olm::key (:pointer :void))
              (%olm::key-length %olm::size-t)
              (%olm::pickled (:pointer :void))
              (%olm::pickled-length %olm::size-t))

(declaim (inline %olm::pickle-pk-decryption-length))

(cffi:defcfun ("olm_pickle_pk_decryption_length"
               %olm::pickle-pk-decryption-length)
              %olm::size-t
              (%olm::decryption (:pointer %olm::olm-pk-decryption)))

(declaim (inline %olm::pickle-session))

(cffi:defcfun ("olm_pickle_session" %olm::pickle-session)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session))
              (%olm::key (:pointer :void))
              (%olm::key-length %olm::size-t)
              (%olm::pickled (:pointer :void))
              (%olm::pickled-length %olm::size-t))

(declaim (inline %olm::pickle-session-length))

(cffi:defcfun ("olm_pickle_session_length"
               %olm::pickle-session-length)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session)))

(declaim (inline %olm::pk-ciphertext-length))

(cffi:defcfun ("olm_pk_ciphertext_length" %olm::pk-ciphertext-length)
              %olm::size-t
              (%olm::encryption (:pointer %olm::olm-pk-encryption))
              (%olm::plaintext-length %olm::size-t))

(declaim (inline %olm::pk-decrypt))

(cffi:defcfun ("olm_pk_decrypt" %olm::pk-decrypt)
              %olm::size-t
              (%olm::decryption (:pointer %olm::olm-pk-decryption))
              (%olm::ephemeral-key (:pointer :void))
              (%olm::ephemeral-key-length %olm::size-t)
              (%olm::mac (:pointer :void))
              (%olm::mac-length %olm::size-t)
              (%olm::ciphertext (:pointer :void))
              (%olm::ciphertext-length %olm::size-t)
              (%olm::plaintext (:pointer :void))
              (%olm::max-plaintext-length %olm::size-t))

(declaim (inline %olm::pk-decryption))

(cffi:defcfun ("olm_pk_decryption" %olm::pk-decryption)
              (:pointer %olm::olm-pk-decryption)
              (%olm::memory (:pointer :void)))

(declaim (inline %olm::pk-decryption-last-error))

(cffi:defcfun ("olm_pk_decryption_last_error"
               %olm::pk-decryption-last-error)
              :string
              (%olm::decryption (:pointer %olm::olm-pk-decryption)))

(declaim (inline %olm::pk-decryption-size))

(cffi:defcfun ("olm_pk_decryption_size" %olm::pk-decryption-size)
              %olm::size-t)

(declaim (inline %olm::pk-encrypt))

(cffi:defcfun ("olm_pk_encrypt" %olm::pk-encrypt)
              %olm::size-t
              (%olm::encryption (:pointer %olm::olm-pk-encryption))
              (%olm::plaintext (:pointer :void))
              (%olm::plaintext-length %olm::size-t)
              (%olm::ciphertext (:pointer :void))
              (%olm::ciphertext-length %olm::size-t)
              (%olm::mac (:pointer :void))
              (%olm::mac-length %olm::size-t)
              (%olm::ephemeral-key (:pointer :void))
              (%olm::ephemeral-key-size %olm::size-t)
              (%olm::random (:pointer :void))
              (%olm::random-length %olm::size-t))

(declaim (inline %olm::pk-encrypt-random-length))

(cffi:defcfun ("olm_pk_encrypt_random_length"
               %olm::pk-encrypt-random-length)
              %olm::size-t
              (%olm::encryption (:pointer %olm::olm-pk-encryption)))

(declaim (inline %olm::pk-encryption))

(cffi:defcfun ("olm_pk_encryption" %olm::pk-encryption)
              (:pointer %olm::olm-pk-encryption)
              (%olm::memory (:pointer :void)))

(declaim (inline %olm::pk-encryption-last-error))

(cffi:defcfun ("olm_pk_encryption_last_error"
               %olm::pk-encryption-last-error)
              :string
              (%olm::encryption (:pointer %olm::olm-pk-encryption)))

(declaim (inline %olm::pk-encryption-set-recipient-key))

(cffi:defcfun ("olm_pk_encryption_set_recipient_key"
               %olm::pk-encryption-set-recipient-key)
              %olm::size-t
              (%olm::encryption (:pointer %olm::olm-pk-encryption))
              (%olm::public-key (:pointer :void))
              (%olm::public-key-length %olm::size-t))

(declaim (inline %olm::pk-encryption-size))

(cffi:defcfun ("olm_pk_encryption_size" %olm::pk-encryption-size)
              %olm::size-t)

(declaim (inline %olm::pk-generate-key))

(cffi:defcfun ("olm_pk_generate_key" %olm::pk-generate-key)
              %olm::size-t
              (%olm::decryption (:pointer %olm::olm-pk-decryption))
              (%olm::pubkey (:pointer :void))
              (%olm::pubkey-length %olm::size-t)
              (%olm::privkey (:pointer :void))
              (%olm::privkey-length %olm::size-t))

(declaim (inline %olm::pk-generate-key-random-length))

(cffi:defcfun ("olm_pk_generate_key_random_length"
               %olm::pk-generate-key-random-length)
              %olm::size-t)

(declaim (inline %olm::pk-get-private-key))

(cffi:defcfun ("olm_pk_get_private_key" %olm::pk-get-private-key)
              %olm::size-t
              (%olm::decryption (:pointer %olm::olm-pk-decryption))
              (%olm::private-key (:pointer :void))
              (%olm::private-key-length %olm::size-t))

(declaim (inline %olm::pk-key-from-private))

(cffi:defcfun ("olm_pk_key_from_private" %olm::pk-key-from-private)
              %olm::size-t
              (%olm::decryption (:pointer %olm::olm-pk-decryption))
              (%olm::pubkey (:pointer :void))
              (%olm::pubkey-length %olm::size-t)
              (%olm::privkey (:pointer :void))
              (%olm::privkey-length %olm::size-t))

(declaim (inline %olm::pk-key-length))

(cffi:defcfun ("olm_pk_key_length" %olm::pk-key-length) %olm::size-t)

(declaim (inline %olm::pk-mac-length))

(cffi:defcfun ("olm_pk_mac_length" %olm::pk-mac-length)
              %olm::size-t
              (%olm::encryption (:pointer %olm::olm-pk-encryption)))

(declaim (inline %olm::pk-max-plaintext-length))

(cffi:defcfun ("olm_pk_max_plaintext_length"
               %olm::pk-max-plaintext-length)
              %olm::size-t
              (%olm::decryption (:pointer %olm::olm-pk-decryption))
              (%olm::ciphertext-length %olm::size-t))

(declaim (inline %olm::pk-private-key-length))

(cffi:defcfun ("olm_pk_private_key_length"
               %olm::pk-private-key-length)
              %olm::size-t)

(declaim (inline %olm::pk-sign))

(cffi:defcfun ("olm_pk_sign" %olm::pk-sign)
              %olm::size-t
              (%olm::sign (:pointer %olm::olm-pk-signing))
              (%olm::message (:pointer %olm::uint8-t))
              (%olm::message-length %olm::size-t)
              (%olm::signature (:pointer %olm::uint8-t))
              (%olm::signature-length %olm::size-t))

(declaim (inline %olm::pk-signature-length))

(cffi:defcfun ("olm_pk_signature_length" %olm::pk-signature-length)
              %olm::size-t)

(declaim (inline %olm::pk-signing))

(cffi:defcfun ("olm_pk_signing" %olm::pk-signing)
              (:pointer %olm::olm-pk-signing)
              (%olm::memory (:pointer :void)))

(declaim (inline %olm::pk-signing-key-from-seed))

(cffi:defcfun ("olm_pk_signing_key_from_seed"
               %olm::pk-signing-key-from-seed)
              %olm::size-t
              (%olm::sign (:pointer %olm::olm-pk-signing))
              (%olm::pubkey (:pointer :void))
              (%olm::pubkey-length %olm::size-t)
              (%olm::seed (:pointer :void))
              (%olm::seed-length %olm::size-t))

(declaim (inline %olm::pk-signing-last-error))

(cffi:defcfun ("olm_pk_signing_last_error"
               %olm::pk-signing-last-error)
              :string
              (%olm::sign (:pointer %olm::olm-pk-signing)))

(declaim (inline %olm::pk-signing-public-key-length))

(cffi:defcfun ("olm_pk_signing_public_key_length"
               %olm::pk-signing-public-key-length)
              %olm::size-t)

(declaim (inline %olm::pk-signing-seed-length))

(cffi:defcfun ("olm_pk_signing_seed_length"
               %olm::pk-signing-seed-length)
              %olm::size-t)

(declaim (inline %olm::pk-signing-size))

(cffi:defcfun ("olm_pk_signing_size" %olm::pk-signing-size)
              %olm::size-t)

(declaim (inline %olm::remove-one-time-keys))

(cffi:defcfun ("olm_remove_one_time_keys" %olm::remove-one-time-keys)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account))
              (%olm::session (:pointer %olm::olm-session)))

(declaim (inline %olm::sas))

(cffi:defcfun ("olm_sas" %olm::sas)
              (:pointer %olm::olm-sas)
              (%olm::memory (:pointer :void)))

(declaim (inline %olm::sas-calculate-mac))

(cffi:defcfun ("olm_sas_calculate_mac" %olm::sas-calculate-mac)
              %olm::size-t
              (%olm::sas (:pointer %olm::olm-sas))
              (%olm::input (:pointer :void))
              (%olm::input-length %olm::size-t)
              (%olm::info (:pointer :void))
              (%olm::info-length %olm::size-t)
              (%olm::mac (:pointer :void))
              (%olm::mac-length %olm::size-t))

(declaim (inline %olm::sas-calculate-mac-long-kdf))

(cffi:defcfun ("olm_sas_calculate_mac_long_kdf"
               %olm::sas-calculate-mac-long-kdf)
              %olm::size-t
              (%olm::sas (:pointer %olm::olm-sas))
              (%olm::input (:pointer :void))
              (%olm::input-length %olm::size-t)
              (%olm::info (:pointer :void))
              (%olm::info-length %olm::size-t)
              (%olm::mac (:pointer :void))
              (%olm::mac-length %olm::size-t))

(declaim (inline %olm::sas-generate-bytes))

(cffi:defcfun ("olm_sas_generate_bytes" %olm::sas-generate-bytes)
              %olm::size-t
              (%olm::sas (:pointer %olm::olm-sas))
              (%olm::info (:pointer :void))
              (%olm::info-length %olm::size-t)
              (%olm::output (:pointer :void))
              (%olm::output-length %olm::size-t))

(declaim (inline %olm::sas-get-pubkey))

(cffi:defcfun ("olm_sas_get_pubkey" %olm::sas-get-pubkey)
              %olm::size-t
              (%olm::sas (:pointer %olm::olm-sas))
              (%olm::pubkey (:pointer :void))
              (%olm::pubkey-length %olm::size-t))

(declaim (inline %olm::sas-is-their-key-set))

(cffi:defcfun ("olm_sas_is_their_key_set" %olm::sas-is-their-key-set)
              :int
              (%olm::sas (:pointer %olm::olm-sas)))

(declaim (inline %olm::sas-last-error))

(cffi:defcfun ("olm_sas_last_error" %olm::sas-last-error)
              :string
              (%olm::sas (:pointer %olm::olm-sas)))

(declaim (inline %olm::sas-mac-length))

(cffi:defcfun ("olm_sas_mac_length" %olm::sas-mac-length)
              %olm::size-t
              (%olm::sas (:pointer %olm::olm-sas)))

(declaim (inline %olm::sas-pubkey-length))

(cffi:defcfun ("olm_sas_pubkey_length" %olm::sas-pubkey-length)
              %olm::size-t
              (%olm::sas (:pointer %olm::olm-sas)))

(declaim (inline %olm::sas-set-their-key))

(cffi:defcfun ("olm_sas_set_their_key" %olm::sas-set-their-key)
              %olm::size-t
              (%olm::sas (:pointer %olm::olm-sas))
              (%olm::their-key (:pointer :void))
              (%olm::their-key-length %olm::size-t))

(declaim (inline %olm::sas-size))

(cffi:defcfun ("olm_sas_size" %olm::sas-size) %olm::size-t)

(declaim (inline %olm::session))

(cffi:defcfun ("olm_session" %olm::session)
              (:pointer %olm::olm-session)
              (%olm::memory (:pointer :void)))

(declaim (inline %olm::session-describe))

(cffi:defcfun ("olm_session_describe" %olm::session-describe)
              :void
              (%olm::session (:pointer %olm::olm-session))
              (%olm::buf :string)
              (%olm::buflen %olm::size-t))

(declaim (inline %olm::session-has-received-message))

(cffi:defcfun ("olm_session_has_received_message"
               %olm::session-has-received-message)
              :int
              (%olm::session (:pointer %olm::olm-session)))

(declaim (inline %olm::session-id))

(cffi:defcfun ("olm_session_id" %olm::session-id)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session))
              (%olm::id (:pointer :void))
              (%olm::id-length %olm::size-t))

(declaim (inline %olm::session-id-length))

(cffi:defcfun ("olm_session_id_length" %olm::session-id-length)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session)))

(declaim (inline %olm::session-last-error))

(cffi:defcfun ("olm_session_last_error" %olm::session-last-error)
              :string
              (%olm::session (:pointer %olm::olm-session)))

(declaim (inline %olm::session-size))

(cffi:defcfun ("olm_session_size" %olm::session-size) %olm::size-t)

(declaim (inline %olm::sha256))

(cffi:defcfun ("olm_sha256" %olm::sha256)
              %olm::size-t
              (%olm::utility (:pointer %olm::olm-utility))
              (%olm::input (:pointer :void))
              (%olm::input-length %olm::size-t)
              (%olm::output (:pointer :void))
              (%olm::output-length %olm::size-t))

(declaim (inline %olm::sha256-length))

(cffi:defcfun ("olm_sha256_length" %olm::sha256-length)
              %olm::size-t
              (%olm::utility (:pointer %olm::olm-utility)))

(declaim (inline %olm::unpickle-account))

(cffi:defcfun ("olm_unpickle_account" %olm::unpickle-account)
              %olm::size-t
              (%olm::account (:pointer %olm::olm-account))
              (%olm::key (:pointer :void))
              (%olm::key-length %olm::size-t)
              (%olm::pickled (:pointer :void))
              (%olm::pickled-length %olm::size-t))

(declaim (inline %olm::unpickle-inbound-group-session))

(cffi:defcfun ("olm_unpickle_inbound_group_session"
               %olm::unpickle-inbound-group-session)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-inbound-group-session))
              (%olm::key (:pointer :void))
              (%olm::key-length %olm::size-t)
              (%olm::pickled (:pointer :void))
              (%olm::pickled-length %olm::size-t))

(declaim (inline %olm::unpickle-outbound-group-session))

(cffi:defcfun ("olm_unpickle_outbound_group_session"
               %olm::unpickle-outbound-group-session)
              %olm::size-t
              (%olm::session (:pointer
                              %olm::olm-outbound-group-session))
              (%olm::key (:pointer :void))
              (%olm::key-length %olm::size-t)
              (%olm::pickled (:pointer :void))
              (%olm::pickled-length %olm::size-t))

(declaim (inline %olm::unpickle-pk-decryption))

(cffi:defcfun ("olm_unpickle_pk_decryption"
               %olm::unpickle-pk-decryption)
              %olm::size-t
              (%olm::decryption (:pointer %olm::olm-pk-decryption))
              (%olm::key (:pointer :void))
              (%olm::key-length %olm::size-t)
              (%olm::pickled (:pointer :void))
              (%olm::pickled-length %olm::size-t)
              (%olm::pubkey (:pointer :void))
              (%olm::pubkey-length %olm::size-t))

(declaim (inline %olm::unpickle-session))

(cffi:defcfun ("olm_unpickle_session" %olm::unpickle-session)
              %olm::size-t
              (%olm::session (:pointer %olm::olm-session))
              (%olm::key (:pointer :void))
              (%olm::key-length %olm::size-t)
              (%olm::pickled (:pointer :void))
              (%olm::pickled-length %olm::size-t))

(declaim (inline %olm::utility))

(cffi:defcfun ("olm_utility" %olm::utility)
              (:pointer %olm::olm-utility)
              (%olm::memory (:pointer :void)))

(declaim (inline %olm::utility-last-error))

(cffi:defcfun ("olm_utility_last_error" %olm::utility-last-error)
              :string
              (%olm::utility (:pointer %olm::olm-utility)))

(declaim (inline %olm::utility-size))

(cffi:defcfun ("olm_utility_size" %olm::utility-size) %olm::size-t)

(eval-when (:load-toplevel :compile-toplevel :execute)
  (export '%olm::create-sas "%OLM")
  (export '%olm::create-account "%OLM")
  (export '%olm::+inbound-group-session-h-+ "%OLM")
  (export '%olm::utility-last-error "%OLM")
  (export '%olm::remove-one-time-keys "%OLM")
  (export '%olm::inbound-group-session-is-verified "%OLM")
  (export '%olm::pk-max-plaintext-length "%OLM")
  (export '%olm::size-t "%OLM")
  (export '%olm::clear-outbound-group-session "%OLM")
  (export '%olm::create-sas-random-length "%OLM")
  (export '%olm::pickle-inbound-group-session-length "%OLM")
  (export '%olm::pk-signing-last-error "%OLM")
  (export '%olm::olm-pk-decryption "%OLM")
  (export '%olm::create-account-random-length "%OLM")
  (export '%olm::sas-calculate-mac-long-kdf "%OLM")
  (export '%olm::utility "%OLM")
  (export '%olm::utility-size "%OLM")
  (export '%olm::pickle-outbound-group-session-length "%OLM")
  (export '%olm::matches-inbound-session "%OLM")
  (export '%olm::account-sign "%OLM")
  (export '%olm::clear-sas "%OLM")
  (export '%olm::export-inbound-group-session-length "%OLM")
  (export '%olm::account-identity-keys "%OLM")
  (export '%olm::group-decrypt-max-plaintext-length "%OLM")
  (export '%olm::account-size "%OLM")
  (export '%olm::pickle-account-length "%OLM")
  (export '%olm::encrypt-message-length "%OLM")
  (export '%olm::clear-pk-encryption "%OLM")
  (export '%olm::sas-last-error "%OLM")
  (export '%olm::pk-encryption "%OLM")
  (export '%olm::session-last-error "%OLM")
  (export '%olm::clear-pk-signing "%OLM")
  (export '%olm::sas-size "%OLM")
  (export '%olm::inbound-group-session "%OLM")
  (export '%olm::pk-encrypt "%OLM")
  (export '%olm::unpickle-pk-decryption "%OLM")
  (export '%olm::outbound-group-session-last-error "%OLM")
  (export '%olm::clear-session "%OLM")
  (export '%olm::account-signature-length "%OLM")
  (export '%olm::+pk-h-+ "%OLM")
  (export '%olm::encrypt-message-type "%OLM")
  (export '%olm::+message-type-message+ "%OLM")
  (export '%olm::group-decrypt "%OLM")
  (export '%olm::outbound-group-session-message-index "%OLM")
  (export '%olm::olm-utility "%OLM")
  (export '%olm::pk-decryption "%OLM")
  (export '%olm::pk-mac-length "%OLM")
  (export '%olm::pk-decryption-size "%OLM")
  (export '%olm::sas-get-pubkey "%OLM")
  (export '%olm::pk-private-key-length "%OLM")
  (export '%olm::unpickle-account "%OLM")
  (export '%olm::pickle-outbound-group-session "%OLM")
  (export '%olm::account-one-time-keys "%OLM")
  (export '%olm::pk-signing-seed-length "%OLM")
  (export '%olm::decrypt-max-plaintext-length "%OLM")
  (export '%olm::uint8-t "%OLM")
  (export '%olm::pk-generate-key-random-length "%OLM")
  (export '%olm::unpickle-outbound-group-session "%OLM")
  (export '%olm::account-fallback-key "%OLM")
  (export '%olm::sas-is-their-key-set "%OLM")
  (export '%olm::pickle-pk-decryption "%OLM")
  (export '%olm::init-inbound-group-session "%OLM")
  (export '%olm::unpickle-session "%OLM")
  (export '%olm::olm-account "%OLM")
  (export '%olm::outbound-group-session-size "%OLM")
  (export '%olm::outbound-group-session-id "%OLM")
  (export '%olm::pk-encryption-set-recipient-key "%OLM")
  (export '%olm::sha256 "%OLM")
  (export '%olm::outbound-group-session "%OLM")
  (export '%olm::pickle-account "%OLM")
  (export '%olm::sas-set-their-key "%OLM")
  (export '%olm::account "%OLM")
  (export '%olm::pk-key-length "%OLM")
  (export '%olm::account-mark-keys-as-published "%OLM")
  (export '%olm::session-has-received-message "%OLM")
  (export '%olm::pk-ciphertext-length "%OLM")
  (export '%olm::session-id-length "%OLM")
  (export '%olm::ed25519-verify "%OLM")
  (export '%olm::error "%OLM")
  (export '%olm::pk-signing-public-key-length "%OLM")
  (export '%olm::session-id "%OLM")
  (export '%olm::pickle-pk-decryption-length "%OLM")
  (export '%olm::outbound-group-session-key "%OLM")
  (export '%olm::olm-session "%OLM")
  (export '%olm::+sas-h-+ "%OLM")
  (export '%olm::pk-decryption-last-error "%OLM")
  (export '%olm::inbound-group-session-id-length "%OLM")
  (export '%olm::pk-decrypt "%OLM")
  (export '%olm::pk-encryption-last-error "%OLM")
  (export '%olm::olm-outbound-group-session "%OLM")
  (export '%olm::inbound-group-session-size "%OLM")
  (export '%olm::encrypt-random-length "%OLM")
  (export '%olm::outbound-group-session-id-length "%OLM")
  (export '%olm::pk-get-private-key "%OLM")
  (export '%olm::session "%OLM")
  (export '%olm::pk-generate-key "%OLM")
  (export '%olm::account-generate-one-time-keys "%OLM")
  (export '%olm::pk-signing-size "%OLM")
  (export '%olm::create-outbound-session-random-length "%OLM")
  (export '%olm::group-encrypt "%OLM")
  (export '%olm::account-generate-fallback-key "%OLM")
  (export '%olm::account-identity-keys-length "%OLM")
  (export '%olm::olm-pk-encryption "%OLM")
  (export '%olm::account-last-error "%OLM")
  (export '%olm::clear-pk-decryption "%OLM")
  (export '%olm::pk-sign "%OLM")
  (export '%olm::pk-encryption-size "%OLM")
  (export '%olm::create-outbound-session "%OLM")
  (export '%olm::encrypt "%OLM")
  (export '%olm::olm-sas "%OLM")
  (export '%olm::sas-calculate-mac "%OLM")
  (export '%olm::import-inbound-group-session "%OLM")
  (export '%olm::account-max-number-of-one-time-keys "%OLM")
  (export '%olm::outbound-group-session-key-length "%OLM")
  (export '%olm::pk-signing-key-from-seed "%OLM")
  (export '%olm::create-inbound-session "%OLM")
  (export '%olm::sas-mac-length "%OLM")
  (export '%olm::pickle-inbound-group-session "%OLM")
  (export '%olm::pickle-session-length "%OLM")
  (export '%olm::olm-pk-signing "%OLM")
  (export '%olm::+h-+ "%OLM")
  (export '%olm::inbound-group-session-first-known-index "%OLM")
  (export '%olm::inbound-group-session-id "%OLM")
  (export '%olm::clear-account "%OLM")
  (export '%olm::pk-key-from-private "%OLM")
  (export '%olm::clear-inbound-group-session "%OLM")
  (export '%olm::account-fallback-key-length "%OLM")
  (export '%olm::+outbound-group-session-h-+ "%OLM")
  (export '%olm::pk-signing "%OLM")
  (export '%olm::sas-pubkey-length "%OLM")
  (export '%olm::export-inbound-group-session "%OLM")
  (export '%olm::sas "%OLM")
  (export '%olm::session-size "%OLM")
  (export '%olm::pickle-session "%OLM")
  (export '%olm::get-library-version "%OLM")
  (export '%olm::inbound-group-session-last-error "%OLM")
  (export '%olm::+message-type-pre-key+ "%OLM")
  (export '%olm::account-one-time-keys-length "%OLM")
  (export '%olm::matches-inbound-session-from "%OLM")
  (export '%olm::sha256-length "%OLM")
  (export '%olm::init-outbound-group-session-random-length "%OLM")
  (export '%olm::create-inbound-session-from "%OLM")
  (export '%olm::session-describe "%OLM")
  (export '%olm::pk-encrypt-random-length "%OLM")
  (export '%olm::account-generate-fallback-key-random-length "%OLM")
  (export '%olm::account-generate-one-time-keys-random-length "%OLM")
  (export '%olm::uint32-t "%OLM")
  (export '%olm::decrypt "%OLM")
  (export '%olm::unpickle-inbound-group-session "%OLM")
  (export '%olm::sas-generate-bytes "%OLM")
  (export '%olm::init-outbound-group-session "%OLM")
  (export '%olm::clear-utility "%OLM")
  (export '%olm::pk-signature-length "%OLM")
  (export '%olm::group-encrypt-message-length "%OLM")
  (export '%olm::olm-inbound-group-session "%OLM"))

