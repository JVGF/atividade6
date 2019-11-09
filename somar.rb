require 'rest-client'
require 'json'

url = "http://localhost:3000/somar?params[:2],params[:3]&$format=json"
resp = RestClient.get "#{url}"
puts JSON.parse(resp.body)

