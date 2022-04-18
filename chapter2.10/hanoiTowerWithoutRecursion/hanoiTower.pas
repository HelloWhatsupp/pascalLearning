program hanoiTower;
type
	stickptr = ^stick;
	stick = record
		disk: integer;
		next: stickptr;
	end;
	sticksArr = array [1..3] of stickptr;
procedure getDisksCount(var n: integer);
var
	code: integer;
begin
	if ParamCount < 1 then
	begin
		writeln('Не задано количество дисков');
		halt(1)
	end;

	val (ParamStr(1), n, code);
	if (code <> 0) OR (n < 1) then
	begin
		writeln('Ошибка преобразования или дисков < 1');
		halt(1)
	end;
end;
procedure initSticks(var sticks: array of stickptr);
var
	i: integer;
begin
	for i := 1 to 3 do
		sticks[i] := nil
end;
procedure diskPush(var stick: stickptr; diskSize: integer);
var
	tmp: stickptr;
begin
	new(tmp);
	tmp^.disk := diskSize;
	tmp^.next := stick;
	stick := tmp;
end;
procedure diskPop(var stick: stickptr; var diskSize: integer);
var
	tmp: stickptr;
begin
	tmp := stick;
	diskSize := tmp^.disk;
	stick := tmp^.next;
	dispose(tmp);
end;

procedure getEvenSrcDst(sticks: sticksArr; var src, dst: integer);
var
	tmp: integer;
begin
	if (sticks[src] = nil) then
	begin
		tmp := dst;
		dst := src;
		src := tmp
	end else begin
		if (sticks[dst] = nil) then
			exit
		else if (sticks[src]^.disk > sticks[dst]^.disk) then
		begin
			tmp := dst;
			dst := src;
			src := tmp
		end;
	end;
end;

var
	i: integer;
	step: integer;
	n: integer;
	diskSize: integer;
	src, dst: integer;
	sticks: sticksArr;
begin
	getDisksCount(n);
	initSticks(sticks);
	
	i := n;
	while i > 0 do
	begin
		diskPush(sticks[1], i);
		i := i - 1;
	end;

	step := 0;
	if (n mod 2 = 0) then
	begin
		while (sticks[1] <> nil) OR (sticks[2] <> nil) do
		begin
			step := step + 1;
			if step mod 2 <> 0 then
			begin
				src := (step div 2) mod 3 + 1;
				dst := ((step + 2) div 2) mod 3 + 1
			end else begin
				dst := ((step + 3) div 2) mod 3 + 1;
				getEvenSrcDst(sticks, src, dst)
			end;
			diskPop(sticks[src], diskSize);
			diskPush(sticks[dst], diskSize);
			writeln(diskSize, ': ', src, ' -> ', dst)
		end;
	end else begin
		while (sticks[1] <> nil) OR (sticks[2] <> nil) do
		begin
			step := step + 1;
			if step mod 2 <> 0 then
			begin
				src := 3 - ((step div 2 + 2) mod 3); 
				dst := 3 - (((step + 2) div 2 + 2) mod 3) 
			end else begin
				dst := 3 - (((step + 3) div 2 + 2) mod 3);
				getEvenSrcDst(sticks, src, dst)
			end;

			diskPop(sticks[src], diskSize);
			diskPush(sticks[dst], diskSize);
			writeln(diskSize, ' :', src, ' -> ', dst);
		end; 
	end;
	writeln(step, ' steps was made')
end.
