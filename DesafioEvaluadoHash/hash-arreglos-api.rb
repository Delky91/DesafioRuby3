# Dependencias
require "uri"
require "net/http"
require 'json'

def ApiNasa(url)
    url = URI(url)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER

    #Creamos el request con los metodos y protocolos correspondientes
    request = Net::HTTP::Get.new(url)
    request["cache-control"] = 'no-cache'

    # Guardamos la respuesta del request
    response = http.request(request)

    # Retornamos la respuesta pero parseada para poder trabajarlo
    return JSON.parse(response.body)
end

def build_web_page(data)
    
    data_photos = data["photos"][0..9]
    # Mapeamos los datos y se guarda el valor de hash "img_src"
    photos = data_photos.map{|x| x["img_src"]}

    html_body = "<html>\n<head>\n</head>\n<body>\n<ul>\n"
    html_body += "#{photos.map { |photo| "\t<li><img src=\"#{photo}\"></li>\n" }.join}"
    html_body += "</ul> \n</body>\n</html>"

    puts html_body

    File.write('index.html', html_body)

end

# Crear un método photos_count que reciba el hash de respuesta y devuelva un nuevo
# hash con el nombre de la cámara y la cantidad de fotos. 
def photos_count(data)
    
    # Guardamos la información
    data_camera_photos = data["photos"]
    camera_photos = {}

    # Pasamos por un each para conseguir el nombre de la camara
    data_camera_photos.each do |data_camera|
        camera_name = data_camera["camera"]["name"]
    # pasamos a int el resultado ya que el primer resultado sería nill y le vamos sumando de a uno por ocurrencia
        camera_photos[camera_name] = camera_photos[camera_name].to_i + 1
    end 

    puts camera_photos

end

#clave de la api de la nasa
apikey = "7HMCSocbhyg0oC4bwWmaNhshT1yhq0NZ78FeW5CV"

# Invocación del método ApiNasa
data = ApiNasa("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10&api_key=#{apikey}")

build_web_page(data)
photos_count(data)


