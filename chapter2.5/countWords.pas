program countWords;
var
	count, res: integer;
	ch: char;
begin
	count := 0;
	res := 0;
	repeat
		read(ch);
		if ch = #10 then begin
			writeln('Chars count in the word: ', count);
			res := res + count;
			count := 0
		end;
		count := count + 1;
	until(eof);
	writeln('The sum of chars in all words is: ', res);
end.
