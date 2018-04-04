require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Fieldview < OmniAuth::Strategies::OAuth2
      option :name, :fieldview

      option :client_options, {
      	site: "https://api.climate.com", 
      	authorize_url: 'https://climate.com/static/app-login/',
        token_url: '/api/oauth/token'
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

      def build_access_token
        options.token_params.merge!(:headers => {'Authorization' => basic_auth_header })
        super
      end

      def basic_auth_header
        "Basic " + Base64.strict_encode64("#{options[:client_id]}:#{options[:client_secret]}")
      end
    end
  end
end