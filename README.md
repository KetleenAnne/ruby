# Web Scraping de Dados de Veículos

Este é um pequeno projeto em Ruby para extrair dados de veículos do site [Na Pista](https://napista.com.br/) usando web scraping e salvá-los em um arquivo JSON.

## Descrição

O script Ruby neste repositório utiliza a gem `mechanize` para fazer scraping de dados de veículos de um site específico. Ele extrai as informações relevantes das páginas da web, formata os dados em um formato JSON e os salva em um arquivo local.

## Como Usar

1. Certifique-se de ter o Ruby instalado no seu sistema. Você pode baixá-lo em [ruby-lang.org](https://www.ruby-lang.org/).
2. Clone este repositório:
   ```bash
   git clone https://github.com/KetleenAnne/ruby.git
   ```
3. Entre no diretório do projeto:
   ```bash
    cd ruby
   ```
4. Instale as dependências do Ruby:
   ```bash
   bundle install
   ```
5. Execute o script Ruby:
   ```bash
    ruby main.rb
   ```
6. Os dados dos veículos serão salvos em um arquivo chamado veiculos_juiz_de_fora.json no diretório atual.
