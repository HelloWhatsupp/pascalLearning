program skipIndented;
var
	ch: char;
	position: integer;
begin
	position := 0;

	repeat
		read(ch);

		if (ch = #10) or (ch = #9) then begin
			if position = 0 then
				readln
			else begin
				position := 0;
				write(ch);
			end
		end
		else begin
			position := position + 1;
			write(ch);
		end
	until(eof)
end.
