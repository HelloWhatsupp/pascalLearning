program dequeRealization;
type
	list2ptr = ^list2;
	list2 = record
		num: integer;
		next: list2ptr;
		prev: list2ptr;
	end;
	dequeOfIntegers = record
		first, last: list2ptr;
	end;
procedure dequeInit(var deque: dequeOfIntegers);
begin
	deque.first := nil;
	deque.last := nil
end;

procedure dequePushFront(var deque: dequeOfIntegers; n: integer);
var
	tmp: list2ptr;
begin
	new(tmp);
	tmp^.num := n;
	tmp^.next := deque.first;
	tmp^.prev := nil;	
	if deque.first <> nil then
		deque.first^.prev := tmp
	else
		deque.last := tmp;
	deque.first := tmp
end;

procedure dequePushBack(var deque: dequeOfIntegers; n: integer);
var
	tmp: list2ptr;
begin
	new(tmp);
	tmp^.num := n;
	tmp^.next := nil;
	tmp^.prev := deque.last;
	if deque.last <> nil then
		deque.last^.next := tmp
	else
		deque.first := tmp;
	deque.last := tmp
end;

procedure dequePopFront(var deque: dequeOfIntegers; var n: integer);
var
	tmp: list2ptr;
begin
	tmp := deque.first;
	n := tmp^.num;
	if tmp^.next <> nil then begin
		deque.first := tmp^.next;
		deque.first^.prev := nil
	end else begin
		deque.first := nil;
		deque.last := nil
	end;

	dispose(tmp)
end;

procedure dequePopBack(var deque: dequeOfIntegers; var n: integer);
var
	tmp: list2ptr;
begin
	tmp := deque.last;
	n := tmp^.num;

	if tmp^.prev <> nil then
	begin
		deque.last := tmp^.prev;
		deque.last^.next := nil
	end else begin
		deque.last := nil;
		deque.first := nil
	end;

	dispose(tmp)	
end;

function dequeIsEmpty(var deque: dequeOfIntegers): boolean;
begin
	dequeIsEmpty := (deque.first = nil) AND (deque.last = nil)
end;

var
	d: dequeOfIntegers;
	n: integer;
begin
	dequeInit(d);

	while not SeekEof do
	begin
		read(n);
		dequePushFront(d, n)
	end;

	while not dequeIsEmpty(d) do
	begin
		dequePopBack(d, n);
		writeln(n, ' from deque')
	end
end.
