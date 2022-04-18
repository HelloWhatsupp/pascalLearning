program firstAndLast;
type
	listptr = ^list;
	list = record
		num: integer;
		next: listptr;
	end;
var
	i: integer;
	first, last: listptr;
begin
	new(last);
	read(last^.num);
	first := last;
	while not SeekEof do
	begin
		new(last^.next);
		last := last^.next;
		read(last^.num);
	end;
	last^.next := nil;
	last := first;
	for i := 1 to 2 do
	begin
		while last <> nil do
		begin
			write(last^.num, ' ');
			last := last^.next;
		end;
		writeln;
		last := first;
	end;
end.
