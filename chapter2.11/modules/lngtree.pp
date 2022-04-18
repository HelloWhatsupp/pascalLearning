unit lngtree;			{lngtree.pp}

interface

type
	treeNodePtr = ^treeNode;
	treeNode = record
		data: longint;
		left, right: treeNodePtr;
	end;

procedure addToTree(var p: treeNodePtr; val: longint; var ok: boolean);
function isInTree(p: treeNodePtr; val: longint): boolean;

implementation

type
	treeNodePos = ^treeNodePtr;

function searchTree(var p: treeNodePtr; val: longint): treeNodePos;
begin
	if (p = nil) OR (p^.data = val) then
		searchTree := @p
	else
	if val < p^.data then
		searchTree := searchTree(p^.left, val)
	else
	if val > p^.data then
		searchTree := searchTree(p^.right, val)
end;

procedure addToTree(var p: treeNodePtr; val: longint; var ok: boolean);
var
	pos: treeNodePos;
begin
	pos := searchTree(p, val);

	if pos^ = nil then
	begin
		new(pos^);
		pos^^.data := val;
		pos^^.left := nil;
		pos^^.right := nil;
		ok := true
	end
	else
		ok := false
end;

function isInTree(p: treeNodePtr; val: longint): boolean;
begin
	isInTree := searchTree(p, val)^ <> nil 
end;

end.
