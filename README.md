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
