program typeRecords;
const
	maxCheckPoints = 75;
type
	checkPoint = record
		n: integer;
		latitude, longitude: real;
		hidden: boolean;
		penalty: integer;
	end;
	checkPointsArray = array [1..maxCheckPoints] of checkPoint;
var
	track: checkPointsArray;
procedure createCP(var cp: checkPoint; n: integer; lat, long: real; hid: boolean; pen: integer);
begin
	cp.n := n;
	cp.latitude := lat;
	cp.longitude := long;
	cp.hidden := hid;
	cp.penalty := pen;
end;
procedure readARecord(var rec: checkPoint);
begin
	writeln(rec.n);
	writeln(rec.latitude:5:5);
	writeln(rec.longitude:5:5);
	writeln(rec.hidden);
	writeln(rec.penalty);
end;
begin
	createCP(track[1], 70, 54.6873, 43.3894, false, 15);
	createCP(track[2], 39, 37.68201, 47.1345, true, 5);
	createCP(track[3], 12, 99.3456, 54.32456, true, 20);

	readARecord(track[2]);
end.
