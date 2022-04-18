program cube;
var
	number: real;
function cube(x: real): real;
begin
	cube := x * x * x;
end;
begin
	write('Input a number to cube: ');
	readln(number);
	writeln('The result is: ', cube(number));
end.
