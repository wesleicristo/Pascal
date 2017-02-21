program Grid_Way;
uses crt;
var Start,Finish:array [1..2] of integer;
    Key:char;
    PositionX,PositionY:integer;
    Grid:array [1..20,1..50] of array [1..5] of char;
    Line,Column:integer;
begin
     Start[1]:=0;Start[2]:=0;Finish[1]:=0;Finish[2]:=0;
     textcolor(white);
     for Line := 1 to 20 do
     begin
          for Column := 1 to 50 do
          begin
               Grid[Line,Column]:= '.';
               write (Grid[Line,Column]);
          end;
          writeln;
     end;
     writeln;
     textcolor(Yellow);
     gotoxy(53,5);write('<Setas> Mover');
     gotoxy(53,6);write('<Insert> Paredes');
     gotoxy(53,7);write('<Home> Inicio');
     gotoxy(53,8);write('<End> Fim');
     gotoxy(53,9);write('<Esc> Finalizar');
     gotoxy(53,10);write('<Delete> Apagar Inicio/Fim');
     PositionX:=1;PositionY:=1;
     repeat
           Gotoxy(PositionX,PositionY);
           Key:=readkey;
           if Key=#0 then
              Key:=readkey;
           case Key of
   {Cima}      #72:begin if PositionY>1 then PositionY := PositionY-1; end;
   {baixo}     #80:begin if PositionY<20 then PositionY := PositionY+1; end;
   {Esquerda}  #75:begin if PositionX>1 then PositionX := PositionX-1; end;
   {Direita}   #77:begin if PositionX<50 then PositionX := PositionX+1; end;
   {Insert}    #82:begin
                        if (Grid[PositionY,PositionX][1]<>'I')and(Grid[PositionY,PositionX][1]<>'F') then begin
                           if (Grid[PositionY,PositionX][1]='.') then begin
                              textcolor(LightBlue);
                              Grid[PositionY,PositionX][1]:='@'; write(Grid[PositionY,PositionX][1]); end
                           else begin
                              textcolor(white);
                              Grid[PositionY,PositionX][1]:='.'; write(Grid[PositionY,PositionX][1]); end;
                        end;
                   end;
   {Home}      #71:begin
                        if (Grid[PositionY,PositionX][1]='.')and(Start[1]=0) then begin
                           textcolor(LightGreen);
                           Grid[PositionY,PositionX][1]:='I'; write(Grid[PositionY,PositionX][1]);
                           Start[1]:=PositionY;Start[2]:=PositionX;
                        end;
                   end;
   {End}       #79:begin
                        if (Grid[PositionY,PositionX][1]='.')and(Finish[1]=0) then begin
                          textcolor(Lightred);
                          Grid[PositionY,PositionX][1]:='F'; write(Grid[PositionY,PositionX][1]);
                          Finish[1]:=PositionY;Finish[2]:=PositionX;
                        end;
                   end;
   {Delete}    #83:begin
                        if Start[1]<>0 then begin
                           gotoxy(Start[2],Start[1]);
                           Grid[Start[1],Start[2]][1]:='.';
                           Start[1]:=0;Start[2]:=0;
                           textcolor(white);write('.');
                        end;
                        if Finish[1]<>0 then begin
                           gotoxy(Finish[2],Finish[1]);
                           Grid[Finish[1],Finish[2]][1]:='.';
                           Finish[1]:=0;Finish[2]:=0;
                           textcolor(white);write('.');
                        end;
                   end;
           end;
           textcolor(yellow);
           gotoxy(53,15);write('Positon-Y:',PositionY,' X:',PositionX,'          ');
           gotoxy(53,16);write('Start-Y:',Start[1],' X:',Start[2],'          ');
           gotoxy(53,17);write('Finish-Y:',Finish[1],' X:',Finish[2],'           ');
           gotoxy(53,19);write('Grid: ',Grid[PositionY,PositionX][1]);
           gotoxy(1,1);
     until (Key=#13)and(Start[1]<>0)and(Finish[1]<>0)or(Key=#27);
     if Key=#13 then
     begin
     end;
end.
