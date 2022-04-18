program upperCase;
const
	size = 30;
var
	userStr: string[30];
procedure upperCase(var s: string);
var
	c: char;
	i: integer;
begin
	for i := 1 to length(s) do
	begin
		c := s[i];
		if (ord(c) >= 97) and (ord(c) <= 122) then
			s[i] := chr(ord(c) - 32)
	end
end;
begin
	readln(userStr);

	upperCase(userStr);

	writeln(userStr)
end.
