#language: pt

@regressivo
Funcionalidade: Validação do CPF ao logar
    Como um usuário do site Livelo
    Quero realizar o login
    Para ter acesso a minha página secreta

Contexto: Acesso ao site
    Dado que acesso o site Livelo

@cpf_valido
Esquema do Cenário: validação do CPF
    Quando clico em entrar 
    E preencho o campo com <cpf_valido>
    Então o sistema deve validar o CPF inserido

    Exemplos:
    | cpf_valido     |
    | "000000096-52" |


@cpf_invalido
Esquema do Cenário: validação do CPF inválido
    Quando clico em entrar 
    E preencho o campo com <cpf_invalido>
    Então o sistema deve exibir a <mensagem>

    Exemplos:
    | cpf_invalido    | mensagem                        |
    | "098234857-12"  | "Este número de CPF é inválido" |
    | "000000000-01"  | "Este número de CPF é inválido" |
