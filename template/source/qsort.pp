program quicksort;

  const
     max = 1000;

  type
     tlist = array[1..max] of longint;

  var
     data : tlist;


procedure qsort(var a : tlist);

    procedure sort(l,r: longint);
      var
         i,j,x,y: longint;
      begin
         i:=l;
         j:=r;
         x:=a[(l+r) div 2];
         repeat
           while a[i]<x do
            inc(i);
           while x<a[j] do
            dec(j);
           if not(i>j) then
             begin
                y:=a[i];
                a[i]:=a[j];
                a[j]:=y;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then
           sort(l,j);
         if i<r then
           sort(i,r);
      end;

    begin
       sort(1,max);
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
