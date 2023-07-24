#language: pt

@keyValidate

Funcionalidade: Buscando um estabelecimento via API
Como um usario quero consultar um produto

Cenário: Validar o retorno do parâmetro typeOfEstablishment
    Dado o endpoint enumerations/VRPAT
    Quando Realizo uma requisição para consultar um produto
    Então valido que a chave typeOfEstablishment é retornada