# Dependencias
require "uri"
require "net/http"
require 'json'


# Método request que recibirá como parámetro la url a consultar
def requestApi(url_requested)
    # URL de la API
    url = URI(url_requested)

    # Crea un objeto Net::HTTP para realizar la petición HTTP
    http = Net::HTTP.new(url.host, url.port)

    # Habilita el uso de SSL para una conexión segura
    http.use_ssl = true

    # Verifica el certificado del servidor sea confiable y que el nombre del dominio coincida con el certificado
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER

    #Creamos el request con los metodos y protocolos correspondientes
    request = Net::HTTP::Get.new(url)
    request["cache-control"] = 'no-cache'
    request["postman-token"] = '5f4b1b36-5bcd-4c49-f578-75a752af8fd5'
    
    # Guardamos la respuesta del request
    response = http.request(request)

    # Retornamos la respuesta pero parseada para poder trabajarlo
    return JSON.parse(response.body)
end

# Invocación del método request, limitando a las 5 primeras imágenes
data = requestApi('https://jsonplaceholder.typicode.com/photos')[0..4]


# Mapeamos los datos y se guarda el valor de hash "url"
photos = data.map{|x| x["url"]}

# Imprimimos el resultado
puts photos

# Se crea la variable html que contendrá el código html
html= ""

# Iteramos el arreglo photos, para generar las etiquetas <img> con la url de cada imagen
photos.each do |photo|
    html += "<img src=\"#{photo}\">\n"
end

# Se crea el archivo output.html y se guarda el contenido de la variable html
File.write('output.html', html)
