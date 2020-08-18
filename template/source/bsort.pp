program quicksort;

  const
     max = 1000;

  type
     tlist = array[1..max] of longint;

  var
     data : tlist;


procedure qsort(var a : tlist);
    var i, j, temp : longint;
    begin
        for i := 1 to max do
                for j := i + 1 to max do
                        if a[i] > a[j] then
                                begin
                                        temp := a[i];
                                        a[i] := a[j];
                                        a[j] := a[i];
                                end;
    end;

var
  i : longint;
begin
  write('Creating ',Max,' random numbers between 1 and 500000');
  randomize;
  for i:=1 to max do
    data[i]:=random(500000);
  writeln;
  writeln('Sorting...');
  qsort(data);
  writeln;
  for i:=1 to max do
   begin
     write(data[i]:7);
     if (i mod 10)=0 then
      writeln;
   end;
  readln;
end.
