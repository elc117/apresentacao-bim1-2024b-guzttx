module MyFunctions1 where


-- 1. Crie uma função `sumSquares :: Int -> Int -> Int` que receba dois números x e y e calcule a soma dos seus quadrados.
    sumSquares :: Int -> Int -> Int
    sumSquares x y = x^2 + y^2



-- 2. Defina a função `circleArea :: Float -> Float` que receba um raio r e calcule a área de um círculo com esse raio, dada por pi vezes o raio ao quadrado. Dica: Haskell tem a função `pi` pré-definida.
    circleArea :: Float -> Float
    circleArea r = pi * r^2          



-- 3. Defina uma função `age :: Int -> Int -> Int` que receba o ano de nascimento de uma pessoa e o ano atual, produzindo como resultado a idade (aproximada) da pessoa.
    age :: Int -> Int -> Int
    age a y = y - a



-- 4. Defina uma função `isElderly :: Int -> Bool` que receba uma idade e resulte verdadeiro caso a idade seja maior que 65 anos.
    isElderly :: Int -> Bool
    isElderly a = a > 65 




-- 5. Defina uma função `htmlItem :: String -> String` que receba uma `String` e adicione tags `<li>` e `</li>` 
--como prefixo e sufixo, respectivamente. Por exemplo, se a entrada for `"abc"`, a saída será `"<li>abc</li>"`. 
--Use o operador `++` para concatenar strings (este operador serve para concatenar quaisquer listas do mesmo tipo).
    htmlItem :: String -> String 
    htmlItem string = "<li>" ++ string ++ "</li>"



-- 6. Crie uma função `startsWithA :: String -> Bool` que receba uma string e verifique se ela inicia com o caracter `'A'`.
    startsWithA :: String -> Bool
    startsWithA string = head string == 'A'

-- Outras maneiras de fazer essa função:
-- startsWithA :: String -> Bool
-- startsWithA string(x:_) = x == 'A'

-- startsWithA :: String -> Bool
--startsWithA string = take 1 string == "A"




-- 7. Defina uma função `isVerb :: String -> Bool` que receba uma string e verifique se ela termina com o caracter `'r'`. 
--Antes desse exercício, teste no interpretador a função pré-definida `last`, que retorna o último elemento de uma lista.
-- Dica: conheça também o [list monster](http://s3.amazonaws.com/lyah/listmonster.png), do autor Miran Lipovača :-)
    isVerb :: String -> Bool
    isVerb palavra = last palavra == 'r'



-- 8. Crie uma função `isVowel :: Char -> Bool` que receba um caracter e verifique se ele é uma vogal minúscula.
    isVowel :: Char -> Bool
    isVowel caractere = caractere == 'a' || caractere == 'e' || caractere == 'i' || caractere == 'o' || caractere == 'u'

--Outra maneira:
--isVowel :: Char -> Bool
--isVowel caractere = elem caractere "aeiou"



-- 9. Crie uma função `hasEqHeads :: [Int] -> [Int] -> Bool` que verifique se 2 listas possuem o mesmo primeiro elemento.
-- Use a função `head` e o operador lógico `==` para verificar igualdade.
    hasEqHeads :: [Int] -> [Int] -> Bool 
    hasEqHeads s p = head s == head p



-- 10. Use a função `elem` para implementar uma função `isVowel2 :: Char -> Bool` que verifique se um caracter é uma vogal, tanto maiúscula como minúscula.
    isVowel2 :: Char -> Bool
    isVowel2 c = elem c "AEIOUaeiou" 
