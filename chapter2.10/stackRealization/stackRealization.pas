program stackRealization;
type
	listptr = ^list;
	list = record
		num: integer;
		next: listptr;
	end;
	stackOfIntegers = record
		first: listptr;
	end;
procedure SOIInit(var stack: stackOfIntegers);
begin
	stack.first := nil;
end;
procedure SOIPush(var stack: stackOfIntegers; n: integer);
var
	tmp: listptr;
begin
	new(tmp);
	tmp^.num := n;
	tmp^.next := stack.first;
	stack.first := tmp;
end;
procedure SOIPop(var stack: stackOfIntegers; var n: integer);
var
	tmp: listptr;
begin
	n := stack.first^.num;
	tmp := stack.first;
	stack.first := stack.first^.next;
	dispose(tmp);
end;
function SOIIsEmpty(var stack: stackOfIntegers): boolean;
begin
	SOIIsEmpty := stack.first = nil;
end;

var
	n: integer;
	s: stackOfIntegers;
begin
	SOIInit(s);
	
	while not SeekEof do
	begin
		read(n);
		SOIPush(s, n);
	end;

	while not SOIIsEmpty(s) do
	begin
		SOIPop(s, n);
		write(n, ' ');
	end;
end.
