program twoPointersOneComList;
type
	listptr = ^list;
	list = record
		num: integer;
		next: listptr;
	end;
var
	first, tmp: listptr;
begin
	tmp := nil;
	while not SeekEof do
	begin
		new(first);
		read(first^.num);
		first^.next := tmp;
		tmp := first;
	end;
	while first <> nil do
	begin
		write(first^.num, ' ');
		first := first^.next;
	end;
	writeln;
end.
