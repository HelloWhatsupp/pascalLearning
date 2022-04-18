program asciiTable;
var
	c: char;
	i, j: integer;
begin
	write('  |');			{ first row of a table }
	for c := '0' to '9' do
		write(' .', c);
	for c := 'A' to 'F' do
		write(' .', c);
	writeln;			{ end of first row }

	write('  |');			{ second row of a table }
	for i := 1 to 3*16 do
		write('-');
	writeln;			{ end of second row }

	for i := 2 to 7 do		{ ascii rows }
	begin
		write(i, '.|');
		for j := 0 to 15 do
			write('  ', chr(i*16 + j));
		writeln;
	end;
	writeln;
end.
