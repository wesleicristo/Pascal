      program Project1;
uses
   crt;
var
   ch:char;Teste:boolean;
begin
   repeat
          ch:=readkey;
          if ch=#0 then begin
                 write('#0 + ');
                 ch:=readkey;
          end;
          Writeln('#',ord(ch));
          writeln(Teste);
   until ch=#27;
end.
