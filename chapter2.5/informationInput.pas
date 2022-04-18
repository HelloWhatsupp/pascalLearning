program charByCharInformationInput;
procedure readLongInt(var success: boolean; var result: longint);
var
	c: char;
	res: longint;
	pos: integer;
begin
	res := 0;
	pos := 0;
	repeat
		read(c);
		pos := pos + 1
	until (c <> ' ') and (c <> #10) and (c <> ',');

	while (c <> ' ') and (c <> #10) and (c <> ',') do
	begin
		if (c < '0') or (c > '9') then
		begin
			writeln('Unexpected ''', c, ''''' in pos: ', pos);
			readln;
			success := false;
			exit
		end;
		res := res * 10 + ord(c) - ord('0');
		read(c);
		pos := pos + 1
	end;
	result := res;
	success := true
end;
var
	ok: boolean;
	x, y: longint;
begin
	repeat
		write('Please type the first number: ');
		readLongInt(ok, x);
	until ok;
	repeat
		write('Please type the second number: ');
		readLongInt(ok, y);
	until ok;
	writeln(x, ' times ', y, ' is ', x * y)
end.
