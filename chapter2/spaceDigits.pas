program spaceDigits;

procedure printSpacesBetweenDigits(n: longint);
begin
	if n > 0 then
	begin
		printSpacesBetweenDigits(n div 10);
		write(n mod 10, ' ');
	end;
end;

var
	n: longint;
begin
	write('Print a number to space: ');
	readln(n);

	printSpacesBetweenDigits(n);
	writeln;
end.
