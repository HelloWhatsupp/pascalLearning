program helloPointers;
var
	p, q: ^string;
begin
	new(p);		{
			1. из кучи выделяется область памяти
       			нужного размера для содержания 
			созданной динамической переменной
			2. в заданный указатель вносится адрес
		       	созданной динамической переменной
			}
	p^ := 'Hello, World!';
	new(p);
	p^ := 'good dude';
	writeln(p^);
	dispose(p);
	writeln(p^);
end.
