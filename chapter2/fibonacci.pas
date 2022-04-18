program fibonacci;
var
	number: integer;
function fibonacci(n: integer): integer;
var
	i: integer;
	current, previous, ready: integer;
begin
	if n <= 0 then
		fibonacci := 0
	else begin
		current := 0;
		ready := 1;
		for i := 2 to n do
		begin
			previous := current;
			current := ready;
			ready := current + previous;
		end;
		fibonacci := ready;
	end;
end;
begin
	write('Input a number to Fibonacci it: ');
	readln(number);
	writeln('The result is: ', fibonacci(number));
end.
