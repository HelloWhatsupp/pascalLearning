program filterOk;
var
	ch: char;
begin
	repeat
		read(ch);
		if ch = #10 then
			writeln('OK')
	until (eof);
	writeln('Good bye')
end.

