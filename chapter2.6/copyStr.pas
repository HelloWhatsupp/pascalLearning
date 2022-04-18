program copyStr;
const
	size = 30;
var
	userStr: string[size];
	copied: string[size];
function copyStr(s: string; startPos, copySize: integer): string;
var
	copied: string;
	i, j: integer;
begin
	j := 0;

	for i := startPos to startPos + copySize do
	begin
		if s[i] = #0 then
		begin
			writeln('i=', i, 'j=', j, 'copiedL=', length(copied));
			break;
		end;
		copied[j] := s[i];
		j := j + 1;
	end;
	copyStr := copied
end;



begin
	readln(userStr);

	copied := copyStr(userStr, 5, 15);

	writeln(copied)
end.
