program square;
var
	x: qword;
begin
	writeln('Input a number: ');
	read(x);
	x := x * x;
	write('The result is ');
	writeln(x);
end.
