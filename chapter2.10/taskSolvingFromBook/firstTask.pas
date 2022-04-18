program firstTask;
type
	itemptr = ^item;
	item = record
		num: integer;
		next: itemptr;
	end;
var
	first, tmp: itemptr;
begin
	first := nil;
	while not SeekEof do
	begin
		new(tmp);
		read(tmp^.num);
		tmp^.next := first;
		first := tmp;
	end;
	while first <> nil do
	begin
		write(first^.num, ' ');
		first := first^.next;
	end;
end.
