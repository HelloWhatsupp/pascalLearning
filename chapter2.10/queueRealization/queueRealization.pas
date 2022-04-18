program queueRealization;
type
	listptr = ^list;
	list = record
		num: integer;
		next: listptr;
	end;
	queueOfIntegers = record
		first, last: listptr;
	end;
procedure QOIInit(var queue: queueOfIntegers);
begin
	queue.first := nil;
	queue.last := nil;
end;
procedure QOIPut(var queue: queueOfIntegers; n: integer);
begin
	if queue.first = nil then
	begin
		new(queue.last);
		queue.first := queue.last;
	end else begin
		new(queue.last^.next);
		queue.last := queue.last^.next;
	end;
	queue.last^.num := n;
	queue.last^.next := nil;
end;
procedure QOIGet(var queue: queueOfIntegers; var n: integer);
var
	tmp: listptr;
begin
	n := queue.first^.num;
	tmp := queue.first;
	queue.first := queue.first^.next;
	dispose(tmp);
end;
function QOIIsEmpty(var queue: queueOfIntegers): boolean;
begin
	QOIIsEmpty := queue.first = nil;
end;

var
	n: integer;
	q: queueOfIntegers;
begin
	QOIInit(q);

	while not SeekEof do
	begin
		read(n);
		QOIPut(q, n);
	end;

	while not QOIIsEmpty(q) do
	begin
		QOIGet(q, n);
		write(n, ' ');
	end;
end.
