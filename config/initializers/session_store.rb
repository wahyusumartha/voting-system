# Be sure to restart your server when you modify this file.

VotingSystem::Application.config.session_store :cookie_store, key: '_voting-system_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# VotingSystem::Application.config.session_store :active_record_store
