program sideLine;
var
	i: integer;
	j: integer;
begin
	for i := 1 to 24 do
	begin
		for j := 1 to i - 1 do
			write(' ');
		writeln('*');
	end
end.
