# Omniauth::Fieldview

Cliamte FieldView Omniath2

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-fieldview'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-fieldview

## Configuration

```ruby
# In Rails, you could put this in config/initializers/omniauth.rb
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :fieldview, FIELDVIEW_CLIENT_ID, FIELDVIEW_CLIENT_SECRET, {:scope => SCOPES}
end
```

## Usage

TODO: Write usage instructions here

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/felipemathies/omniauth-fieldview.
