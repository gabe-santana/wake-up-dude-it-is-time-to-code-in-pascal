program bubble;
uses crt;
 
var
   v: array [1..10] of integer;
   I: integer;
 
procedure bubble_sort();
var
   I, J, aux: integer;
begin
     for I := 1 to 10 do
     begin
          for J := I+1 to 10 do
          begin
               if v[J] < v[I] then
               begin
                    aux := v[I];
                    v[I] := v[J];
                    v[J] := aux;
               end;
          end;
     end;
end;
 
begin
     for I := 1 to 10 do
     begin
          write('Type a value: ');
          read(v[I]);
     end;
 
     bubble_sort();
     for I := 1 to 10 do
     begin
          writeln('Result: ', I, ': ', v[I]);
     end;
     readkey;
end.