Program Manual_Pascal;
uses dos,crt;
var Opcao :char;
   Procedure Variaveis_e_Operacoes;
      Procedure Variaveis;
      begin
           clrscr;
           writeln ('MANUAL PASCAL -> VARIAVEIS E OPERACOES -> VARIAVEIS');
           writeln;writeln;
           writeln ('--Variaveis Numericas--');
           writeln ('integer - Numeros inteiros entre -32768 e 32767.');
           writeln ('real    - Numeros reais de 11 algoritimos significativos.');
           writeln ('byte    - Numeros inteiros entre 0 e 255.');
           writeln;
           writeln ('--Variaveis Alfanumericas--');
           writeln ('string  - Caracteres alfanumericos entre aspas simples.');
           writeln ('char    - String de apenas um caractere entre aspas simples');
           writeln;
           writeln ('--Variaveis Logicas--');
           writeln ('Boolean - Assume apenas valores booleanos, que sao:');
           writeln ('          true (Verdadeiro) ou False (Falso).');
           repeat Opcao := readkey; until (Opcao='0');
           Opcao:='s';
      end;
      Procedure Operadores;
      begin
           clrscr;
           writeln ('MANUAL PASCAL -> VARIAVEIS E OPERACOES -> OPERADORES');
           writeln;writeln;
           writeln ('--Operadores Aritimeticos--');
           writeln (' *  - Multiplicacao');
           writeln (' /  - Divisao');
           writeln (' +  - Soma');
           writeln (' -  - Subtracao');
           writeln;
           writeln ('--Operadores Relacionais--');
           writeln (' <  - Menor que');
           writeln (' >  - Maior que');
           writeln (' =  - Igual a');
           writeln (' <> - Diferente de');
           writeln (' <= - Menor ou igual a');
           writeln (' >= - Maior ou igual a');
           writeln;
           writeln ('--Operadores Logicos--');
           writeln ('not - Negacao');
           writeln ('and - Inclusao');
           writeln ('or  - Disjuncao');
           writeln ('xor - Disjuncao exclusiva');
           repeat Opcao:=readkey; until (Opcao='0');
           Opcao:='s';
      end;
      Procedure Declarando_Variavel;
         Procedure Declaracao_Simples;
         begin
              clrscr;
              writeln ('...-> VARIAVEIS E OPERACOES -> DECLARANDO UMA VARIAVEL -> DECLARACAO SIMPLES');
              writeln;writeln;
              writeln ('No Pascal, todas variaveis devem ser declaradas antes do inicio do programa');
              writeln ('Se nao atribuidas, o compilador vai acusar um erro, e entao nao funcionar');
              writeln;
              writeln ('Declarando uma variavel, voce esta pedindo ao computador um espaco na memoria,');
              writeln ('e assim podera guardar valores a este espaco.');
              writeln;
              writeln ('Exemplo:');
              writeln;
              writeln ('Progam Exemplo;');
              writeln ('Var');
              writeln ('  Variavel :integer;');
              writeln ('Begin');
              writeln ('<Comandos>');
              writeln ('end.');
              repeat Opcao := readkey; until (Opcao='0');
              Opcao:='s';
         end;
         procedure Declaracao_Limitada;
         begin
              clrscr;
              writeln ('...-> VARIAVEIS E OPERACOES -> DECLARANDO UMA VARIAVEL -> DECLARACAO LIMITADA');
              writeln;writeln;
              writeln ('Ao declarar uma variavel do tipo string, podemos limitar um tamanho a ela,');
              writeln ('ja que uma string ocupa 16 bits por caractere.');
              writeln ('Delimitando um limite a string, o espaco na memoria sera referente ao');
              writeln ('tamando da variavel, se tentar colocar um texto maior que seu tamanho,');
              writeln ('o escedente sera ignorado.');
              writeln;
              writeln ('Para limitar uma string, basta colocar um valor dentro de "[]"');
              writeln;
              writeln ('Exemplo:');
              writeln;
              writeln ('Progam Exemplo;');
              writeln ('Var');
              writeln ('  Variavel :string[5];');
              writeln ('Begin');
              writeln ('<Comandos>');
              writeln ('end.');
              repeat Opcao := readkey; until (Opcao='0');
              Opcao:='s';
         end;
         procedure Declaracao_Composta;
         begin
              clrscr;
              writeln ('...-> VARIAVEIS E OPERACOES -> DECLARANDO UMA VARIAVEL -> DECLARACAO COMPOSTA');
              writeln;writeln;
              writeln ('Quando usar varias variaveis do mesmo tipo, podemos declara-las');
              writeln ('na mesma linha.');
              writeln;
              writeln ('Basta separalas com "," (virgula).');
              writeln;
              writeln ('Exemplo:');
              writeln;
              writeln ('Progam Exemplo;');
              writeln ('Var');
              writeln ('  Var1,Var2,Var3 :integer;');
              writeln ('Begin');
              writeln ('<Comandos>');
              writeln ('end.');
              repeat Opcao := readkey; until (Opcao='0');
              Opcao:='s';
         end;
      begin
           repeat
              clrscr;
              writeln ('MANUAL PASCAL -> VARIAVEIS E OPERACOES -> DECLARANDO UMA VARIAVEL');
              writeln;writeln;
              writeln ('-1- Declaracao Simples');
              writeln ('-2- Declaracao Limitada');
              writeln ('-3- Declaracao Composta');
              repeat Opcao := readkey; until (Opcao='1')or(Opcao='2')or(Opcao='3')or(Opcao='0');
              case Opcao of
                 '1':Declaracao_Simples;
                 '2':Declaracao_Limitada;
                 '3':Declaracao_Composta;
              end;
           until (Opcao='0');
           Opcao:='s';
      end;
      Procedure Atribuindo_Valores;
      begin
           clrscr;
           writeln ('MANUAL PASCAL -> VARIAVEIS E OPERACOES -> ATRIBUINDO VALORES');
           writeln;writeln;
           writeln ('Existem dois modos de se atribuir valor a uma variavel.');
           writeln ('Um deles, e atraves do proprio usuario, mas veremos mais a frente.');
           writeln ('E o outro, e dentro do proprio programa.');
           writeln;
           writeln ('Para atribuir um valor dentro do proprio programa usamos ":="');
           writeln ('Imagine que ":=" e uma flecha "<-", o valor da direita e atribuido');
           writeln ('a variavel da esquerda.');
           writeln;
           writeln ('Exemplo:');
           writeln;
           writeln ('Variavel := 7;');
           writeln ('ou');
           writeln ('Variavel1 := Variavel2;');
           writeln ('ou');
           writeln ('Variavel1 := Variavel2 + 7;');
           repeat Opcao:=readkey; until (Opcao='0');
           Opcao:='s';
      end;
   begin
        repeat
           clrscr;
           writeln ('MANUAL PASCAL -> VARIAVEIS E OPERACOES');
           writeln;writeln;
           writeln ('-1- Variaveis');
           writeln ('-2- Operadores');
           writeln ('-3- Declarando uma variavel');
           writeln ('-4- Atribuindo valores');
           repeat Opcao := readkey; until (Opcao='1')or(Opcao='2')or(Opcao='3')or(Opcao='4')or(Opcao='0');
           case Opcao of
              '1':Variaveis;
              '2':Operadores;
              '3':Declarando_Variavel;
              '4':Atribuindo_Valores;
           end;
        until (Opcao='0');
        Opcao:='s';
   end;
   Procedure Estruturando_Algoritimos;
      Procedure Inicio_Fim_de_Programas;
      begin
           clrscr;
           writeln ('MANUAL PASCAL -> ESTRUTURANDO ALGORITIMOS -> INICIO E FIM DE PROGRAMAS');
           writeln;writeln;
           writeln ('Todos programas dever ter um "Begin" e "end", que e o espaco onde os comandos');
           writeln ('serao executados.');
           writeln;
           writeln ('Exemplo');
           writeln;
           write   ('Program <Nome>');writeln (' - - Aqui podemos colocar o nome do programa.');
           write   ('.');writeln ('  - - - - - - - - Neste espaco declaramos as bibliotecas.');
           writeln ('Var');
           write   ('.');writeln ('  - - - - - - - - Declaracao de variaveis.');
           write   ('Begin');writeln ('  - - - - - - Inicio do programa principal.');
           write   ('.');writeln ('  - - - - - - - - Area dos comandos');
           writeln ('.');
           write   ('end.');writeln (' - - - - - - - Fim do programa principal.');
           repeat Opcao:=readkey; until (Opcao='0');
           Opcao:='s';
      end;
      Procedure Ponto_e_Virgula;
      begin
           clrscr;
           writeln ('MANUAL PASCAL -> ESTRUTURANDO ALGORITIMOS -> PONTO E VIRGULA');
           writeln;writeln;
           writeln ('Todos os comando em pascal devem finalizar com um ";"');
           writeln ('podemos fazer um mesmo comando em varias linhas,');
           writeln ('desde que nao finalize com um ";".');
           writeln;
           writeln ('Ha algumas particularidades, mas veremos isto mais a frente.');
           repeat Opcao:=readkey; until (Opcao='0');
           Opcao:='s';
      end;
      Procedure Comentarios;
      begin
           clrscr;
           writeln ('MANUAL PASCAL -> ESTRUTURANDO ALGORITIMOS -> COMENTARIOS');
           writeln;writeln;
           writeln ('Comentarios servem para nos guiar (programador), no entendimento');
           writeln ('do programa.');
           writeln;
           writeln ('Sao linhas cujo programa nao ira executa-los.');
           writeln;
           writeln ('{...} ou (*...*)');
           writeln ('Tudo que estiver depois do primeiro simbolo, e antes do segundo, sera');
           writeln ('ignorado pelo programa, e nao sera executado.');
           writeln;
           writeln ('//');
           writeln ('Tudo que estiver na linha antecedido pelo simbolo, sera ignorado.');
           repeat Opcao:=readkey; until (Opcao='0');
           Opcao:='s';
      end;
   begin
        repeat
           clrscr;
           writeln ('MANUAL PASCAL -> ESTRUTURANDO ALGORITIMOS');
           writeln;writeln;
           writeln ('-1- Inicio e Fim de Programas');
           writeln ('-2- Ponto e Virgula');
           writeln ('-3- Comentarios');
           repeat Opcao:=readkey; until (Opcao='1')or(Opcao='2')or(Opcao='3')or(Opcao='0');
           case Opcao of
              '1':Inicio_Fim_de_Programas;
              '2':Ponto_e_Virgula;
              '3':Comentarios;
           end;
        until (Opcao='0');
        Opcao:='s';
   end;
   Procedure Manipulando_Valores;
      Procedure Funcoes_Matematicas;
      begin
           clrscr;
           writeln ('MUNUAL PASCAL -> MANIPULANDO VALORES -> FUNCOES MATEMATICAS');
           writeln;writeln;
           writeln ('Algumas funcoes especiais matematicas.');
           writeln;
           writeln ('abs(x)- - - Retorna o valor absoluto de x.');
           writeln ('arctan(x) - Retorna o arco tangente de x em radianos.');
           writeln ('cos(x)- - - Retorna o cosseno de x (x deve estar em radianos).');
           writeln ('exp(x)- - - Retorna o valor de e elevado a x.');
           writeln ('frac(x) - - Retorna a parte decimal (fracionada) de x.');
           writeln ('int(x)- - - Retorna o valor inteiro de x.');
           writeln ('ln(x) - - - Retorna o logaritimo natural ou neperiano de x.');
           writeln ('sin(x)- - - Retorna o seno de x (x em radianos).');
           writeln ('sqr(x)- - - Retorna o quadrado de x.');
           writeln ('sqrt(x) - - Retorna a raiz quadrada de x.');
           repeat Opcao:=readkey; until (Opcao='0');
           Opcao:='s';
      end;
      Procedure Potenciacao;
      begin
           clrscr;
           writeln ('MANUAL PASCAL -> MANIPULANDO VALORES -> POTENCIACAO');
           writeln;writeln;
           writeln ('A potenciacao A=BC (A e igual a B elevado a C) obtem-se da seguinte forma:');
           writeln;
           writeln ('A:=exp(C*ln(B))');
           repeat Opcao:=readkey; until (Opcao='0');
           Opcao:='s';
      end;
      Procedure Manipulando_String;
      begin
           clrscr;
           writeln ('MANUAL PASCAL -> MANUPULANDO VALORES -> MANIPULANDO STRING');
           writeln;writeln;
           writeln ('Concat(x,y,...) -- Concatena as Strings X,Y,...');
           writeln ('Copy(x,y,z)     -- Extrai Z caracteres a partir da posicao Y da string X.');
           writeln ('Lenght(x)       -- Retorna o comprimento da string X.');
           writeln ('Pos(x,y)        -- Retorna a posicao da string x dentro da string y. Caso');
           writeln ('                   nao encontre retorna 0.');
           writeln ('Delete(a,b,c)   -- Remove C caracteres a partir da posicao B da string A.');
           writeln ('Insert(a,b,c)   -- Insere a string A na string B, a partir da posicao C.');
           writeln ('Val(x,y,z)      -- Converte a string X em numero e atribui a variavel Y.');
           writeln ('                   A variavel Z deve ser inteira e indica o sucesso ou nao');
           writeln ('                   da conversao. Em caso de sucesso, Z contera zero, caso');
           writeln ('                   contrario, contera a posicao do caractere que ocasionou');
           writeln ('                   o problema.');
           writeln ('Chr(x)          -- Retorna o caractere cujo codigo ASCII e X.');
           writeln ('Round(x)        -- Provoca o arredondamento na primeira casa decimal.');
           writeln ('trunc(x)        -- Retorna o maior inteiro nao maior que X (Menor ou igual');
           writeln ('                   a X).');
           repeat Opcao:=readkey; until (Opcao='0');
           Opcao:='s';
      end;
      Procedure Funcoes_Especiais;
      begin
           clrscr;
           writeln ('MANUAL PASCAL -> MANIPULANDO VALORES -> FUNCOES ESPECIAIS');
           writeln;writeln;
           writeln ('Keypressed  -- � uma funcao booleana que devolve o valor true se alguma');
           writeln ('               tecla estiver sendo pressionada e false em caso contrario.');
           writeln ('Random      -- Retorna um numero real randomico entre 0 e 1.');
           writeln ('Random(x)   -- Retorna um numero real randomico entre 0 e X.');
           writeln ('Upcase(x)   -- Se o caractere X do tipo char for minusculo, converte-o para');
           writeln ('               maiusculo. Caso contrario, nao ha alteracoes.');
           writeln;
           writeln ('OBS: As funcoes e os procedimentos descrito ate aqui sao chamado predefinidos');
           writeln ('ou predeclarador. Mais adiante vera como se utilizam funcoes e os procedimentos');
           writeln ('declarador pelo proprio usuario.');
           repeat Opcao:=readkey; until (Opcao='0');
           Opcao:='s';
      end;
   begin
        repeat
           clrscr;
           writeln ('MANUAL PASCAL -> MANIPULANDO VALORES');
           writeln;writeln;
           writeln ('-1- Funcoes Matematicas');
           writeln ('-2- Potenciacao');
           writeln ('-3- Manipulando String');
           writeln ('-4- Funcoes Especiais');
           writeln ('-5- Saida de Informacoes');
           writeln ('-6- Comando GOTO');
           repeat Opcao:=readkey; until (Opcao='1')or(Opcao='2')or(Opcao='3')or(Opcao='4')or(Opcao='5')or(Opcao='0');
           case Opcao of
              '1':Funcoes_Matematicas;
              '2':Potenciacao;
              '3':Manipulando_String;
              '4':Funcoes_Especiais;
           end;
        until (Opcao='0');
        Opcao:='s';
   end;
Begin
     repeat
        clrscr;
        writeln  ('MANUAL PASCAL');
        writeln;writeln;
        writeln  ('-1- Variaveis e Operacoes');
        writeln  ('-2- Estruturando Algoritimos');
        writeln  ('-3- Manipulando Valores');
        repeat Opcao := readkey; until (Opcao='1')or(Opcao='2')or(Opcao='3')or(Opcao='0');
        case Opcao of
           '1':Variaveis_e_Operacoes;
           '2':Estruturando_Algoritimos;
           '3':Manipulando_Valores;
        end;
     until (Opcao='0');
end.
