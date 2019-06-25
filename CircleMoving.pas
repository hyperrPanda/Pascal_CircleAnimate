program CircleMoving;
uses SwinGame, sgTypes;
const
CIRCLE_RADIUS = 150;    //Using Constants to avoid Magic Numbers
procedure Main();
var
x,y : Integer;
begin
openGraphicsWindow('Circle Moving', 800, 600);
x := 400;
y := 300;
REPEAT
//Moving The circle Logic
If KeyDown(LeftKey) and (ScreenWidth()-x + CIRCLE_RADIUS < ScreenWidth()) then
x := x-1;
if KeyDown(RightKey) and (x + CIRCLE_RADIUS < ScreenWidth()) then
x := x+1;
If KeyDown(DownKey) and (y + CIRCLE_RADIUS < ScreenHeight()) then
y := y+1;
If KeyDown(UpKey) and (ScreenHeight()-y + CIRCLE_RADIUS < ScreenHeight()) then
y := y-1;
///end of Logic////
ClearScreen();
DrawCircle(ColorGreen, x, y, CIRCLE_RADIUS);
  ProcessEvents();
  RefreshScreen(60);     //to mainatin 60 fps
UNTIL WindowCloseRequested() ;
end;

begin
Main();
end.
