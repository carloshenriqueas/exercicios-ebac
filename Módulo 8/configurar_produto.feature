#language: en

Feature: Configurar produto de acordo com tamanho e gosto para adicionar ao carrinho
Como aluno do EBAC quero configurar produto para inserir no carrinho

Background: acesso à página de um produto

When escolher cor, tamanho e quantidade do produto
Then produto será inserido no carrinho

When  eu adicionar 10 produtos
Then produtos serão inseridos no carrinho

When eu clicar no botão "limpar"
Then o produto deve voltar ao estado original

