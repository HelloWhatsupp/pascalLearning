program hanoiTower3;
type
	taskState = (stClearing, stLargest, stFinal);
	ptask = ^task;
	task = record
		amount, src, dst: integer;
		state: taskState;
		next: ptask;
	end;
procedure getDisksCount(var n: integer);
var
	code: integer;
begin
	if ParamCount < 1 then begin
		writeln('Number of disks wouldn''t given');
		halt(1)
	end;
	val(ParamStr(1), n, code);
	if (code <> 0) OR (n < 1) then begin
		writeln('Unsupported number of disks');
		halt(1)
	end
end;

function intermRod(src, dst: integer): integer;
begin
	if (src <> 1) AND (dst <> 1) then
		intermRod := 1
	else if (src <> 2) AND (dst <> 2) then
		intermRod := 2
	else
		intermRod := 3
end;

var
	first, tmp: ptask;
	n: integer;
begin
	getDisksCount(n);

	new(first);
	first^.amount := n;
	first^.src := 1;
	first^.dst := 3;
	first^.state := stClearing;
	first^.next := nil;

	while first <> nil do
	begin
		case first^.state of
			stClearing:
			begin
				first^.state := stLargest;
				if first^.amount > 1 then begin
					new(tmp);
					tmp^.amount := first^.amount - 1;
					tmp^.src := first^.src;
					tmp^.dst := intermRod(first^.src, first^.dst);
					tmp^.state := stClearing;
					tmp^.next := first;
					first := tmp
				end
			end;
			stLargest:
			begin
				first^.state := stFinal;
				writeln(first^.amount, ': ', first^.src, '->', first^.dst);
				if first^.amount > 1 then begin
					new(tmp);
					tmp^.amount := first^.amount - 1;
					tmp^.src := intermRod(first^.src, first^.dst);
					tmp^.dst := first^.dst;
					tmp^.state := stClearing;
					tmp^.next := first;
					first := tmp
				end
			end;
			stFinal:
			begin
				tmp := first;
				first := first^.next;
				dispose(tmp)
			end
		end
	end
end.
