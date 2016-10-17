require( 'pry-byebug' )
require( 'sinatra' )
require( 'sinatra/contrib/all' ) 
require( 'json' )
require_relative('./models/formatter')

get '/' do 
    erb(:welcome)
  end

get '/address' do
  content_type(:json)
  formatter = Formatter.new()
  results = {
         address: ('3 Argyle House'),
         building: 'Codebase',
         postcode: formatter.upcase('e13 zqf'),
         phone: '0131558030'
     }
     results.to_json
end

get'/camel_case' do
  content_type(:json)
  formatter = Formatter.new()
  results = formatter.camel_case"#{String}"
  results.to_json

end

