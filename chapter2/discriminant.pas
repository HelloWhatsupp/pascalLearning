program discriminant;
procedure discriminant(a, b, c: real;
			var ok: boolean; var x1, x2: real);
var
	d: real;
begin
	if (a = 0) then begin
		ok := false;
		exit
	end;
	d := b*b - 4*a*c;
	if d < 0 then begin
		ok := false;
		exit
	end;
	d := sqrt(d);
	x1 := (-b - d) / (2 * a);
	x2 := (-b + d) / (2 * a);
	ok := true;	
end;
var
	a, b, c: real;
	ok: boolean;
	x1, x2: real;
begin
	write('Choose your quadratic equation: ');
	readln(a, b, c);

	discriminant(a, b, c, ok, x1, x2);
	if ok then
		writeln('Your roots are: ', x1:3:3, #32, x2:3:3)
	else
		writeln('Equation cannot be counted');
end.
