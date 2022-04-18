program reverseNumber;

function reverseNumber(n: integer): integer;
var
	reversed: integer;
begin
	reversed := 0;
	while n > 0 do
	begin
		reversed := reversed * 10 + (n mod 10);
		n := n div 10;	
	end;
	reverseNumber := reversed;
end;

{ function doReverseNumber(n: integer): integer;
begin
	if n > 0 then
	begin
		doReverseNumber := n mod 10;
		doReverseNumber := reverseNumber(n div 10) * 10 + tmp;
	end
end; }



var
	number: integer;
begin
	write('Print a number to reverse: ');
	readln(number);
	writeln('The result is: ', reverseNumber(number));
end.
