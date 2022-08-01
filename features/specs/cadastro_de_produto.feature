#language: pt
@CadastroProdutos
Funcionalidade: Cadastrar um novo produto
    Como administrador do e-commerce Front - ServeRest
    Quero cadastrar um novo produto 
    Para os usuários poderem comprar

    Contexto: 
        Dado que esteja na tela de cadastrado de produto
        E logado como administrador
        
    Esquema do Cenário: Validar o cadastro de um novo produto
        Quando o administrador preencher os campos "<Nome>", "<Preço>", "<Descrição>" e "<Quantidade>"
        Então é exibido mensagem "<msg>"
        Exemplos:
        |Nome                |Preço     |Descrição                            |Quantidade  |msg                                 |
        |                    |300       |Melhor Teclado para o seu gameplay   |1000        |Nome não pode ficar em branco       |
        |Teclado             |          |Melhor Teclado para o seu gameplay   |1000        |Preco é obrigatório                 |
        |Teclado             |300       |                                     |1000        |Descricao não pode ficar em branco  |
        |Teclado             |300       |Melhor Teclado para o seu gameplay   |            |Quantidade é obrigatório            |
        |Teclado             |300       |Melhor Teclado para o seu gameplay   |1000        |                                    |
        |Teclado             |300       |Melhor Teclado para o seu gameplay   |1000        |Já existe produto com esse nome     |