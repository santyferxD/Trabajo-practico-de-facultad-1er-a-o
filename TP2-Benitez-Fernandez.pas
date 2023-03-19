program TP2;
{COM-111 - Benitez-Jonathan / Fernandez-Santiago}
uses crt;

const clave='pascaltp';

var contra : string[8];
    bol  : boolean;
    sel :integer;
    s,x,y,emp,a,alm,aux2,aux3,seleccion:integer;
    i:integer;
    imp,aux, b , g:string;
    cod: integer;
    lista : Array [1..8] of integer;
    listf : Array [1..8] of integer;
    listbin : Array [1..16] of integer;
    listemp : array [1..3] of integer;
    listimp : array [1..7] of integer;
    bin : array[1..32] of string ;
    num:integer;
    opc : integer;


procedure cargaclave;
var pass : string[8];
    carac : char;

          begin
          writeln();
          writeln(chr(201),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(187));
          writeln(chr(186),' Ingrese su contrasena ', chr(186));
          writeln(chr(200),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(188));
          writeln();
          pass:='';
          repeat
          carac:=readkey;
          pass:=pass+carac;
          write(' *');
          until (ord(carac)=13);
          writeln();
          contra:='';
          contra:=pass;
          end;

function verif(contra:string): boolean;
begin
  if(contra=clave) then
        begin
        verif:=true;
        end
        else
        verif:=false

end;

procedure verifclave;
begin
   bol:=verif(contra);
end;

procedure contrasena;
var int : integer;

begin
ClrScr;
cargaclave;
verifclave;
     int:=3;
     repeat
       if (bol=true) then
       begin
         int:=int+1;
         writeln(chr(201),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(187));
         writeln(chr(186),' La contrasena es correcta ',chr(186));
         writeln(chr(200),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(188));
       end
       else
       begin
         int:=int-1;
         writeln();
         writeln(chr(201),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(187));
         writeln(chr(186),' La contrasena no es correcta, quedan ', int, ' intentos ',chr(186));
         writeln(chr(200),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(188));
         cargaclave;
         verifclave;
       end;
     until (int=1) or (int=4);

  writeln(chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205));
  case int of
  4 : writeln(chr(186), ' Pulse una tecla y el programa se cierra ',chr(186));
  1 : writeln(chr(186), ' Introdujo la contrasena erronea 3 veces consecutivas, pulse una tecla y el programa se cierra ',chr(186));
  end;
  readkey;
end;

Procedure ejercicio; //EJERCICIO 2

begin

repeat
ClrScr;
    writeln(chr(201),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(187));
    writeln(chr(186),'Ingrese el codigo de empresa (3 caracteres): ',chr(186));
    writeln(chr(200),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(188));
        write(char(175),' ');
	readln(aux);
    aux2 := length(aux);
until aux2 < 4;

val(aux,s,alm);






if s < 10 then
begin


    listemp[1]:=0;
    listemp[2]:=0;
    val(aux[1],listemp[3],alm);
    end;


if s > 10 then
begin

    listemp[1]:=0;
    val(aux[1],listemp[2],alm);
    val(aux[2],listemp[3],alm);

    end;

if s > 100 then
begin

    val(aux[1],listemp[1],alm);

    val(aux[2],listemp[2],alm);

    val(aux[3],listemp[3],alm);
    end;
writeln('');
writeln(char(175),' Su codigo de empresa es: ',s);



repeat
        writeln(chr(201),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(187));
    writeln(chr(186),'Ingrese su importe: ',chr(186));
    writeln(chr(200),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(188));
    write(char(175),' ');
	readln(imp);
    aux3 := length(imp);
until aux3 < 5;

val(imp,a,alm);


if a < 10 then
begin


    listimp[4]:=0;
    listimp[5]:=0;
    listimp[6]:=0;
    val(imp[1],listimp[7],alm);
    end;


if a > 10 then
begin

    listimp[4]:=0;
    listimp[5]:=0;
    val(imp[1],listimp[6],alm);
    val(imp[2],listimp[7],alm);

    end;

if a > 100 then
begin
    listimp[4]:=0;

    val(imp[1],listimp[5],alm);

    val(imp[2],listimp[6],alm);

    val(imp[3],listimp[7],alm);
    end;

if a > 1000 then
begin

    val(imp[1],listimp[4],alm);

    val(imp[2],listimp[5],alm);

    val(imp[3],listimp[6],alm);

    val(imp[4],listimp[7],alm);
    end;
writeln('');

writeln(char(175),' Su importe es de: ',a);















for i:=1 to 3 do
begin

      lista[i]:=listemp[i];
end;
for i:=4 to 7 do
begin

       lista[i]:=listimp[i];

end;





x := lista[1] + lista[3] + lista[5] + lista[7];
y :=lista[2] + lista[4] + lista[6];


cod := (abs((x-y) div 10));

lista[8] := cod;
writeln('');

writeln(chr(201),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(187));
writeln(chr(186),'El codigo completo es: ',lista[1] , lista[2] , lista[3], lista[4],lista[5] , lista[6] , lista[7], lista[8],chr(186));
writeln(chr(200),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(188));
writeln('');
writeln('');


for i:=1 to 8 do
	begin
		listf[i]:=lista[i];
	end;



b:='';
for i:=1 to 8 do
begin
        case listf[i] of
        0 : g:= '0000';
        1 : g:= '0001';
        2 : g:= '0010';
        3 : g:= '0011';
        4 : g:= '0100';
        5 : g:= '0101';
        6 : g:= '0110';
        7 : g:= '0111';
        8 : g:= '1000';
        9 : g:= '1001';
        end;
b := b +g;



end;
writeln('');
writeln(' Generando su codigo de barras ');
writeln('');

writeln(chr(201),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(187));
write(char(186));
for i:=1 to 32 do
	begin
	if b[i] = '1' then
	   Write(chr(219));
    if b[i] = '0' then
       Write(' ');
	end;
write(char(186));
writeln('');
writeln(chr(200),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(188));

readln();

end;


begin
repeat
ClrScr;
writeln(chr(201),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(187));
writeln(chr(186), ' Seleccione la opcion que desee ',chr(186));
writeln(chr(204),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(185));
writeln(chr(186),'1 - Contrasena                  ',chr(186));
writeln(chr(204),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(185));
writeln(chr(186),'2 - Codigo de barras            ', chr(186));
writeln(chr(204),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(185));
writeln(chr(186),'3 - Salir                       ', chr(186));
writeln(chr(200),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(188));
     readln(opc);
     case opc of
     1 : contrasena;
     2 : ejercicio;
     3 :;
     end;
until (opc=3);
end.
