# frozen_string_literal: true

require 'omniauth-oauth2'
require 'net/https'

module OmniAuth
  module Strategies
    class Brighspace < OmniAuth::Strategies::OAuth2      
    end
  end
end