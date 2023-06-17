#language: pt

Funcionalidade: Configurar produto de acordo com tamanho e gosto para adicionar ao carrinho
Como aluno do EBAC quero configurar produto para inserir no carrinho

Contexto: Dado que eu acesse a página de um produto

Cenario: escolher atributos
Quando escolher cor, tamanho e quantidade do produto
Entao produto será inserido no carrinho

Cenario: adicionar quantidade de produtos
Quando  eu adicionar 10 produtos
Entao produtos serão inseridos no carrinho

Cenario: limpar item
Quando eu clicar no botão "limpar"
Entao o produto deve voltar ao estado original

