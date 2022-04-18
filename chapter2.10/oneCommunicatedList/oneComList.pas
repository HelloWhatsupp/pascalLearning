program oneComList;
type
	listptr = ^list;
	list = record
		num: integer;
		next: listptr;
	end;
var
	first: listptr;
begin
	new(first);
	first^.num := 49;
	new(first^.next);
	first^.next^.num := 13;
	writeln(first^.num);
	writeln(first^.next^.num);
end.
