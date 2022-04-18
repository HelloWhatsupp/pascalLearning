program simpleSum;
var
	sum, count, n: integer;
begin
	sum := 0;
	count := 0;
	while not eof do
	begin
		read(n);
		sum := sum + n;
		count := count + 1
	end;
	writeln(sum, ' ', count)
end.
