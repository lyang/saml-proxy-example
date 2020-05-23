# frozen_string_literal: true

require 'sinatra'

set :bind, '0.0.0.0'

get '*' do
  "Hello, #{request.env['HTTP_SAML_EMAIL']}"
end
