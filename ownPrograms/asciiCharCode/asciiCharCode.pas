program asciiCharCode;
var
	c: char;
begin
	writeln('Узнайте код ASCII введенного символа');
	writeln('Для выхода нажмите q');
	while (true) do
	begin
		read(c);
		write('Код ');
		case c of
			#10:
				write('перевода строки');
			' ':
				write('пробела');
			#9:
				write('табуляции');
			else
				write(c);
		end;
		writeln(' = ', ord(c));
		if (c = 'q') then
		begin
			writeln('Произведен выход из программы');
			break
		end;
	end;
end.
