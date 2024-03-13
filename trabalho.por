programa
{	inclua biblioteca Calendario --> c
	inclua biblioteca Matematica --> m   
     inclua biblioteca Util --> u
     inclua biblioteca Tipos --> t

//Lista de contatos com: Nome e telefone
    //1 - Cadastrar
    //2 - Buscar
    //3 - Listar
    //4 - Editar um contato

    funcao exibirMenu()
    {
        escreva("\n\nLista de alunos")
        escreva("\n1 - Cadastro de Alunos ")
        escreva("\n2 - Média da turma ")
        escreva("\n3 - Situação do Aluno")
        escreva("\n4 - Exibição de Alunos")
        escreva("\n5 - Finalizar")
        escreva("\n\nEscolha uma opcao: ")
    }

    funcao cadastrarAluno(cadeia listaDeAluno[][])
    {
        inteiro linhas = Util.numero_linhas(listaDeAluno)
        para(inteiro i=0; i<linhas; i++)
        {
            cadeia nome
            caracter turma 
            real n1, n2, n3 
            inteiro mes_nasc
            caracter parar
            escreva("Nome: ")
            leia(nome)
            escreva("Turma: ")
            leia(turma)
            escreva("Mês de nascimento: ")
            leia(mes_nasc)
            escreva("Nota1: ")
            leia(n1)
            escreva("Nota2: ")
            leia(n2)
            escreva("Nota3: ")
            leia(n3)

            listaDeAluno[i][0] = nome
            listaDeAluno[i][1] = mes_nasc
            listaDeAluno[i][0] = turma
            listaDeAluno[i][0] = n1
            listaDeAluno[i][0] = n2
            listaDeAluno[i][0] = n3

            

            escreva("Deseja parar? ")
            leia(parar)

            se(parar == 'S' ou parar == 's')
                pare
        }
    }

    funcao cadeia buscarContato(cadeia listaDeContato[][])
    {
        inteiro linhas = Util.numero_linhas(listaDeContato)
        limpa()
        cadeia nome
        escreva("Qual nome do contato: ")
        leia(nome)

        para(inteiro i=0; i<linhas; i++)
        {
            se(listaDeContato[i][0] == nome)
            {
                retorne listaDeContato[i][0] + " - " + listaDeContato[i][1]
            }
        }

        retorne "Não foi encontrado esse contato"
    }

    funcao inicio()
    {
        const inteiro LIN = 3, COL = 2
        inteiro opcao
        cadeia lista[LIN][COL]
        logico fimPrograma = falso

        enquanto(nao fimPrograma)
        {

            faca{
                exibirMenu()
                leia(opcao)
            }enquanto(opcao < 1 ou opcao > 6)
escolha(opcao)
            {
                caso 1://Cadastro
                    cadastrarAluno(lista)
                    pare
                caso 2://Buscar
                    cadeia mensagem = buscarContato(lista)
                    escreva(mensagem)
                    pare

                caso 3://Listar Todos
                    limpa()
                    para(inteiro i=0; i<LIN; i++)
                    {
                        se(lista[i][0] != "")
                        {
                            escreva("\n\nNome: " + lista[i][0])
                            escreva("\nTelefone: " + lista[i][1])
                            escreva("\n")
                        }
                    }
                    pare

                caso 4://Editar
                    limpa()
                    cadeia nomePesquisa
                    escreva("Qual nome do contato: ")
                    leia(nomePesquisa)

                    para(inteiro i=0; i<LIN; i++)
                    {
                        se(lista[i][0] == nomePesquisa)
                        {
                            cadeia nomeEdicao, telefoneEdicao
                            escreva("Nome: ")
                            leia(nomeEdicao)

                            escreva("Telefone: ")
                            leia(telefoneEdicao)

                            lista[i][0] = nomeEdicao
                            lista[i][1] = telefoneEdicao
                        }
                    }
                    pare

                caso 5:
                    fimPrograma = verdadeiro
                pare

            }
        }

    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1243; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {listaDeContato, 63, 39, 14};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */