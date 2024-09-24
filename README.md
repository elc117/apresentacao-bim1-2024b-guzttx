# Resolução da primeira lista em Haskell
_by Gustavo Teixeira_
## 1- Instalando Haskell localmente

Antes de apresentar a resolução dos exercícios, vou falar um pouco do processo de instalação e setup do ambiente de haskell pelo qual eu passei em minha máquina.

Instalar o haskell no computador é bem simples, basta seguir estes passos:

- Abrir o Powershell;
- Executar este comando:
```sh 
Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { & ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -Interactive -DisableCurl } catch { Write-Error $_ }
```
- Esperar a instalação ser concluída(demora um pouco);
- Instalar o Hunit para automatizar os testes, digitando no terminal:
```sh
cabal update && cabal install --lib HUnit
```

Depois disso, já podemos utilizar o haskell em nossa máquina, bem como o ghci. Entretanto, para quem usa o VScode assim como eu, também vale a pena configurar o ambiente para evitar bugs. Para isso devemos:

- Instalar o Syntax Highlighter para Haskell(extensão do VScode);
- Setar o tab para "4 espaços", pois o \t não funciona direito na linguagem e pode dar problemas.
> Para setar o tab como 4 espaços, basta ir ao canto inferior direito da tela e procurar por "Select Indentation".
> Após isso, selecionar a opção "Indent using spaces" e selecionar o número de espaços que serão dados ao clicar "tab".

Pronto, agora é "só" programar.

## 2- Atividades da primeira parte da lista (MyFunctions1)

Agora, darei uma breve comentada sobre como foi implementar essas primeiras funções em haskell.

#### Funções de 1 a 4 

AS funções de 1 a 4 eram simples e foram bem tranquilas de implementar. Tratavam-se de expressões matemáticas simples e bem diretas.

1. Crie uma função `sumSquares :: Int -> Int -> Int` que receba dois números x e y e calcule a soma dos seus quadrados
```sh
    sumSquares :: Int -> Int -> Int
    sumSquares x y = x^2 + y^2
```
2. Defina a função `circleArea :: Float -> Float` que receba um raio r e calcule a área de um círculo com esse raio, dada por pi vezes o raio ao quadrado. Dica: Haskell tem a função `pi` pré-definida.
```sh
    circleArea :: Float -> Float
    circleArea r = pi * r^2
```
Na função acima, gostaria de destacar o uso do pi, que em haskell é facilitado pois já é uma função definida da biblioteca, simplificando o trabalho do programador.

3. Defina uma função `age :: Int -> Int -> Int` que receba o ano de nascimento de uma pessoa e o ano atual, produzindo como resultado a idade (aproximada) da pessoa.
```sh
    age :: Int -> Int -> Int
    age a y = y - a
```
4. Defina uma função `isElderly :: Int -> Bool` que receba uma idade e resulte verdadeiro caso a idade seja maior que 65 anos.
```sh
    isElderly :: Int -> Bool
    isElderly a = a > 65
```

A quinta função foi a primeira que eu tive que dar uma pesquisada, pois mesmo sendo simples, eu ainda não tinha trabalhado com strings em haskell. Mas se tratando de uma função de concatenação, foi tranquilo.

5. Defina uma função `htmlItem :: String -> String` que receba uma `String` e adicione tags `<li>` e `</li>`como prefixo e sufixo, respectivamente. Por exemplo, se a entrada for `"abc"`, a saída será `"<li>abc</li>"`.Use o operador `++` para concatenar strings (este operador serve para concatenar quaisquer listas do mesmo tipo).
```sh
    htmlItem :: String -> String 
    htmlItem string = "<li>" ++ string ++ "</li>"
```    

6. Crie uma função `startsWithA :: String -> Bool` que receba uma string e verifique se ela inicia com o caracter `'A'`.
```sh
    startsWithA :: String -> Bool
    startsWithA string = take 1 string == "A"
```
A função 6, foi o mesmo caso da 5, tive que pesquisar por nunca ter manipulado strings na linguagem e da maneira que fiz acima, encontrei erros inicialmente, pois estava utiizando "take 1 string == 'A'", e isso gerava um erro pois a função take retorna uma string e não um caractere, fazendo com que seja uma comparação inválida. Após isso, encontrei duas outras formas de fazer a função: 

```sh
    startsWithA :: String -> Bool
    startsWithA string(x:_) = x == 'A' -- Usando pattern matching
    
    startsWithA :: String -> Bool
    startsWithA s = head s == 'A'
```
7. Defina uma função `isVerb :: String -> Bool` que receba uma string e verifique se ela termina com o caracter `'r'`. Antes desse exercício, teste no interpretador a função pré-definida `last`, que retorna o último elemento de uma lista.
```sh
    isVerb :: String -> Bool
    isVerb palavra = last palavra == 'r'
```
8. Crie uma função `isVowel :: Char -> Bool` que receba um caracter e verifique se ele é uma vogal minúscula.
```sh
    isVowel :: Char -> Bool
    isVowel caractere = caractere == 'a' || caractere == 'e' || caractere == 'i' || caractere == 'o' || caractere == 'u'
```
A função 8 está correta, no entanto, há uma maneira mais simples de implementá-la usando a função "elem"
```sh    
    isVowel :: Char -> Bool
    isVowel caractere = elem caractere "aeiou"
```
9. Crie uma função `hasEqHeads :: [Int] -> [Int] -> Bool` que verifique se 2 listas possuem o mesmo primeiro elemento. Use a função `head` e o operador lógico `==` para verificar igualdade.
```sh
    hasEqHeads :: [Int] -> [Int] -> Bool
    hasEqHeads s p = head s == head p   
```
A função 9, assim como a 7 e a 6 implementada com head, funcionam, no entanto podem apresentar bugs pois não há tratamento de caso com listas vazias, então a implementação correta seria da seguinte maneira:
```sh
    hasEqHeads :: [Int] -> [Int] -> Bool 
    hasEqHeads s p = not (null s) && not (null p) && head s == head p
```

10. Use a função `elem` para implementar uma função `isVowel2 :: Char -> Bool` que verifique se um caracter é uma vogal, tanto maiúscula como minúscula.
```sh
    isVowel2 :: Char -> Bool
    isVowel2 c = elem c "AEIOUaeiou"
```

_Fim_

## Referências Bibliográficas
https://www.haskell.org/ghcup/install/
https://liascript.github.io/course/?https://raw.githubusercontent.com/AndreaInfUFSM/elc117-2024b/main/classes/04/README.md#32
