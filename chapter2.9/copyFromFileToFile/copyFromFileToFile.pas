program copyFromTo;
const
	bufSize = 4;
var
	buffer: array [1..bufSize] of byte;
	source, dest: file;
	readRes, writeRes: integer;
	i: integer;

begin
	{$I-};

	if ParamCount < 2 then
	begin
		writeln(ErrOutput, 'Source or destination file weren''t presented');
		writeln(ErrOutput, 'Please choose source and destinatiion files');
		halt(1)
	end;

	assign(source, ParamStr(1));
	filemode := 0;
	reset(source, 1);
	if IOResult <> 0 then
	begin
		writeln(ErrOutput, 'Couldn''t open file ', ParamStr(1) , ' for reading');
		halt(1)
	end;

	assign(dest, ParamStr(2));
	filemode := 1;
	rewrite(dest, 1);
	if IOResult <> 0 then
	begin
		writeln(ErrOutput, 'Couldn''t open file ', ParamStr(2) , ' for writing');
		halt(1)
	end;

	while true do
	begin
		BlockRead(source, buffer, bufSize, readRes);
		if readRes = 0 then
			break;
		BlockWrite(dest, buffer, readRes, writeRes);
		if readRes <> writeRes then
		begin
			writeln(ErrOutput, 'Error writing the file');
			halt(1)
		end
	end;

	close(source);
	close(dest)
end.
