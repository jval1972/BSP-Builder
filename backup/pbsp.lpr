///////////////////////////////////////////////////////////////////////////
// pbsp - bsp node builder (Pascal Edition)
// Node builder for DOOM levels (c) 1998 Colin Reed, Lee Killough
//                              (c) 2001 Simon Howard
//                              (c) 2000,2001,2002,2006 Colin Phipps
//                              (c) 2019 Jim Valavanis (Pascal Edition)
///////////////////////////////////////////////////////////////////////////
//
// See the readme.bsp51 folder for information.
//
///////////////////////////////////////////////////////////////////////////

program pbsp;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

{$APPTYPE CONSOLE}

uses
  bsp_helpers in 'bsp_helpers.pas',
  bsp_nodes in 'bsp_nodes.pas';

var
  args: TDSTringList;
  i: integer;

{$R *.res}

begin
  args := TDSTringList.Create;
  for i := 1 to ParamCount do
    args.Add(ParamStr(i));
  _tmain_nodes51(Args);
  args.Free;
end.

