# ActiveadminGooglePlaces

Plugin for adding google places search autocomplete to activeadmin

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activeadmin_google_places'
```

And then execute:

    $ bundle install

And then add these javascript files to the activeadmin.js file:

```js
//= require activeadmin/google_places/google_places
//= require activeadmin/google_places_input
```

Please generate the activeadmin_google_places initializer:

    $ rails generate activeadmin_google_places:install
    
This will create a initializer file that you can add your Google API key.
This will be used for the fields that you want to add google places autocomplete.
Unless you configure this api key google will refuse to show any places results.

In activeadmin you can basic add google places search by doing ```as: :google_places``` to
your inputs.

## Examples

```ruby

 form do |f|
    f.inputs 'Event' do
      f.input :name
      f.input :date
      f.input :location, as: :google_places
      f.input :active
    end
    f.actions
  end
```

## Do you like it? Star it!

If you use this component just star it. A developer is more motivated to improve a project when there is some interest.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/randikabanura/activeadmin_google_places.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
