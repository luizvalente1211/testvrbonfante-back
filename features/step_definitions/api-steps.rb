Dado('o endpoint enumerations\/VRPAT') do
    #url + endpoint a ser chamado
    $uri_base = "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"
  end
  
  Quando('Realizo uma requisição para consultar um produto') do
    
    #variavel recebendo o response
    $response = HTTParty.get($uri_base)
   end
  
  Então('valido que a chave typeOfEstablishment é retornada') do

    #filtrando pelo objeto typeOfEstablishment e utilizando o parametro key para fazer o 'random/sample' diretamente com os estabelecimentos
    $typeOfEstablishment = $response['typeOfEstablishment']{['key']}
    #Realizando o print conforme o estabelecimento sorteado   
    print $typeOfEstablishment.sample
  end