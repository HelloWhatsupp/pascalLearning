program genNumsInFile;
const
	fileName = 'nums.bin';
	start = 1000;
	step = 1001;
	count = 100;
var
	i: integer;
	n: longint;
	f: file of longint;
begin
	{$I-};
	assign(f, fileName);
	rewrite(f);
	if IOResult <> 0 then
	begin
		writeln('Couldn''t open file', fileName);
		halt(1)
	end;
	n := start;
	for i := 1 to count do
	begin
		write(f, n);
		if IOResult <> 0 then
		begin
			writeln('Couldn''t write in a file', fileName);
			halt(1)
		end;
		n := n + step
	end;
	writeln('file ', fileName, ' with required nums was generated');
	
	close(f)
end.
