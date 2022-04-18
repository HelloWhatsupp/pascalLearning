program diamondV2;			{ with procedures }

procedure printSpaces(ch: char; count: integer);
var
	i: integer;
begin
	for i := 1 to count do
		write(ch);
end;

procedure printDiamondPart(m, n: integer);
begin
	printSpaces(' ', n-m+1);
	write('*');
	if m > 1 then
	begin
		printSpaces('x', 2*m-3);
		write('*');
	end;
	writeln;
end;

{ main program }

var
	size: integer;
	n: integer;
	m: integer;
begin
	repeat
	begin
		write('Input a correct size of the diamond(positive odd): ');
		readln(size);
	end
	until ((size > 0) and (size mod 2 = 1));
	
	n := size div 2;

	for m := 1  to n + 1 do
		printDiamondPart(m, n);
	for m := n downto 1 do
		printDiamondPart(m, n);
end.
