program helloFile;						{helloFile.pas}
const
	fileName = 'helloFile.txt';
	strToPaste = 'hello, World!';
	timesToPaste = 10;
var
	i: integer;
	f1: text;
begin
	{$I-}
	assign(f1, fileName);
	rewrite(f1);
	if IOResult <> 0 then
	begin
		writeln('Couldn''t open file ', fileName);
		halt(1)
	end;
	for i := 1 to timesToPaste do
		writeln(f1, strToPaste);
		if IOResult <> 0 then
		begin
			writeln('Couldn''t write to the file');
			halt(1)
		end;
	close(f1)
end.
