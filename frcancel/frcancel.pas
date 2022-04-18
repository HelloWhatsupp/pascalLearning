program frcancel;
var
	numerator, denominator: integer;
	i: integer;
begin
	read(numerator, denominator);
	i := denominator;
	while i > 0 do begin
		if (numerator mod i = 0) AND (denominator mod i = 0) then begin
			writeln(numerator div i, ' ', denominator div i);
			break
		end;
		repeat
			i := i - 1;
		until denominator mod i = 0
	end;
end.
