## Projeto de Automação com Robot Framework e Appium
#### Este projeto utiliza Robot Framework e Appium para automação de testes em dispositivos móveis Android e iOS.

### Sumário
- Visão Geral
- Pré-Requisitos
- Instalação
- Executando Testes
- Exemplo de Teste


### Visão Geral
Este repositório contém uma integração entre Robot Framework e Appium para automação de testes em dispositivos móveis. O objetivo é testar aplicativos Android e iOS de forma simples e reutilizável.

### Pré-Requisitos
Node.js e Appium instalados
Python e Robot Framework instalados
Android Studio ou Xcode para emulação de dispositivos
Java (necessário para Appium em Android)◊

### Instalação
1. #### Clone o repositório:
    git clone https://github.com/seu_usuario/seu_repositorio.git
    
    cd seu_repositorio
2. #### Instale as dependências do Python:
    pip install -r requirements.txt
    
    Instale o Appium: npm install -g appium

### Executando Testes
Para rodar um teste, execute o comando:


robot tests/seu_arquivo_de_teste.robot

Certifique-se de que o Appium está rodando:


appium