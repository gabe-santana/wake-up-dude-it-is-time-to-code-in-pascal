program quick;
 
procedure QuickSort(var Ai: array of Integer; ALo, AHi: Integer);
var
  Lo, Hi, Pivot, T: Integer;
begin
  Lo := ALo;
  Hi := AHi;
  Pivot := Ai[(Lo + Hi) div 2];
  repeat
    while Ai[Lo] < Pivot do
      Inc(Lo) ;
    while Ai[Hi] > Pivot do
      Dec(Hi) ;
    if Lo <= Hi then
    begin
      T := Ai[Lo];
      Ai[Lo] := Ai[Hi];
      Ai[Hi] := T;
      Inc(Lo) ;
      Dec(Hi) ;
    end;
  until Lo > Hi;
  if Hi > ALo then
    QuickSort(Ai, ALo, Hi) ;
  if Lo < AHi then
    QuickSort(Ai, Lo, AHi) ;
end;
 
 
var
  Ai: array of Integer;
  I: Integer;
  Len: Integer;
begin
  writeln('Array length: ');
  Readln(Len);
  SetLength(Ai, Len);
  for I := Low(Ai) to High(Ai) do
  begin
    writeln('Ai(',I + 1,') = ');
    Readln(Ai[I]);
  end;
 
  QuickSort(Ai, Low(Ai), High(Ai));
 
  for I := Low(Ai) to High(Ai) do
    Writeln('Ai(',I + 1,') = ', Ai[I]);
  Readln;
end.