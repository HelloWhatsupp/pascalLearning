program lowerCase;
const
	size = 30;
var
	str: string[size];
	i: integer;
procedure lowerCase(var s: string);
begin

	for i := 1 to length(s) do
	begin
		if (ord(s[i]) >= 65) and (ord(s[i]) <= 90) then
			s[i] := chr(ord(s[i]) + 32)
	end;
end;
begin
	readln(str);
	
	lowerCase(str);
	writeln(str)
end.

