# Projeto back-end

Instruções para configurar e execultar o projeto
## 1 - instalar o python 

**Importante:** marcar a opção 'add to path', durante a instalação do python para adicionar o python às variaveis de ambiente 

 - [página oficial do python](https://www.python.org/downloads/)

## 2 - cirar ambiente virtual
### No seu terminal, powershell por exemplo, vá até a pasta do projeto:

\`cd/local_do_download/projecd_back-end/newsletter_back/\`

### E execulte o comando:

\`python -m venv venv\`

## 3 - iniciar ambiente virtual


### na mesma pasta "local_do_download/projecd_back-end/newsletter_back", execulte o comando:

\`venv/Scripts/activate\` caso haja uma pergtunta clique na tecla "a"
**aqui pode dar um erro se o pc não permitir execução de scripts, resolve-se executando o powershell como administrador e rodando o comando Set-ExecutionPolicy -ExecutionPolicy Unrestricted** *depois é possivel redefinir caso queira*

## 4 - baixar as dependências do projeto

### ainda na mesma pasta, rodar o comando:

\`pip install requirements.txt\`

## 5 - rodar o servidor 

### navegue para a pasta newsletter_back:

\`cd projecd_back-end/newsletter_back\`

### rode o comando: 

\`python manage.py runserver\`


Agora é só deixar o terminal aberto e execultar o front-end

