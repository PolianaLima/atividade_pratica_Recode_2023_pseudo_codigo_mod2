Algoritmo "PROJETO_RECODE_MOD2_V4"

CONST

   maxCliente = 100
   maxDestino = 100


Var
   // Seção de Declarações das variáveis

   cad_clientes_nome: vetor[1..maxCliente] de caractere
   cad_clientes_email: vetor[1..maxCliente] de caractere
   cad_clientes_rg: vetor[1..maxCliente] de inteiro


   cad_destino_destino: vetor[1..maxDestino] de caractere
   cad_destino_voo: vetor[1..maxDestino] de inteiro
   cad_destino_ida: vetor[1..maxDestino] de caractere
   cad_destino_volta: vetor[1..maxDestino] de caractere
   cad_destino_valor: vetor[1..maxDestino] de real
   cad_destino_duracao: vetor[1..maxDestino] de caractere

   i, opcao, rg, indice_cliente, total_clientes_cadastrados:inteiro
   voo, indice_voo, total_destino_cadastrados: inteiro



procedimento addCliente()
inicio
   escreval("Cadastro de Clientes")
   escreva("Nome: ")
   leia(cad_clientes_nome[i])
   escreva("Email: ")
   leia(cad_clientes_email[i])
   escreva("RG: ")
   leia(cad_clientes_rg[i])
   total_clientes_cadastrados <- total_clientes_cadastrados + 1

fimprocedimento

procedimento   consultaCliente()
inicio

   indice_cliente <- 0

   para i de 1 ate maxCliente faca
      se  cad_clientes_rg[i] = rg entao
         indice_cliente <- i
      fimse

   fimpara

   se indice_cliente <> 0 entao
      escreval("Nome: ",cad_clientes_nome[indice_cliente])
      escreval("E-mail: ",cad_clientes_email[indice_cliente])
      escreval("RG: ",cad_clientes_rg[indice_cliente])
      escreval()
      escreval()
   senao
      escreval("Cliente nao encontrado")
      escreval()
      escreval()
   fimse


fimprocedimento


procedimento addDestino()
inicio

   escreval("Cadastro de Destinos")
   escreva("Destino: ")
   leia(cad_destino_destino[i])
   escreva("Voo: ")
   leia(cad_destino_voo[i])
   escreva("Ida: ")
   leia(cad_destino_ida[i])
   escreva("Volta: ")
   leia(cad_destino_volta[i])
   escreva("Valor: ")
   leia(cad_destino_valor[i])
   escreva("Duracao: ")
   leia(cad_destino_duracao[i])

   total_destino_cadastrados <- total_destino_cadastrados + 1

fimprocedimento


procedimento consultarDestino()
inicio
   indice_voo <- 0
   para i de 1 ate maxDestino faca
      se  cad_destino_voo[i] = voo entao
         indice_voo <- i
      fimse

   fimpara

   se indice_voo <> 0 entao
      escreval("Destino: ",cad_destino_destino[indice_voo])
      escreval("Voo: ",cad_destino_voo[indice_voo])
      escreval("Ida: ",cad_destino_ida[indice_voo])
      escreval("Volta: ",cad_destino_volta[indice_voo])
      escreval("Valor: ",cad_destino_valor[indice_voo])
      escreval("Duracao: ",cad_destino_duracao[indice_voo])
      escreval()
      escreval()
   senao
      escreval("Voo não encontrado")
      escreval()
      escreval()
   fimse
   
fimprocedimento


Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   escreval("BEM VINDOS AS FÉRIAS E LAZER")
   escreval()
   escreval("Menu Sistema")
   escreval("1-Cadastro Cliente ")
   escreval("2-Consulta Cliente ")
   escreval("3-Cadastro Destino ")
   escreval("4-Consulta Destino ")
   escreval("5-Sair")
   escreval()
   escreval()

   leia(opcao)
   limpatela

   enquanto opcao <> 5 faca
      escolha opcao
      caso 1

         se total_clientes_cadastrados <= maxCliente-1 entao

            i<-total_clientes_cadastrados + 1
            addCliente()
            limpatela
         senao
            escreval("Limites de clientes atingidos")
            escreval("Total de clientes: ", total_clientes_cadastrados)
         fimse

      caso 2

         escreva("Digite o RG do cliente: ")
         leia(rg)
         consultaCliente()

      caso 3

         se total_destino_cadastrados <= maxDestino-1 entao

            i<-total_destino_cadastrados + 1

            addDestino()

            limpatela
         senao
            escreval("Limites de Voos atingidos")
            escreval("Total de Voos: ", total_destino_cadastrados)

         fimse

      caso 4

         escreva("Digite o numero do voo: ")
         leia(voo)
         consultarDestino()

      outrocaso
         escreval("Escolha Invalida")
         escreval()
         escreval()

      fimescolha

      escreval("BEM VINDOS AS FÉRIAS E LAZER")
      escreval()
      escreval("Menu Sistema")
      escreval("1-Cadastro Cliente ")
      escreval("2-Consulta Cliente ")
      escreval("3-Cadastro Destino ")
      escreval("4-Consulta Destino ")
      escreval("5-Sair")
      escreval()
      escreval()

      leia(opcao)
      limpatela

   fimenquanto
   escreval("Saindo do Sistema")


Fimalgoritmo
