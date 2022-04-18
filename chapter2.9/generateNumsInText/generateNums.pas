program generateNums;
const
	start = 1000;
	step = 1001;
	count = 100;
	fileName = 'nums.txt';
var
	i: integer;
	sum: longint;
	textFile: text;
begin
	{$I-}
	assign(textFile, fileName);
	rewrite(textFile);
	if IOResult <> 0 then
	begin
		writeln('Can''t open file ', fileName);
		halt(1)
	end;

	sum := start;
	for i := 1 to count do
	begin
		writeln(textFile, sum);
		if IOResult <> 0 then
		begin
			writeln('Can''t write value ', sum, ' at step ', i, ' in a file ', fileName);
			halt(1)
		end;
		sum := sum + step;
	end;

	close(textFile)
end.
