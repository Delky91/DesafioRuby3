require 'uri'
require 'net/http'
require 'json'

url = URI('https://mindicador.cl/api')
https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)
response = https.request(request)
results = JSON.parse(response.read_body)

datos = results.to_a

print datos[3][1]["valor"]
puts ""
