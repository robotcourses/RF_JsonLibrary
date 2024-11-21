*** Settings ***
Resource   ../base.resource

*** Test Cases ***
T1 - Post Placeholder

    ${usuarios}  Create List  Igor Jesus  Almada  Luiz Henrique
    ${notas}  Create List  5  4  3

    ${response}  Post JSONPlaceholder    
    ...    nome_produto=Notebook
    ...    preco_produto=1990.99
    ...    usuario_avaliacao=${usuarios}
    ...    nota_avaliacao=${notas}

    Assert Post JSONPlaceholder    ${response}
    
T2 - Post Placeholder com Descrição

    ${usuarios}  Create List  Marlon Freitas  Gregory  Savarino
    ${notas}  Create List  5  4  3  2
    ${descricao}  Create Dictionary  descricao=Geladeira Samsung 220v

    ${response}  Post JSONPlaceholder    
    ...    nome_produto=Geladeira
    ...    preco_produto=7990.99
    ...    usuario_avaliacao=${usuarios}
    ...    nota_avaliacao=${notas}
    ...    descricao=${descricao}

    Assert Post JSONPlaceholder    ${response}


T3 - Post Placeholder sem o Nome do Produto

    ${usuarios}  Create List  Alexander Barboza  Bastos
    ${notas}  Create List  3  2

    ${response}  Post JSONPlaceholder    
    ...    preco_produto=25990
    ...    usuario_avaliacao=${usuarios}
    ...    nota_avaliacao=${notas}

    Assert Post JSONPlaceholder    ${response}

T4 - Post Placeholder sem o Preço do Produto

    ${usuarios}  Create List  John  Alex Telles  Vitinho
    ${notas}  Create List  5  4
    ${descricao}  Create Dictionary  descricao=Geladeira Samsung 220v

    ${response}  Post JSONPlaceholder    
    ...    nome_produto=Microondas
    ...    usuario_avaliacao=${usuarios}
    ...    nota_avaliacao=${notas}
    ...    descricao=${descricao}

    Assert Post JSONPlaceholder    ${response}
