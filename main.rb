require 'mechanize'
require 'json'

def get_vehicle_data(url)
  begin
    agent = Mechanize.new
    page = agent.get(url)
    body = page.body

    content = body.split('<script id="__NEXT_DATA__" type="application/json">')[1].split('</script>')[0]
    json_data = JSON.parse(content)

    offers = json_data['props']['pageProps']['server']['offers']

    vehicles = offers.map do |offer|
      {
        "modelo" => offer['versionName'],
        "marca" => offer['makeName'],
        "valor" => offer['price'],
        "ano_fabricacao" => offer['manufacturedYear'],
        "ano_modelo" => offer['modelYear']
      }
    end
    
    File.open('veiculos_juiz_de_fora.json', 'w') do |f|
      f.write(JSON.pretty_generate(vehicles))
    end

    puts "Dados dos veículos foram salvos com sucesso em veiculos_juiz_de_fora'."
  rescue StandardError => e
    puts "Ocorreu um erro ao obter os dados dos veículos: #{e.message}"
  end
end

def main
  url = 'https://napista.com.br/busca/carro-em-juiz-de-fora'
  get_vehicle_data(url)
end

main
