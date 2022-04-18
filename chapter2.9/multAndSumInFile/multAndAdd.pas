program multAndAdd;
var
	sum, mul, n: real;
	f: text;
begin
	{$I-}
	if ParamCount < 1 then
	begin
		writeln('Choose a file to multAndSum');
		halt(1)
	end;
	assign(f, ParamStr(1));
	reset(f);
	if IOResult <> 0 then
	begin
		writeln('Can''t open file ', ParamStr(1));
		halt(1)
	end;
	sum := 0;
	repeat
		mul := 1;
		repeat
			read(f, n);
			mul := mul * n	
		until seekEoln(f);
		readln(f);
		sum := sum + mul
	until seekEof(f);
	
	writeln(sum:7:2);

	close(f)
end.
