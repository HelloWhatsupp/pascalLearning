program hanoiTower;
procedure solve(source, target, transit, n: integer);
begin
	if n = 0 then
		exit;
	solve(source, transit, target, n - 1);
	writeln(n, ': ', source, ' -> ', target);
	solve(transit, target, source, n - 1)
end;

var
	code, n: integer;

begin
	if ParamCount < 1 then
	begin
		writeln('No parameters given');
		halt(1)
	end;

	val(ParamStr(1), n, code);
	if (code <> 0) OR (n < 1) then
	begin
		writeln('Error converting (should be a number >= 1)');
		halt(1)
	end;
	solve(1, 3, 2, n)
end.
