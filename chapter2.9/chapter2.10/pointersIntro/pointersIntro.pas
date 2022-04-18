program pointersIntro;
var
	r: real;
	p: ^real;

begin
	p := @r;

	p^ := 25.7;

	writeln(p^);
end.
