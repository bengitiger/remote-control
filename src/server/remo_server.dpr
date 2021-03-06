program remo_server;

uses
  Windows,
  ThreadUtils,
  AnimationControl,
  DrawFullWindow,
  Vcl.Forms,
  _fmMain in '_fmMain.pas' {fmMain},
  Config in '..\..\lib\Config.pas';

{$R *.res}

begin
  SetPriorityClass( GetCurrentProcess, REALTIME_PRIORITY_CLASS );
  SetThreadPriorityFast;

  DisableAnimation;
  DisableDrawFullWindow;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;

  RestoreAnimation;
  RestoreDrawFullWindow;
end.
