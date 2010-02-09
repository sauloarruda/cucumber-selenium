# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_app-exemplo_session',
  :secret      => '6d55ce36c7c333960e8038c77c550a3ee3161b649eda80c4236f71ff63a8f134c5a6e37060483bb1b79d0b8e1323f0a3fd0dfa5ab1c3ef12420e8e106de242d2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
