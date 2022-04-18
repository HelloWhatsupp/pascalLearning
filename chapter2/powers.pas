program powers;
var
	x, quad, cube, fourth, fifth: real;
procedure powers(x: real; var quad, cube, fourth, fifth: real);
begin
	quad := x * x;
	cube := quad * x;
	fourth := cube * x;
	fifth := fourth * x;
end;
begin
	write('Input a number to power: ');
	readln(x);
	powers(x, quad, cube, fourth, fifth);
	writeln('The result is: ', quad:10:5);
	writeln(cube:10:5);
	writeln(fourth:10:5);
	writeln(fifth:10:5);
end.
