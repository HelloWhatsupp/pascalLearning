program unitDemo;						{unitDemo.pas}

uses lngtree;

var
	root: treeNodePtr = nil;
	c: char;
	n: longint;
	ok: boolean;
begin
	while not eof do
	begin
		readln(c, n);
		case c of
			'?': begin
				if isInTree(root, n) then
					writeln('Yes!')
				else
					writeln('No')
			end;
			'+': begin
				addToTree(root, n, ok);
				if ok then
					writeln('Successfully written')
				else
					writeln('Something is wrong')
			end;
			else
				writeln('Unknown command "', c, '"')
		end
	end
end.
