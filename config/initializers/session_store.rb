# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_db_test_session',
  :secret      => '4e3d8e485d6a20481b45ee3964af5fe69ad1be90fe57f31b0cde24c5a6d97a31f0a1805fe8f225288dcf9aa7475c4bc4b464866081a382328aecfe0872c270ff'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
