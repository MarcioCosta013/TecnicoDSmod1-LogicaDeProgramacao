algoritmo "projeto"
//programa principal

tipo
   loginsenha=registro
      loginreg: caractere
      senhareg: caractere
   fimregistro
   //Registro do login e senha

   listadedados=registro
      id: inteiro
      nome: caractere
      cpf: inteiro
      cidade: caractere
      estado: caractere
   fimregistro
   //Registros reverente a os dados
procedimento addloginssenhas
//procedimento que carrega o vetor de login

inicio
   // Se��o de Comandos
   cont<-1
   //adm
   loginvetor [cont].loginreg<-"David"
   loginvetor [cont].senhareg<-"D123456D"

   cont<-2
   //estagi�rio
   loginvetor [cont].loginreg<-"Edimar"
   loginvetor [cont].senhareg<-"E654321R"

   cont<-0
   //para se for usar de novo ele est� zerado


fimprocedimento

procedimento addnomes
//procedimento que carrega os dados

inicio
   // Se��o de Comandos
   cont<-1
   dadosvetor[cont].id<- 1
   dadosvetor[cont].nome<- "Clarice Calminha"
   dadosvetor[cont].cpf<-123456789
   dadosvetor[cont].cidade<-"Jaboat�o"
   dadosvetor[cont].estado<-"Pernambuco"

   cont<-2
   dadosvetor[cont].id<- 2
   dadosvetor[cont].nome<- "Daniel Gordo"
   dadosvetor[cont].cpf<-101112131
   dadosvetor[cont].cidade<-"Recife"
   dadosvetor[cont].estado<-"Pernambuco"

   cont<-3
   dadosvetor[cont].id<- 3
   dadosvetor[cont].nome<- "Danilo Rosa"
   dadosvetor[cont].cpf<-415161718
   dadosvetor[cont].cidade<-"Rio de Janeiro"
   dadosvetor[cont].estado<-"Rio de Janeiro"

   cont<-4
   dadosvetor[cont].id<- 4
   dadosvetor[cont].nome<- "Gabriela Legalzinha"
   dadosvetor[cont].cpf<-192021222
   dadosvetor[cont].cidade<-"Camaragibe"
   dadosvetor[cont].estado<-"Pernambuco"

   cont<-5
   dadosvetor[cont].id<- 5
   dadosvetor[cont].nome<-"Santo Amaro"
   dadosvetor[cont].cpf<-324252627
   dadosvetor[cont].cidade<-"Recife"
   dadosvetor[cont].estado<-"Pernambuco"

   cont<-6
   dadosvetor[cont].id<- 6
   dadosvetor[cont].nome<- "Marcio Maioral"
   dadosvetor[cont].cpf<-777777777
   dadosvetor[cont].cidade<-"Jaboat�o"
   dadosvetor[cont].estado<-"Pernambuco"



   cont<-0
fimprocedimento

procedimento caso11

//procedimento

inicio
   // Se��o de Comandos
   //caso o vetor tiver valor zero n�o ser� exibido

   para cont de 1 ate 10 faca
      //exibir o id
      se (dadosvetor[cont].id<>0) entao
         escreva (dadosvetor[cont].id, " - ")
      fimse

      //exibir o nome ou nada se n�o tiver
      se (dadosvetor[cont].nome<>0) entao
         escreva( dadosvetor[cont].nome, " - ")
      senao
         escreva(" ")
      fimse

      //exibir cpf ou nada se n�o tiver
      se (dadosvetor[cont].cpf<>0) entao
         escreva( dadosvetor[cont].cpf, " - ")
      senao
         escreva(" ")
      fimse

      //exibir cidade ou nada se n�o tiver
      se (dadosvetor[cont].cidade<>0) entao
         escreva(dadosvetor[cont].cidade, " - ")
      senao
         escreva(" ")
      fimse

      //exibir estado ou nada se n�o tiver
      se (dadosvetor[cont].estado<>0) entao
         escreval(dadosvetor[cont].estado)
      senao
         escreval (" ")
      fimse

   fimpara
   cont<-0
fimprocedimento

procedimento caso12
// procedimento
// Data : 15/09/2017
var
   avali,numid: inteiro
inicio
   // Se��o de Comandos
   escreval("Digite o n�mero de identifica��o (id)")
   leia (numid)
   avali<-0
   para cont de 1 ate 10 faca
      se (numid = dadosvetor[cont].id) entao
         avali<-1
         // para n�o aparecer a mensagem de "n�o encontrado"
         escreval (dadosvetor[cont].id , dadosvetor[cont].nome , dadosvetor[cont].cpf , dadosvetor[cont].cidade , dadosvetor[cont]. estado)
      fimse

   fimpara
   //um "se" para se n�o tiver mostrado nenhum valor para apreender esse mensagem...
   se (avali=0) entao
      escreval ("Valor n�o encontrado...")
   fimse
   cont<-0
fimprocedimento

procedimento caso13
// Alterar buscando pelo n�mero de identifica��o
//procedimento

var
   alteraint, perg2, numid: inteiro
   altera: caractere

inicio
   //Leia pra pedir o Id para ser pesquisado
   escreva("Digite o n�mero de identifica��o: ")
   leia (numid)
   para cont de 1 ate 10 faca
      se (numid=dadosvetor[cont].id) entao
         escreval("identificador - nome - cpf - cidade - estado ")
         escreval(dadosvetor[cont].id, dadosvetor[cont].nome, dadosvetor[cont].cpf, dadosvetor[cont].cidade, dadosvetor[cont].estado)
         escreval (" ")
         escreval ("Qual campo deseja alterar?")
         escreval ("1- Nome")
         escreval ("2- CPF")
         escreval ("3- Cidade")
         escreval ("4- Estado")
         escreval (" ")
         //estrutura de repeti��o para repitir se o valor digitado n�o corresponder a nenhuma das op��es
         enquanto (perg2<1) ou (perg2>4) faca
            escreva ("Digite o n�mero a op��o desejada: ")
            leia (perg2)
            escolha perg2
               // "escolha" para escolher qual campo vai ser alterado
            caso 1
               //campo nome
               escreva ("Digite o novo nome: ")
               leia(altera)
               dadosvetor[cont].nome<-altera
               escreval ("Valor alterado com sucesso!")

            caso 2
               //campo cpf
               escreva ("Digite o novo CPF: ")
               leia(alteraint)
               dadosvetor[cont].cpf<-alteraint
               escreval ("Valor Alterado com sucesso!")

            caso 3
               //campo cidade
               escreva ("Digite o nome da nova cidade: ")
               leia(altera)
               dadosvetor[cont].cidade<-altera
               escreval ("Valor Alterado com sucesso!")

            caso 4
               //campo estado
               escreva ("Digite o novo estado: ")
               leia(altera)
               dadosvetor[cont].estado<-altera
               escreval ("Valor Alterado com sucesso!")

            outrocaso
               escreval ("Valor inv�lido! Digite novamente...")
            fimescolha
         fimenquanto

      fimse

   fimpara

   cont<-0
fimprocedimento

procedimento caso14
//Adicionar dados
//procedimento

var
   guardador: inteiro

inicio
   para cont de 10 ate 1 faca passo -1
      se (dadosvetor[cont].id=0) entao

         guardador<-cont

      fimse
      se (guardador = 0) entao
         escreval ("Espa�o insuficiente na mem�ria!")
      senao
         escreval ("Digite o nome: ")
         leia(dadosvetor[guardador].nome)
         escreval ("Digite o CPF: ")
         leia (dadosvetor[guardador].cpf)
         escreval ("Digite a cidade: ")
         leia (dadosvetor[guardador].cidade)
         escreval ("Digite o estado: ")
         leia (dadosvetor[guardador].estado)
         escreval ("Valores inseridos com sucesso!")

      fimse
   fimpara


fimprocedimento

procedimento caso15
// Apagar Dados
//procedimento

var
   perg2, ind: inteiro

inicio
   // Se��o de Comandos
   escreva ("Digite o n�mero de identifica��o: ")
   leia (ind)
   escreval(ind)
   escreval (" ")
   //pergunta se oadm deseja realmente apagar
   repita
      escreval ("Deseja realmente apagar esses dados? 1- Sim, 2- N�o")
      //estrutura de repeti��o usada para repetir se n�o for digitado nenhum dos dois n�meros
      leia(perg2)
   ate (perg2=1) ou (perg2=2)
   se (perg2=1) entao
      //para zerar a posi��o apagada
      dadosvetor[ind].id<- 0
      dadosvetor[ind].nome<- 0
      dadosvetor[ind].cpf<- 0
      dadosvetor[ind].cidade<- 0
      dadosvetor[ind].estado<- 0
      limpatela
      escreval ("Apagado com sucesso!")
   senao
      //Para aparecer se ele digitar n�o...
      escreval ("Cancelado!")
   fimse

fimprocedimento

var
   senha,login:caractere
   perg4, perg3, perg1, cont, tipousuario: inteiro

   loginvetor: vetor [1..2] de loginsenha
   //vetor que guarda logins e senhas

   dadosvetor: vetor [1..10] de listadedados
   //vetor que guarda os dados


inicio
   // Se��o de procedimentos de carregamento de dados
   addloginssenhas
   addnomes
   //Fim dos carregamentos de dados
   repita
      //"repita" acima usado para recome�ar o programa

      //"repita" abaixo usado para repetir a pagina de login se for incorreto
      repita
         //estrutura para repitir caso login e senha estejam errados
         //Se��o de login
         escreval("-------------------------------------------")
         escreval(" ")
         escreval("Bem vindo ao BDVisualg!")
         escreval(" ")
         escreval("-------------------------------------------")
         escreval(" ")
         escreval("Escreva o seu login")
         escreva("login: ")
         leia(login)
         escreval(" ")
         escreval("Digite a senha")
         escreva ("Senha: ")
         leia(senha)
         //Fim Se��o de Login

         //Teste de Login e Senha
         Se (login=loginvetor[1].loginreg) e (senha=loginvetor[1].senhareg) entao
            tipousuario<- 1
            //1 = adm

         senao
            se (login= loginvetor[2].senhareg ) e (senha=loginvetor[2].senhareg ) entao
               tipousuario<-2
               //2 = estagi�rio

            senao
               tipousuario<-3
               //3 = incorreto e repete

               escreval("Login ou senha incorretos! Tente novamente.")
               escreval (" ")
               escreval (" ")

            fimse
         fimse
         limpatela
      ate (tipousuario=1) ou (tipousuario=2)
      //se��o p�s login

      escolha tipousuario
         //Se tipousuario for =1 vai ser conta tipo adm, e se for =2 vai ser conta tipo estagi�rio

      caso 1
         //enquanto para voltar ao menu adm
         repita
            limpatela
            escreval("-------------------------------------------")
            escreval(" ")
            escreval("BDVisualg!")
            escreval(" ")
            escreval("-------------------------------------------")
            escreval("Bem-vindo Administrador")
            escreval("-------------------------------------------")
            escreval("-------------------------------------------")


            escreval ("Digite a numera��o de acordo com a sua escolha...")
            escreval (" ")
            escreval("Menu:")
            escreval("1- Visualizar tudo")
            escreval ("2- Visualizar por n�mero de identifica��o")
            escreval ("3- Alterar Dados Buncando pelo n�mero de identifica��o")
            escreval ("4- Adicionar Dados")
            escreval ("5- Apagar")
            escreval (" ")
            escreva ("Digite o n�mero correspondente a op��o escolhida: ")
            leia (perg1)
               escolha perg1
                  //um escolha dentro de adm
               caso 1
                  //Visualizar tudo
                  caso11

               caso 2
                  // Visualizar por n�mero de identifica��o
                  caso12

               caso 3
                  // Alterar buscando pelo n�mero de identifica��o
                  caso13

               caso 4
                  // Adicionar Dados
                  caso14

               caso 5
                  //Apagar
                  caso15

               outrocaso
                  escreval ("Valor inv�lido! Digite novamente...")
                  escreva ("Digite o n�mero correspondente a op��o escolhida: ")

               fimescolha


            escreval("Deseja Sair da conta? 1- Sim , 2 - N�o")
            //"enquanto" para repetir o leia da pergunta acima
            repita
               leia(perg3)
               se (perg3<>1) ou (perg3<>2) entao
                  escreval ("Valor inv�lido!, Digite 1 para Sim, e 2 para N�o")
                  //estrutura para aparecer a mensagem de erro
               fimse
            ate (perg3=1) ou (perg3=2)

         ate (perg3=2)
         limpatela

      caso 2
         //"enquanto" para voltar ao menu estagi�rio
         enquanto (perg3<>1) faca
            limpatela
            escreval("-------------------------------------------")
            escreval(" ")
            escreval("BDVisualg!")
            escreval(" ")
            escreval("-------------------------------------------")
            escreval("Bem-vindo Estagi�rio")
            escreval("-------------------------------------------")
            escreval("-------------------------------------------")


            escreval ("Digite a numera��o de acordo com a sua escolha...")
            escreval (" ")
            escreval("Menu:")
            escreval("1- Visualizar tudo")
            escreval ("2- Visualizar por n�mero de identifica��o")
            escreval (" ")
            escreva ("Digite o n�mero correspondente a op��o escolhida: ")
            repita
               leia(perg1)
               escolha perg1
               caso 1
                  //Visualizar tudo
                  caso11

               caso 2
                  // Visualizar por n�mero de identifica��o
                  caso12

               outrocaso
                  escreval ("Valor inv�lido! Digite novamente...")
                  escreva ("Digite o n�mero correspondente a op��o escolhida: ")
               fimescolha
            ate (perg1=1) ou (perg1=2)

            escreval("Deseja Sair da conta? 1- Sim , 2 - N�o")
            //"enquanto" para repetir o leia da pergunta acima
            repita
               leia(perg3)
               se (perg3<>1) ou (perg3<>2) entao
                  escreval ("Valor inv�lido!, Digite 1 para Sim, e 2 para N�o")
                  //estrutura para aparecer a mensagem de erro
               fimse
            ate (perg3=1) ou (perg3=2)

         fimenquanto
         limpatela

      outrocaso
      fimescolha

      escreval("Finalizar o programa - Digite 1, Fazer Login novamente - Digite 2")
      //enquanto para repitir se n�o for digitado nenhum dos dos n�meros
      repita
         leia (perg4)
         se (perg4<>1) ou (perg4<>2) entao
            escreval ("Valor inv�lido!, Digite ou 1 ou 2.")
            //para aparecer mensagem de erro
         fimse
      ate (perg4=1) ou (perg4=2)
   ate (perg4=1)

fimalgoritmo