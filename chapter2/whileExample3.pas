program whileExample3;
var
	year: integer;
begin
	write('Type in your birth year: ');
	read(year);
	while (year < 1900) or (year > 2020) do
	begin
		writeln(year, ' is not a valid year');
		write('Try again: ');
		read(year)
	end;
	writeln('Correct, thank you!')
end.
