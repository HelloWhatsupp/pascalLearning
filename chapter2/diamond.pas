program diamond;
var
	n: integer;
	m: integer;
	k: integer;
	j: integer;
begin
	repeat
		write('Choose a size of your diamond (positive odd): ');
		read(n)
	until (n > 0) and (n mod 2 = 1);
	n := n div 2;
	for m := 1 to n + 1 do
	begin
		for k := 1 to n + 1 - m do
			write(' ');
		write('*');
		if m > 1 then
		begin
			for k := 1 to 2*m-3 do
				write(' ');
			write('*');
		end;
		writeln;
	end;
	for m := n downto 1 do
	begin
		for k := 1 to n + 1 - m do
		       write(' ');
		write('*');       
		if m > 1 then
		begin
			for k := 1 to 2*m-3 do
				write(' ');
			write('*');
		end;
		writeln;
	end
end.
