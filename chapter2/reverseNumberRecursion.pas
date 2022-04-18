program reverseNumberRecursion;

function doReverseNumber(n, m: longint): longint;
begin
	if n = 0 then
		doReverseNumber := m
	else
		doReverseNumber := doReverseNumber(n div 10, m * 10 + n mod 10)
end;

function reverseNumber(n: longint): longint;
begin
	reverseNumber := doReverseNumber(n, 0);
end;


var
	num: longint;
begin
	write('Print a number: ');
	readln(num);
	writeln('The result is: ', reverseNumber(num));
end.
