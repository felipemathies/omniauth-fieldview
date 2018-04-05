require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Fieldview < OmniAuth::Strategies::OAuth2
      option :name, :fieldview

      option :client_options, {
      	site: "https://api.climate.com", 
      	authorize_url: 'https://climate.com/static/app-login/',
        token_url: '/api/oauth/token',
        auth_scheme: :basic_auth
     	}

      uid{ raw_info['uuid'] }

      info do
         {
           first_name: raw_info['firstname'],
           last_name: raw_info['lastname'],
           email: raw_info['email']
         }
      end

      extra do
         {
           raw_info: raw_info
         }
      end

      def raw_info
         @raw_info ||= access_token.params["user"]
      end
    end
  end
end