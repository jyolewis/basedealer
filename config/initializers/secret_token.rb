# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Although this is not needed for an api-only application, rails4 
# requires secret_key_base or secret_token to be defined, otherwise an 
# error is raised.
# Using secret_token for rails3 compatibility. Change to secret_key_base
# to avoid deprecation warning.
# Can be safely removed in a rails3 api-only application.
Basedealer::Application.config.secret_token = '1ca5d24fd912eb95dbafd9aa0bfed3ae56a4fd6ef20bb9bf7cdb846a2c3189a77b8ca66bcc0cff4e93ef7507eb1a1e211965c04a40aacc8b9e4a0f1bb0d39226'
