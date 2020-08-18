program Regex;

uses
  RegExpr;

var
  re: TRegExpr;
begin
  re := TRegExpr.Create('hello (.*?)!');
  if re.Exec('hello world! hello pascal!') then
  begin
    WriteLn(re.Match[1]);
    while re.ExecNext do
    begin
      WriteLn(re.Match[1]);
    end;
  end;
  re.Free;
  readln;
end.
