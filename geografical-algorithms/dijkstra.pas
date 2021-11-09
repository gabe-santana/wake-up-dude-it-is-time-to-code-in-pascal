program dijkistra;

var D: array[1..100, 1..100] of integer;
    DA, Ant: array[1..100] of integer;
    ExpA: array[1..100] of boolean;
    N, Origin, Destinity, I, J, C, NewDA, Min: integer;

begin
   readln(N);
   for I:= 1 to N do
   begin
       for J:= 1 to N do
       read(D[I,J]);
       readln;
   end;
  readln(Origin, Destinity);
    for I:= 1 to N do
        begin
            ExpA[I]:= false;
            DA[I]:= 10000
        end;
    C:= Origin;
    DA[C]:= 0;
    while (C <> Destinity) and(C <> 0) do
   begin {Expanção de C}
    for I:= 1 to N do
    if (D[C, I] <> 0) and(not Expa[i])
    then begin
            NewDA:= DA[C] + D[C, I];
            if NewDA < DA[I] 
            then begin
                   DA[I]:= NewDA;
                   Ant[I]:= C
                  end
         end;
    Expa[C]:= true;
    Min:= 10000;
    C:= 0;
    for I:= 1 to N do
    if (not ExpA[I]) and (DA[I] < Min)
    then
       begin
            Min:= DA[I];
            C:= I;
        end;
    end;

    if C = Destinity
    then begin
            writeln('Lower way');
            writeln(C);
            while C <> Origin do
                begin
                    C:= Ant[C];
                    writeln(C)
                end
          end
     else writeln('Theres no way between the two cities');
end.