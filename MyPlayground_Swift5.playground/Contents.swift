//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/**************************
 1 - Comentários
 ***************************/

//comentario de uma linha

/* comentário de
 multiplas
 linhas
 */




/*******************
 2 - VARIÁVEIS
 ***********************/

//variáveis no Swift iniciam com a palavra "var"

var strExplicita:String = "String com tipo explícito"

// Os dois pontos significam "do tipo"

// O tipo da variável pode ser inferido pelo Swift:

var strInferida = "String com tipo inferido"

//As variáveis podem ser declaradas de forma múltipla

var x=1, y=2, z=3

//Popem ser declaradas de forma múltipla com tipo explícito

var a,b,c:Double


//Podemos trocar o valor facilmente

a=1.87








/*******************
 3 - CONSTANTES
 ***********************/

//constantes no Swift iniciam com a palavra "let"

let strConstante = "Santos"

/*Caso o valor tente ser trocado irá ocorrer um erro
retire o "//" "barra barra" e você verá o erro quando tentamos
trocar o conteúdo para campinas
*/
 
//strConstante = "Campinas"








/***************************
 4 - OPCIONAIS ou OPTIONALS
 ***************************/

//Opcionais (Optionals)

/*
 Variáveis declaradas da forma que vimos na seção anterior, não podem ter um valor nulo, elas sempre precisam ser inicializadas.
 
 Para que uma variável possa receber nulo ela precisa ser declarada como opcional.
 
 Para criar um optional é utilizada a notação de ponto de interrogação:
 */


// Você não pode criar uma variável atribuir a ela o nulo, tire os comentários das linhas abaixo e veja o erro:

//var strNome: String
//strNome = nil

//Para criar variáves que aceita nulo use o símbolo de "?"
var strTextoOpcional:String? = nil;
var intIdadeOpcional:Int?
intIdadeOpcional = nil

//variáveis opconais recebem valores normalmente
intIdadeOpcional = 43

/*
 
 Porém quando o valor precisa ser utilizado, é
 necessário "abrir" (unwrap) o pacote e recuperar o valor.
 Para isso é utilizada a notação de ponto de exclamação
 
 */

var novaIdade = 2 + intIdadeOpcional!

/*
 Quando "abrimos" um optional ele pode conter o valor nulo.
 Por isso deve-se ter o cuidado de não atribuir valores que podem ser nulos
 a variáveis que não são opcionais.
 
 É muito comum tentar atribuir o valor recuperado em uma constante,
 para verificar se um optional é vazio antes de utilizá-lo.
 Essa prática é conhecida como "Optional Binding" e a seguinte
 expressão é utilizada :
 
 */

//intIdadeOpcional = nil

let valorRecuperado = intIdadeOpcional


if let valorRecuperado = intIdadeOpcional {
    print("O valor é: \(valorRecuperado)")
}else
{
    print("Erro a variável está nula, ou seja, não contém valor")
}

/* outra forma de verificar se o optional contem um valor, é testar
 se o mesmo é diferente ou igual a "nil".
*/

if intIdadeOpcional != nil{
    print("Optional contem algum valor")
}

/*
 Uma outra prática comum é criar um optional que sempre que for
 utilizado, já força a abertura automaticamente.
 Este tipo de optional deve ser utilizado com cuidado, já que
 é possivel que na abertura ele não contenha nenhum valor e cause um erro em
 tempo de execução.

 A notação nesse caso é já criar o optional com um ponto de exclamação:
 */

var intAberturaImplicitaNumero:Int!=214
var intNovoValor:Int

//Quando o mesmo for utilizado, não é necessário "abri-lo"

intNovoValor = 2 + intAberturaImplicitaNumero












/*************************
 5 - TIPOS PRINCIPAIS
**************************/

//Os principais tipos de variáveis e constantes:

var intNumero:Int = -100
var intNumeroPositivo:UInt = 100 //inteiro sem sinal

var fltNumero:Float = 5.5
var dblNumero:Double = 5.5

var boolAtivo:Bool = true
var boolPlantao:Bool = false

var chrCaracter:Character = "F"
var strTexto:String = "Bom dia"

//Para criar uma variável que pode receber qualquer tipo

//utiliza-se 'AnyObject' - Swift 2:

//var qualquerTipo:AnyObject
//qualquerTipo = "Pode ser um texto"
//qualquerTipo = 1 // pode ser um número inteiro
//qualquerTipo = 1.87 //pode ser um float

//utiliza-se 'Any' - Swift 3:

var qualquerTipo:Any
qualquerTipo = "Pode ser um texto"
qualquerTipo = 1 // pode ser um número inteiro
qualquerTipo = 1.87 //pode ser um float

// MIn e Max de alguns tipos de dados
let minValue = UInt8.min
let maxValue = UInt8.max

let minValue2 = Int.min
let maxValue2 = Int.max

let minValue3 = UInt.min
let maxValue3 = UInt.max



    
 
/**************************
 6 - Print
 ***************************/

print("Boa Sorte")

//Para efetuar um "print" do valor de uma varíavel ou constante, utilize:
print(strTexto) // print do valor da variável ou constante


//para efetuar um print de uma variável juntamente com um texto, utilize:
print("O valor da variável é : \(strTexto)")
print("A idade da pessoa é : \(novaIdade) anos")








/**************************
 7 - Strings e Caracteres
 ***************************/

//Para criar uma string vazia, as duas expressões abaixo são equivalentes:

var strNome = ""
var strSobrenome = String()

//para testar se uma string está vazia, é utilizado isEmpty
if strNome.isEmpty  {
    print("A variável nome está vazia")
}







/**************************
 8 - Concatenação
 ***************************/

//A concatenação de string funciona com os operadores
let nome = "Agesandro"
let sobrenome = "Scarpioni"
var nomeCompleto = nome + sobrenome

//Ou ainda:
var nomes = "Maria"
nomes += " e Ana"
nomes += " - Sexo:"
print(nomes)







/**************************
 9 - Caracteres
 ***************************/

//Caracteres podem ser criados com:
let genero:Character = "F"

//Depois concatenados com Strings, através do método "append"
nomes.append(genero)






/**************************
10 - Interpolação
 ***************************/

/* Interpolação é uma maneira de construir Strings
misturando valores de constantes, variáveis,
literais e expressões:
*/

let numeroA = 3;
let mensagem = "\(numeroA) multiplicado por 2 é \(numeroA * 2)"







/**************************
 11 - Contagem de Caracteres
 ***************************/

let texto = "Bom dia"
//Para saber quantos caracteres uma String possui, não utilize mais o comando “countElements” do swift 1
//let totalCaracteres = countElements(texto)//não funciona mais ********************************************************** Swift 1x
//let totalCaracteres = count(texto)//não funciona mais também ********************************************************** Swift 2
//let totalCaracteres = texto.characters.count ********************************************************** Swift 2x

let totalCaracteres = texto.count
let totalCaracteres2 = texto.endIndex
let totalCaracteres3 = (texto as NSString).length //fazendo casting leia 3 tópicos abaixo sobre conversões e casting
print("total é = \(totalCaracteres)")







/**************************
12 - Comparação de String
 ***************************/

var texto3 = "Maria foi trabalhar"
var texto4 = "Maria foi trabalhar"
if texto3 == texto4{
    print("as string são iguais")
}





/**************************
 13 - Prefixo e sufixo
 ***************************/

/* As funções “hasPrefix” e “hasSufix” permitem  verificar se
 uma string possui determinado prefixo ou sufixo
 */

var texto5 = "Bom dia Brasil"

if texto5.hasPrefix("Bom"){
    print("Esta frase inicia o texto com Bom")
}

if texto5.hasSuffix("sil"){
    print("Esta frase termina com o texto sil")
}






/**************************
 14 - Conversões e Casting
 ***************************/

//inteiro para decimal

var n1=7
var n2 = Double(n1) + 0.343

//decimal para inteiro
var n3 = Int(10.75)

//Numérico para String usando interpolação
var minhaString = "\(n3)"
//Numérico para String
var minhaString2 = String(n2)

//string para inteiro
let umNumero = "800"
// esta conversão era para Swift 1.X        ************************************************** Swift 1x
//let valorConvertido = umNumero.toInt()
// esta é a nova conversão para Swift 2.x   ************************************************* Swift 2x
let valorConvertido = Int(umNumero)


//NSString é uma classe do framework Foundation do SDK do iOS. Na linguagem Objective-C é a classe utilizada para representar strings.
//É possível efetuar um casting entre strings do Swift e NSStrings.
//O operador de casting em swift é o “as”, conforme expressão abaixo

let outroTexto: NSString = String("abc") as NSString

//As strings em Swift até a presente versão não possuem uma maneira direta realizar conversões para decimais.
//Já a classe NSString possui métodos diretos de conversão.
//Por isso podemos realizar o casting e depois utilizar os métodos “floatValue” e “doubleValue” da classe NSString, para efetuar a conversão

//let nota = "7.5"
//let paraFloat = (nota as NSString).floatValue
//let paraDouble = (nota as NSString).doubleValue
//Obs as três linhas anteriores continuam funcionando

// Swift 2x já é possível fazer conversão de String para decimal
let nota = "7.5"
let paraFloat = Float(nota)
let paraDouble = Double(nota)











/**************************
 15 - Operadores
 ***************************/

//aritmético
// + - * / %
var valor1 = 9
var valor2 = 2

let r1 = valor1+valor2
let r2 = valor1-valor2
let r3 = valor1*valor2
let r4 = valor1/valor2
let r5 = valor1%valor2

//Compostos com atribuição
// += -= *= /=
var t = 1
t += 2
t *= 3
t /= 3
t -= 1

//Operador relacional
// == != > < >= <=

//Lógicos
// ! && ||








/**************************
 16 - Estrutura de Seleção
 ***************************/

//simples
var sx = "F"
if sx == "F" {
    print("Bom dia Sra.")
}

//composto
if sx == "M" {
    print("Bom dia Sra.")
}else{
    print("Bom dia Sr.")
}

//encadeado
sx="X"
if sx == "F" {
    print("Bom dia Sra.")
}else if sx == "M"{
    print("Bom dia Sr.")
}else {
    print("Digite apenas F ou M para o campo sexo")
}

//Múltipla escolha
sx="K"
switch sx{
case "F":
    print("Bom dia Sra.")
case "M":
    print("Bom dia Sr.")
default:
    print("Digitação incorreta use apenas F ou M ")
}


//Múltipla escolha com intervalo
var temperatura:Float=37.2
switch temperatura{
case 34...37:
    print("Sem febre")
case (37.1)...(37.7):
    print("Febril")
case (37.8)...(41):
    print("Com febre")
default:
    print("Faça uma nova medição da temperatura")
}








/**************************
 17 - Array
 ***************************/

//Inicialização
//A notação de criação de um array é: “[tipo]”,

var listaCarros: [String] = ["GM", "FIAT", "VW"]
var listaCarrosTipoInferido = ["GM", "FIAT", "VW"]

//Arrays vazios
//Para se criar arrays vazios, basta iniciar com colchetes sem elementos:
//***********************************em Swift 2
//var arrayVazio = [] //não use mais
//***********************************em Swift 3
//Vazio agora só tipado
var arrayTipadoVazioString:[String] = []
//ou
var emptyArray = [String]()
print(emptyArray)

var arrayTipadoVazio: [Int] = []
arrayTipadoVazio.append(100) //Adicionado um item ao array
arrayTipadoVazio = [] // O array foi esvaziado e continua Int

//checagem se array está vazio
if listaCarros.isEmpty {
    print("A lista esta vazia.")
} else {
    print("A lista não esta vazia.")
}


//Trabalhando com Itens
//Para recuperar um item específico do array, acesse através do índice:
var primeiroItem = listaCarros[0]

//O número de itens de um array é obtido pelo método “count”:
print("\(listaCarros.count) é a quantidade de itens na lista.")


//Adição de itens ao fim do array
//Para adicionar itens no fim do array, utilize uma das formas:
listaCarros.append("Honda")
listaCarros.append("Toyota")
listaCarros += ["Hyundai"]
listaCarros += ["Ferrari", "Renault", "Land Rover"]


//Adição de itens através de índices e ranges
//Para adicionar itens em locais específicos,
//utilize índices e ranges:
//Alterar itens
listaCarros[4...7] = ["Audi", "BMW"]
listaCarros.append("Mercedes")
listaCarros[1] = "Subaru"
print(listaCarros)

//Adicionar itens
//****************************************Swift 2
//listaCarros.insert("Ferrari", atIndex: 0)//não use mais
//****************************************Swift 3
listaCarros.insert("Ferrari", at: 0)

//Remover itens
//Para remover itens do array, utilize:
//****************************************Swift 2
//listaCarros.removeAtIndex(0)//não use mais
//****************************************Swift 3
listaCarros.remove(at: 0)
print(listaCarros)
//****************************************Swift 2
//listaCarros.removeRange(2...4)//não use mais
//****************************************Swift 3
listaCarros.removeSubrange(2...4)
print(listaCarros)

listaCarros.removeLast()
print(listaCarros)

//Iteração
//Para iterar sobre os itens do array, utilize:
for item in listaCarros {
    print(item)
}









/**************************
 18 - Dicionários
 ***************************/

//Inicialização
//Dicionários são coleções de itens do tipo chave-valor. A notação para utilizá-los em Swift é [tipoChave:tipoValor]:

var meuDicionario: [String: String] = ["nome": "José Silva","cidade": "São Paulo", "estado": "SP"]
var meuDicionario2 = ["nome": "Carla Maria","cidade": "Florianópolis", "estado": "SC"]
print(meuDicionario)

//Dicionários vazios
//Para iniciar dicionários vazios, utilize uma das formas:
//****************************************Swift 2
//var meuDicionarioVazio = [:] //não use mais
//****************************************Swift 3
//Agora só tipado
var meuDicionarioVazioTipado = [Int: String]()
meuDicionarioVazioTipado[16] = "sixteen" //agora contém 1 par de chave e valor
print(meuDicionarioVazioTipado)
meuDicionarioVazioTipado = [:] //agora o dicionário foi esvaziado continuando com o tipo [int: String]


//Para testar se um dicionário está vazio, utilize isEmpty:
if meuDicionario.isEmpty {
    print("Dicionário esta vazio.")
} else {
    print("Dicionário não esta vazio.")
}


//Para verificar se uma chave está presente, utilize o “if let” (Optional Binding):
if let nomearmazenado = meuDicionario["nome"] {
    print("O nome é  \(nomearmazenado).")
} else {
    print("Esta chave não está no dicionário")
}

//Para verificar a quantidade de itens de um dicionário, utilize “count”:
print("O dicionario contém \(meuDicionario.count) items.")


//Inserindo ou atualizando itens
//Para atualizar um valor em uma chave
meuDicionario["nome"] = "Agesandro"
meuDicionario.updateValue("Sorocaba", forKey: "cidade")
print(meuDicionario)

//Iteração em um dicionário pode ser feita recuperando a tupla (chave, valor):
for (chave, valor) in meuDicionario {
    print("\(chave): \(valor)")
}

//Também é possível iterar somente as chaves:
for chave in meuDicionario.keys {
    print("Nome da chave: \(chave)")
}

//Ou somente os valores:
for valor  in meuDicionario.values {
    print("Valor armazenado : \(valor)")
}

//Remoção de item
//A remoção de itens pode ser feita atribuindo “nil”


//****************************************Swift 2
//meuDicionario.removeValueForKey("cidade")//não existe mais
//****************************************Swift 3
meuDicionario["cidade"] = nil

//veja na iteração abaixo que só sobrou o nome e o estado
for (chave, valor) in meuDicionario {
    print("\(chave): \(valor)")
}
print(meuDicionario)










/***************************************************
 19 - Estrutura de Repetição com variável de controle
 ***************************************************/

//FOR padrão
//Não use mais assim, use o outro modelo abaixo não se deve inclementar com ++x

//****************************************Swift 2
//for var x = 0; x < 3; ++x {
//    print("Executando o passo : \(x)")
//}

//**************************************** Swift 3
for x in 0 ..< 3 {
    print("Executando o passo : \(x)")
}

//FOR-IN com intervalo
for x in 1...5 {
    print("\(x) multiplicado por 2 é \(x * 2)")
}

//FOR-IN com array
let cidades = ["Santos", "Sorocaba", "Campinas", "Jundiaí", "Ourinhos"]
for cidade in cidades{
    print("A cidade armazenada no array é \(cidade)")
}

//FOR-IN com dicionário
let meudici = ["BA": "BAHIA", "SP": "SÃO PAULO", "RJ": "RIO DE JANEIRO", "SC":"SANTA CATARINA"]
for (sig, est) in meudici {
    print("A sigla \(sig) é do estado \(est) !")
}






/************************************************************
 20 - Estrutura de repetição com teste condicional no início
 ************************************************************/

var contador = 0
while contador < 3 {
    print("Contador é \(contador)")
    
    //contador++
    //Nas novas versões de swift você deve incrementar com =+1
    contador+=1
}

//Exemplo 2
var n = 2
while n < 5 {
    n *= 2
}
print(n)



/**********************************************************
 21 - Estrutura de repetição com teste condicional no fim
 ***********************************************************/

// Nesse tipo de estrutura de repetição
// pelo menos uma vez será executado o loop

contador = 0
//do {   /era assim no swift 1.x
repeat {
    print("Esse é loop \(contador)")
    //contador++
    //Nas novas versões de swift você deve incrementar com =+1
    contador+=1
} while contador < 3

//Exemplo 2
var m = 2
repeat {
    m *= 2
} while m < 5
print(m)






/**************************
 22 - Enumeradores
 ***************************/

//Enumeradores
//Enumeradores em Swift possuem a sintaxe:

enum diaSemana {
    case segunda
    case terça
    case quarta
    case quinta
    case sexta
    case sabado
    case domingo
    
}

// para usar o enum fazemos
var dia = diaSemana.sexta
//dia = .sabado //Após uma variável ser inferida do tipo do enum, basta utilizar “.case” para modificá-la:
print (dia)

switch dia{
case .segunda:
    print("Dia de trabalho duro, primeiro dia da semana ")
case .terça:
    print("Dia de trabalho, a semana já começou")
case .quarta:
    print("Já estamos no meio da semana")
case .quinta:
    print("Falta pouco para o fim de semana")
case .sexta:
    print("Sextou")
case .sabado:
    print("Chegou o primeiro dia do fim de semana")
case .domingo:
    print("Domingão dia de almoço com a família")
}


//Enumeradores em Swift possuem a sintaxe:

enum diaSem: String {
    case seg = "segunda-feira"
    case ter = "terça-feira"
    case qua = "quarta-feira"
    case qui = "quinta-feira"
    case sex = "sexta-feira"
    case sab = "sabado"
    case dom = "domingo"
}

// para usar o enum fazemos
var d = diaSem.dom
print (d)
switch d {
case .seg:
    print("Dia de trabalho duro, primeiro dia da semana ")
case .ter:
    print("Dia de trabalho, a semana já começou")
case .qua:
    print("Já estamos no meio da semana")
case .qui:
    print("Falta pouco para o fim de semana")
case .sex:
    print("Sextou")
case .sab:
    print("Chegou o primeiro dia do fim de semana")
case .dom:
    print("Domingão dia de almoço com a família \(d)")
}







/**************************
23 - Sub-rotinas e Funções
 ***************************/

//sub rotina sem parâmtro
func darBomdDia(){
    print ("Bom dia")
}

//function sem parâmetro que retorna um inteiro
func retornarUmCalculo()->Int{
    return 5+4
}

//chamando as duas funções criadas
var numero:Int = retornarUmCalculo()
darBomdDia()


//function com um parâmetro e retorno de string
func verificarMaiorMenor(valor:Int) -> String{
    if valor < 18 {
        return "Menor"
    }else{
        return "Maior"
    }
}

//chamando a função
//****************************************Swift 2
//verificarMaiorMenor(22) //Não funciona mais

//chamando a função
//****************************************Swift 3
verificarMaiorMenor(valor: 22)

//funções com mais de um parâmetro
func calcularIMC(peso:Float,altura:Float) -> Float{
    return peso / (altura * altura)
}

//print("O imc é :\(calcularIMC(116, 1.87))") //Não use assim ************************************************** Swift 1x

// print("O imc é :\(calcularIMC(116, altura: 1.87))") // não use mais assim *********************************** Swift 2x

print("O imc é :\(calcularIMC(peso: 116, altura: 1.87))") // Use assim ******************************************** Swift 3x


func calcularIMC2(peso:Float,altura:Float,nome:String) -> String{
    let imc = peso / (altura * altura)
    let formatado = String(format: "%0.2f", imc)
    return "O imc de " + nome + " é " + "\(imc) " + ", formatado é " + formatado
}


//**************************************** Swift 1x
//print("Resultado :" + calcularIMC2(116, 1.87, "maria")) //não use mais
//**************************************** Swift 2x
//print("Resultado :" + calcularIMC2(116, altura: 1.87,nome: "maria")) //não use mais
//**************************************** Swift 3
print("Resultado :" + calcularIMC2(peso: 116, altura: 1.87,nome: "maria"))



//funções com mais de um retorno
func calcularIMC_3(peso:Float,altura:Float) -> (valorImc:Float, situacao:String){
    let vimc = peso / (altura * altura)
    var sit:String
    if vimc < 25 {
        sit = " Normal"
    }else{
        sit = " Sobrepeso"
    }
    return (vimc, sit)
}

//**************************************** Swift 1x
//print("Resultado :" + calcularIMC2(85, 1.87)) //não use mais
//**************************************** Swift 2x
//print("Resultado :" + calcularIMC2(116, altura: 1.87,nome: "maria")) //não use mais
//**************************************** Swift 3x
let resultadoImc = calcularIMC_3(peso: 85, altura: 1.87)
print("O IMC: \(resultadoImc.valorImc) tem situação: \(resultadoImc.situacao)" )




//Funções com nome de parâmetro externo
//Tem o objetivo de deixar claro o propósito dos parâmetros

//Possuem a forma:
func idadePessoa(nome a:String, idade b:Int) -> String {
    return"\(a) tem \(b) anos"
}

let testando = idadePessoa(nome: "Ana", idade: 23)
print(testando)










