require 'sinatra'
require 'net/http'
require 'json'

get("/") do
  author = params['author']
  url = URI("https://poetrydb.org/author/#{URI.encode_www_form_component(author)}/title")
  response = Net::HTTP.get_response(url)
  
  if response.body.empty? || response.body == '<h1>Not Found</h1>'
    @result = "No response received from API or author not found"
  else
    begin
      data = JSON.parse(response.body)
      @result = data
    rescue JSON::ParserError
      @result = "Response is not valid JSON"
    end
  end
  
  erb :home
end
