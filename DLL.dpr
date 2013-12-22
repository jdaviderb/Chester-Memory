library DLL;


uses
  System.SysUtils,
  System.Classes,
  winapi.windows,
  Unit1 in 'Unit1.pas' {F};

{$R *.res}
ProCedure DjcheatsTT(CONST PT: Pointer);
VAR
PID : Cardinal;
begin
CreateThread(nil,0,pt,pt,0,pid);
end;





Procedure VGSFORM;//;export;
begin
Form1 := Tform1.Create(nil);
Form1.ShowModal;


end;
//exports VGSFORM;

begin
DjcheatsTT(@VGSForm);
end.
