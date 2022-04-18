program userDataTypes;
type
	digit10 = 0..9;
	rainbowColors = (red, orange, yellow, green, blue, indigo, violet);
var
	d: digit10;
	rc: rainbowColors;
	redColor, blueColor: rainbowColors;
begin
	d := 193;
	writeln('Number is ', d);
	
	rc := succ(yellow);
	redColor := red;
	blueColor := blue;
	writeln('The color is ', rc);
	writeln('Position of red is ', ord(redColor));
	writeln('Position of blue is ', ord(blueColor));
	if redColor > blueColor then
		writeln('red is greater then blue')
	else
		writeln('blue is greater then red');
	writeln(pred(redColor));
end.
