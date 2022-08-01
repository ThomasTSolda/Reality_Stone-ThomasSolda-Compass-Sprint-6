#language: pt
@CadastroAdm
Funcionalidade: Cadastro de administrador
    Como administrador do e-commerce Front - ServeRest
    Quero realizar cadastro 
    Para logar na aplicação

    Contexto: 
        Dado que esteja na tela de cadastro para administrador

    Esquema do Cenário: Validar o cadastro de administrador
        Quando o administrador preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então a mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email     |Digite sua senha |msg                                       |
        |thomas          |thomasadm@adm.com    |123456           |                                          |
        |                |thomasadm@adm.com    |123456           |Nome não pode ficar em branco             |
        |thomas          |                     |123456           |Email é obrigatório                       |
        |thomas          |thomasadm@adm        |123456           |Email deve ser um email válido            |
        |thomas          |thomasadm@adm.com    |                 |Password não pode ficar em branco         |
        |thomas          |thomasadm@adm.com    |123456           |Este email já está sendo usado            |
    
    