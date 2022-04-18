program readFromBinary;

var
	i: integer;
	n: longint;
	f: file of longint;
procedure getBinaryNum(num: longint);
const
	countSys = 16;
begin
	
end;

begin
	{$I-};
	if ParamCount < 1 then
	begin
		writeln('Choose a file to read from');
		halt(1);
	end;
	
	assign(f, ParamStr(1));
	reset(f);
	
	if IOResult <> 0 then
	begin
		writeln('Couldn''t read from chosen file');
		halt(1)
	end;

	for i := 0 to 100 do
	begin
		if (i mod 2) = 0 then
			continue;
		seek(f, i);
		read(f, n);
		if IOResult <> 0 then
		begin
			writeln('Couldn''t read position from chosen file');
			halt(1)
		end;
		writeln(n)
	end;

	writeln('All of binary numbers were readen');
	close(f)
end.
