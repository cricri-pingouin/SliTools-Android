unit HeaderFooterTemplate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, FMX.Platform, System.Rtti,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  FMX.Colors, FMX.Layouts, FMX.ListBox, FMX.Grid.Style, FMX.Grid, FMX.Ani,
  FMX.Objects;
// FMX.Platform: clipboard

type
  THeaderFooterForm = class(TForm)
    Header: TToolBar;
    Footer: TToolBar;
    HeaderLabel: TLabel;
    pnlBaseConv: TPanel;
    grpFrom: TGroupBox;
    grpTo: TGroupBox;
    radFromRoman: TRadioButton;
    edtFrom: TEdit;
    btnPaste: TButton;
    radToBin: TRadioButton;
    radToOct: TRadioButton;
    radToDec: TRadioButton;
    radToHex: TRadioButton;
    radToCustom: TRadioButton;
    radToRoman: TRadioButton;
    edtTo: TEdit;
    btnCopy: TButton;
    radFromBin: TRadioButton;
    radFromOct: TRadioButton;
    radFromDec: TRadioButton;
    radFromHex: TRadioButton;
    radFromCustom: TRadioButton;
    edtFromBase: TEdit;
    edtToBase: TEdit;
    pnlPiCalc: TPanel;
    btnStartStop: TButton;
    memScreen: TMemo;
    pnlPwdGen: TPanel;
    btnCopyPi: TButton;
    grpStdPwd: TGroupBox;
    edtRandomPwd: TEdit;
    chkUpper: TCheckBox;
    chkLower: TCheckBox;
    chkNumerals: TCheckBox;
    chkSymbols: TCheckBox;
    edtSymbols: TEdit;
    lblPwdLength: TLabel;
    edtPwdLength: TEdit;
    btnGenPwd: TButton;
    grpSpeakable: TGroupBox;
    lblSyllables: TLabel;
    lblTrailNum: TLabel;
    edtSpeakablePwd: TEdit;
    edtPwdSyllables: TEdit;
    edtPwdTrailNum: TEdit;
    btnSpeakablePwd: TButton;
    trackPanel: TTrackBar;
    pnlColor: TPanel;
    ColorPanel1: TColorPanel;
    lblColorRGB: TLabel;
    lblColorHEX: TLabel;
    lblColorHSV: TLabel;
    lblColorHSL: TLabel;
    lblColorCMYK: TLabel;
    edtRGB: TEdit;
    edtHEX: TEdit;
    edtHSV: TEdit;
    edtHSL: TEdit;
    edtCMYK: TEdit;
    lblR: TLabel;
    lblG: TLabel;
    lblB: TLabel;
    edtR: TEdit;
    edtG: TEdit;
    edtB: TEdit;
    edtCopyRGB: TButton;
    edtCopyHEX: TButton;
    edtCopyHSV: TButton;
    edtCopyHSL: TButton;
    edtCopyCMYK: TButton;
    pnlMPG: TPanel;
    lblKm: TLabel;
    lblMile: TLabel;
    lblLitre: TLabel;
    lblGallon: TLabel;
    lblMpg: TLabel;
    lblLtKm: TLabel;
    edtKm: TEdit;
    edtMile: TEdit;
    edtLitre: TEdit;
    edtGallon: TEdit;
    edtMPG: TEdit;
    edtLtKm: TEdit;
    lblKPL: TLabel;
    edtKPL: TEdit;
    pnlResi: TPanel;
    ColorAnimation1: TColorAnimation;
    Grid1: TGrid;
    Column1: TColumn;
    Column2: TColumn;
    Column3: TColumn;
    Column4: TColumn;
    Image1: TImage;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    edtResiValue: TEdit;
    btnResiCopy: TButton;
    rectColor: TRectangle;
    pnlFactorise: TPanel;
    edtNumber: TEdit;
    edtFactors: TEdit;
    btnFactorise: TButton;
    Label1: TLabel;
    Label2: TLabel;

    procedure ToClipboard(s: string);
    // Pi calculator
    procedure ClearText;
    procedure AddText(const s: string);
    procedure FlushText;
    procedure CalcPi;
    procedure btnStartStopClick(Sender: TObject);
    procedure btnCopyPiClick(Sender: TObject);
    // Base converter
    procedure GoConvert;
    procedure radFromBinChange(Sender: TObject);
    procedure radFromOctChange(Sender: TObject);
    procedure radFromDecChange(Sender: TObject);
    procedure radFromHexChange(Sender: TObject);
    procedure radFromCustomChange(Sender: TObject);
    procedure radFromRomanChange(Sender: TObject);
    procedure radToBinChange(Sender: TObject);
    procedure radToOctChange(Sender: TObject);
    procedure radToDecChange(Sender: TObject);
    procedure radToHexChange(Sender: TObject);
    procedure radToCustomChange(Sender: TObject);
    procedure radToRomanChange(Sender: TObject);
    procedure edtFromTyping(Sender: TObject);
    procedure btnPasteClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    // Password generator
    procedure btnGenPwdClick(Sender: TObject);
    Function RandomPassword(PLen: Integer): String;
    procedure btnSpeakablePwdClick(Sender: TObject);
    // Color picker
    procedure ColorPanel1Change(Sender: TObject);
    procedure CalculateValues();
    procedure edtRChange(Sender: TObject);
    procedure edtGChange(Sender: TObject);
    procedure edtBChange(Sender: TObject);
    procedure edtCopyRGBClick(Sender: TObject);
    procedure edtCopyHEXClick(Sender: TObject);
    procedure edtCopyHSVClick(Sender: TObject);
    procedure edtCopyHSLClick(Sender: TObject);
    procedure edtCopyCMYKClick(Sender: TObject);
    // MPG calculator
    procedure CalcMPG;
    procedure edtKmChange(Sender: TObject);
    procedure edtMileChange(Sender: TObject);
    procedure edtLitreChange(Sender: TObject);
    procedure edtGallonChange(Sender: TObject);
    // Form
    procedure FormCreate(Sender: TObject);
    procedure trackPanelChange(Sender: TObject);
    procedure Grid1DrawColumnCell(Sender: TObject; const Canvas: TCanvas;
      const Column: TColumn; const Bounds: TRectF; const Row: Integer;
      const Value: TValue; const State: TGridDrawStates);
    procedure Column1Tap(Sender: TObject; const Point: TPointF);
    procedure Column1Gesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure Grid1CellClick(const Column: TColumn; const Row: Integer);
    procedure btnResiCopyClick(Sender: TObject);
    procedure btnFactoriseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TIntArray = array of Integer; // Delphi: TArray<Integer>;

var
  HeaderFooterForm: THeaderFooterForm;
  fLineBuffer: string;
  V0, V1, V2: Integer;
  Tolerance: String;

const
  fScreenWidth = 30;

implementation

{$R *.fmx}
// Clipboard

procedure THeaderFooterForm.ToClipboard(s: string);
var
  Svc: IFMXClipboardService;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXClipboardService, Svc)
  then
    Svc.SetClipboard(s);
end;

function FromClipboard(): string;
var
  Svc: IFMXClipboardService;
  Value: TValue;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXClipboardService, Svc)
  then
  begin
    Value := Svc.GetClipboard;
    if not Value.IsEmpty then
      FromClipboard := Value.ToString;
  end;
end;

procedure THeaderFooterForm.btnCopyClick(Sender: TObject);
begin
  ToClipboard(edtTo.Text);
end;

procedure THeaderFooterForm.btnPasteClick(Sender: TObject);
begin
  edtFrom.Text := FromClipboard;
  GoConvert;
end;

Function MyPower(MyValue: Int64; MyExponent: Integer): Int64;
Var
  I: Integer;
Begin
  If MyExponent = 0 Then
  Begin
    Result := 1;
    exit;
  End;
  Result := MyValue;
  For I := 1 To MyExponent - 1 Do
    Result := Result * MyValue;
End;

// Factorise
function findLowestFactor(num: Int64; factors: TIntArray): Integer;
var
  start: Integer;
  I: Int64;
begin
  if Length(factors) > 0 then
    start := factors[High(factors)] // factors[-1] i.e. last entry.
  else
    start := 2;
  I := start;
  while I < num do // Int64 can not be used as index in for-loop' use while loop
  begin
    if num mod I = 0 then
      exit(I);
    Inc(I);
  end;
  exit(0);
end;

procedure findPrimeFactors(num: Int64; var factors: TIntArray);
var
  factor: Integer;
begin
  factor := findLowestFactor(num, factors);
  if factor > 0 then
  begin
    // factors := factors + [factor];
    SetLength(factors, Length(factors) + 1);
    factors[High(factors)] := factor;
    findPrimeFactors(num div factor, factors);
  end
  else
  begin
    // factors := factors + [Integer(num)];
    SetLength(factors, Length(factors) + 1);
    factors[High(factors)] := Integer(num);
  end;
end;

procedure THeaderFooterForm.btnFactoriseClick(Sender: TObject);
var
  factors: TIntArray;
  I, powcount: Integer;
  Result: Int64;
  FactorsString: string;
begin
  // Instead of user input, I use the testValue above.
  findPrimeFactors(strtoint(edtNumber.Text), factors);
  // edtFactors.Text := '';
  // for I in factors do
  // edtFactors.Text := edtFactors.Text + '*' + inttostr(I);
  // edtFactors.Text := Copy(edtFactors.Text, 2, 999);
  // if (edtFactors.Text = edtNumber.Text) then
  // edtFactors.Text := edtNumber.Text + ' is prime';
  powcount := 0;
  for I := 0 to Length(factors) - 1 do
  begin
    if (factors[I] <> factors[I + 1]) then
      FactorsString := FactorsString + '*' + IntToStr(factors[I])
    else
      Inc(powcount);
    if (factors[I] <> factors[I + 1]) and (powcount > 0) then
    begin
      FactorsString := FactorsString + '^' + IntToStr(powcount + 1);
      powcount := 0;
    end;
  end;
  edtFactors.Text := Copy(FactorsString, 2, 999);
  if (edtFactors.Text = edtNumber.Text) then
    edtFactors.Text := edtNumber.Text + ' is prime';
end;

// Resitor code
procedure THeaderFooterForm.Grid1CellClick(const Column: TColumn;
  const Row: Integer);
var
  SelectedColor: TAlphaColor;
  Ohms: Single;
  Prefix: String;
begin
  if (Column = Column4) then
  begin
    case Row of
      0:
        begin
          SelectedColor := TAlphaColors.Brown;
          Tolerance := '± 1%';
        end;
      1:
        begin
          SelectedColor := TAlphaColors.Red;
          Tolerance := '± 2%';
        end;
      2:
        begin
          SelectedColor := TAlphaColors.Green;
          Tolerance := '± 0.5%';
        end;
      3:
        begin
          SelectedColor := TAlphaColors.Blue;
          Tolerance := '± 0.25%';
        end;
      4:
        begin
          SelectedColor := TAlphaColors.Purple;
          Tolerance := '± 0.1%';
        end;
      5:
        begin
          SelectedColor := TAlphaColors.Grey;
          Tolerance := '± 0.05%';
        end;
      6:
        begin
          SelectedColor := TAlphaColors.Gold;
          Tolerance := '± 5%';
        end;
      7:
        begin
          SelectedColor := TAlphaColors.Silver;
          Tolerance := '± 10%';
        end;
    else
      begin
        SelectedColor := $00D6A565;
      end;
      Tolerance := '';
    end;
  end
  else
  begin
    case Row of
      0:
        SelectedColor := TAlphaColors.Black;
      1:
        SelectedColor := TAlphaColors.Brown;
      2:
        SelectedColor := TAlphaColors.Red;
      3:
        SelectedColor := TAlphaColors.Orange;
      4:
        SelectedColor := TAlphaColors.Yellow;
      5:
        SelectedColor := TAlphaColors.Green;
      6:
        SelectedColor := TAlphaColors.Blue;
      7:
        SelectedColor := TAlphaColors.Purple;
      8:
        SelectedColor := TAlphaColors.Grey;
      9:
        SelectedColor := TAlphaColors.White;
    end
  end;
  if (Column = Column1) then
  begin
    Rectangle1.Fill.Color := SelectedColor;
    V0 := Row;
  end
  else if (Column = Column2) then
  begin
    Rectangle2.Fill.Color := SelectedColor;
    V1 := Row;
  end
  else if (Column = Column3) then
  begin
    Rectangle3.Fill.Color := SelectedColor;
    V2 := Row;
  end
  else
    Rectangle4.Fill.Color := SelectedColor;
  // Calculate value
  Ohms := (V0 * 10 + V1) * MyPower(10, V2);
  If Ohms >= 1000 Then
  begin
    Ohms := Ohms / 1000;
    Prefix := ' k';
  End;
  If Ohms >= 1000 Then
  begin
    Ohms := Ohms / 1000;
    Prefix := ' M';
  End;
  edtResiValue.Text := FloatToStr(Round(Ohms * 100) / 100) + Prefix + 'Ω ' +
    Tolerance;
end;

procedure THeaderFooterForm.btnResiCopyClick(Sender: TObject);
begin
  ToClipboard(edtResiValue.Text);
end;

procedure THeaderFooterForm.Grid1DrawColumnCell(Sender: TObject;
  const Canvas: TCanvas; const Column: TColumn; const Bounds: TRectF;
  const Row: Integer; const Value: TValue; const State: TGridDrawStates);
var
  bgBrush: TBrush;
begin
  // if (TGridDrawState.Selected in State) or
  // (TGridDrawState.Focused in State) then
  // begin
  // Grid1.DefaultDrawColumnCell(Canvas, Column, Bounds, Row, Value, State);
  // Exit;
  // end;
  bgBrush := TBrush.Create(TBrushKind.Solid, TAlphaColors.White);
  try
    if (Column <> Column4) then
      case Row of
        0:
          bgBrush.Color := TAlphaColors.Black;
        1:
          bgBrush.Color := TAlphaColors.Brown;
        2:
          bgBrush.Color := TAlphaColors.Red;
        3:
          bgBrush.Color := TAlphaColors.Orange;
        4:
          bgBrush.Color := TAlphaColors.Yellow;
        5:
          bgBrush.Color := TAlphaColors.Green;
        6:
          bgBrush.Color := TAlphaColors.Blue;
        7:
          bgBrush.Color := TAlphaColors.Purple;
        8:
          bgBrush.Color := TAlphaColors.Grey;
        9:
          bgBrush.Color := TAlphaColors.White;
      end
    else
      case Row of
        0:
          bgBrush.Color := TAlphaColors.Brown;
        1:
          bgBrush.Color := TAlphaColors.Red;
        2:
          bgBrush.Color := TAlphaColors.Green;
        3:
          bgBrush.Color := TAlphaColors.Blue;
        4:
          bgBrush.Color := TAlphaColors.Purple;
        5:
          bgBrush.Color := TAlphaColors.Grey;
        6:
          bgBrush.Color := TAlphaColors.Gold;
        7:
          bgBrush.Color := TAlphaColors.Silver;
        8:
          bgBrush.Color := TAlphaColors.White;
        9:
          bgBrush.Color := TAlphaColors.White;
      end;
    Canvas.FillRect(Bounds, 0, 0, [], 1, bgBrush);
  finally
    bgBrush.Free;
  end;
end;

procedure THeaderFooterForm.Column1Gesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  Rectangle1.Fill.Color := TAlphaColors.Blue;
end;

procedure THeaderFooterForm.Column1Tap(Sender: TObject; const Point: TPointF);
begin
  Rectangle1.Fill.Color := TAlphaColors.Blue;
end;

// MPG

procedure THeaderFooterForm.CalcMPG;
begin
  if (edtKm.Text = '') or (edtLitre.Text = '') then
    exit;
  edtLtKm.Text := FloatToStr(Round(strtofloat(edtLitre.Text) /
    strtofloat(edtKm.Text) * 10000) / 100);
  edtKPL.Text := FloatToStr
    (Round(strtofloat(edtKm.Text) / strtofloat(edtLitre.Text) * 100) / 100);
  edtMPG.Text := FloatToStr(Round(strtofloat(edtMile.Text) /
    strtofloat(edtGallon.Text) * 100) / 100);
end;

procedure THeaderFooterForm.edtKmChange(Sender: TObject);
begin
  // 1.609344
  edtMile.Text := FloatToStr(Round(strtofloat(edtKm.Text) / 1.609344 *
    100) / 100);
  CalcMPG;
end;

procedure THeaderFooterForm.edtMileChange(Sender: TObject);
begin
  // 1.609344
  edtKm.Text := FloatToStr(Round(strtofloat(edtMile.Text) * 1.609344 *
    100) / 100);
  CalcMPG;
end;

procedure THeaderFooterForm.edtLitreChange(Sender: TObject);
begin
  // 4.54609
  edtGallon.Text := FloatToStr(Round(strtofloat(edtLitre.Text) / 4.54609 *
    100) / 100);
  CalcMPG;
end;

procedure THeaderFooterForm.edtGallonChange(Sender: TObject);
begin
  // 4.54609
  edtLitre.Text := FloatToStr(Round(strtofloat(edtGallon.Text) * 4.54609 *
    100) / 100);
  CalcMPG;
end;

// Pi calculator

procedure THeaderFooterForm.btnStartStopClick(Sender: TObject);
begin
  CalcPi();
  btnStartStop.Text := 'Calculated 1500 digits!';
  btnStartStop.Enabled := False;
end;

procedure THeaderFooterForm.btnCopyPiClick(Sender: TObject);
begin
  ToClipboard(memScreen.Text);
end;

procedure THeaderFooterForm.ClearText(); // Clear memo and buffer
begin
  memScreen.Lines.Clear();
  fLineBuffer := '';
end;

procedure THeaderFooterForm.AddText(const s: string);
var
  nrChars, nrLeft: Integer;
begin
  nrChars := Length(s);
  nrLeft := fScreenWidth - Length(fLineBuffer); // nr chars left in line
  if (nrChars <= nrLeft) then
    fLineBuffer := fLineBuffer + s
  else
  begin
    fLineBuffer := fLineBuffer + Copy(s, 1, nrLeft);
    memScreen.Lines.Add(fLineBuffer);
    // Make sure to enable Extended syntax in project options!
    fLineBuffer := Copy(s, nrLeft + 1, nrChars - nrLeft);
  end;
end;

procedure THeaderFooterForm.FlushText();
// Output whatever is in the buffer. e.g. stopped
begin
  if (Length(fLineBuffer) > 0) then
  begin
    memScreen.Lines.Add(fLineBuffer);
    fLineBuffer := '';
  end;
end;

Procedure THeaderFooterForm.CalcPi;
var
  // BBC Basic variables. Delphi longint is 32 bits.
  B: array of Int64;
  A, C, D, E, I, L, M, P: Int64;
  // Added for Delphi version
  temp: string;
  j, t: Integer;
begin
  ClearText();
  // Using 5270 gives circa 1500 digits and is quick even on Android, original 5m+ value hangs Android
  M := 5270;
  /// 5368709; // floor( (2^31 - 1)/400 )
  // DIM B%(M%) in BBC Basic declares an array [0..M%], i.e. M% + 1 elements
  SetLength(B, M + 1);
  for I := 0 to M do
    B[I] := 20;
  E := 0;
  L := 2;

  // FOR C% = M% TO 14 STEP -7
  // In Delphi (or at least Delphi 7) the step size in a for loop has to be 1.
  // So the BBC Basic FOR loop has been replaced by a repeat loop.
  C := M;
  repeat
    D := 0;
    A := C * 2 - 1;
    for P := C downto 1 do
    begin
      D := D * P + B[P] * $64; // hex notation copied from BBC version
      B[P] := D mod A;
      D := D div A;
      dec(A, 2);
    end;

    // The BBC CASE statement here amounts to a series of if ... else
    if (D = 99) then
    begin
      E := E * 100 + D;
      Inc(L, 2);
    end
    else if (C = M) then
    begin
      AddText(Format('%2.1f', [1.0 * (D div 100) / 10.0]));
      E := D mod 100;
    end
    else
    begin
      // PRINT RIGHT$(STRING$(L%,"0") + STR$(E% + D% DIV 100),L%);
      // This can't be done so concisely in Delphi 7
      SetLength(temp, L);
      for j := 1 to L do
        temp[j] := '0';
      temp := temp + IntToStr(E + D div 100);
      t := Length(temp);
      AddText(Copy(temp, t - L + 1, L));
      E := D mod 100;
      L := 2;
    end;
    dec(C, 7);
    // Me: added to allow interrupting calculation, not needed for 1500 digits
    // Application.ProcessMessages;
  until (C < 14);
  FlushText();
end;

// Base conversion

Function Dec2Roman(Decimal: Int64): String;
Const
  Numbers: Array [1 .. 13] Of Integer = (1, 4, 5, 9, 10, 40, 50, 90, 100, 400,
    500, 900, 1000);
  Romans: Array [1 .. 13] Of String = ('I', 'IV', 'V', 'IX', 'X', 'XL', 'L',
    'XC', 'C', 'CD', 'D', 'CM', 'M');
Var
  I: Integer;
Begin
  Result := '';
  For I := 13 Downto 1 Do
    While (Decimal >= Numbers[I]) Do
    Begin
      Decimal := Decimal - Numbers[I];
      Result := Result + Romans[I];
    End;
End;

Function Roman2Dec(Roman: String): Int64;
Const
  num = 'IVXLCDM';
  Value: Array [1 .. 7] Of Integer = (1, 5, 10, 50, 100, 500, 1000);
Var
  I: Integer;
Begin
  Result := 0;
  Roman := UpperCase(Roman);
  I := Length(Roman);
  While (I >= 1) Do
  Begin
    If I > 1 Then
    Begin
      If pos(Roman[I], num) <= (pos(Roman[I - 1], num)) Then
      Begin
        Result := Result + Value[pos(Roman[I], num)];
        dec(I);
      End
      Else
      Begin
        Result := Result + Value[pos(Roman[I], num)] -
          Value[pos(Roman[I - 1], num)];
        dec(I, 2);
      End;
    End
    Else
    Begin
      Result := Result + Value[pos(Roman[1], num)];
      dec(I);
    End;
  End;
End;

Function AnyBaseToDecimal(Value: String; Base: Integer): Int64;
Var
  I, j, ValueLength: Integer;
Const
  Digits = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
Begin
  If (Base < 2) Or (Base > 36) Then
  Begin
    showmessage('Sorry, only bases 2 to 36 are supported!');
    Result := 0;
    exit;
  End;
  Value := UpperCase(Value);
  ValueLength := Length(Value);
  Result := 0;
  For I := 1 To ValueLength Do
  Begin
    j := pos(Copy(Value, I, 1), Digits);
    If (j > Base) Or (j = 0) Then
    Begin
      showmessage('Character "' + Copy(Value, I, 1) + '" is incorrect for base '
        + IntToStr(Base));
      Result := 0;
      exit;
    End;
    Result := Result + (j - 1) * MyPower(Base, ValueLength - I);
  End;
End;

Function DecimalToAnyBase(Value: Int64; Base: Integer): String;
Var
  Rest: longint;
Const
  Digits = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
Begin
  If (Base < 2) Or (Base > 36) Then
  Begin
    showmessage('Sorry, only bases 2 to 36 are supported!');
    Result := '';
    exit;
  End;
  Result := '';
  While (Value <> 0) Do
  Begin
    Rest := Value Mod Base;
    Value := Value Div Base;
    Result := Copy(Digits, Rest + 1, 1) + Result;
  End;
  If Result = '' Then
    Result := '0';
End;

Procedure THeaderFooterForm.GoConvert;
Var
  FromInteger: Int64;
  ToString: string;
Begin
  // No From? Clear To and exit
  If Length(PChar(edtFrom.Text)) <= 0 Then
  Begin
    edtTo.Text := '';
    exit;
  End;
  // Get from value as decimal
  if radFromBin.IsChecked then
    FromInteger := AnyBaseToDecimal(edtFrom.Text, 2)
  else if radFromOct.IsChecked then
    FromInteger := AnyBaseToDecimal(edtFrom.Text, 8)
  else if radFromDec.IsChecked then
    FromInteger := StrToInt64(edtFrom.Text)
  else if radFromHex.IsChecked then
    FromInteger := AnyBaseToDecimal(edtFrom.Text, 16)
  else if radFromCustom.IsChecked then
    FromInteger := AnyBaseToDecimal(edtFrom.Text, strtoint(edtFromBase.Text))
  else
    FromInteger := Roman2Dec(edtFrom.Text);
  // Convert
  if radToBin.IsChecked then
    ToString := DecimalToAnyBase(FromInteger, 2)
  else if radToOct.IsChecked then
    ToString := DecimalToAnyBase(FromInteger, 8)
  else if radToDec.IsChecked then
    ToString := IntToStr(FromInteger)
  else if radToHex.IsChecked then
    ToString := DecimalToAnyBase(FromInteger, 16)
  else if radToCustom.IsChecked then
    ToString := DecimalToAnyBase(FromInteger, strtoint(edtToBase.Text))
  else
    ToString := Dec2Roman(FromInteger);
  // Display result
  edtTo.Text := ToString;
End;

procedure THeaderFooterForm.edtFromTyping(Sender: TObject);
begin
  GoConvert;
end;

procedure THeaderFooterForm.radFromBinChange(Sender: TObject);
begin
  GoConvert;
end;

procedure THeaderFooterForm.radFromOctChange(Sender: TObject);
begin
  GoConvert;
end;

procedure THeaderFooterForm.radFromDecChange(Sender: TObject);
begin
  GoConvert;
end;

procedure THeaderFooterForm.radFromHexChange(Sender: TObject);
begin
  GoConvert;
end;

procedure THeaderFooterForm.radFromCustomChange(Sender: TObject);
begin
  GoConvert;
end;

procedure THeaderFooterForm.radFromRomanChange(Sender: TObject);
begin
  GoConvert;
end;

procedure THeaderFooterForm.radToBinChange(Sender: TObject);
begin
  GoConvert;
end;

procedure THeaderFooterForm.radToOctChange(Sender: TObject);
begin
  GoConvert;
end;

procedure THeaderFooterForm.radToDecChange(Sender: TObject);
begin
  GoConvert;
end;

procedure THeaderFooterForm.radToHexChange(Sender: TObject);
begin
  GoConvert;
end;

procedure THeaderFooterForm.radToCustomChange(Sender: TObject);
begin
  GoConvert;
end;

procedure THeaderFooterForm.radToRomanChange(Sender: TObject);
begin
  GoConvert;
end;

// Password

Function GeneratePass(syllables, Numbers: Integer): String;
// ex: GeneratePass(3,4)   =>   'yegise7955'
// ex: GeneratePass(5,0)   =>   'yagotoxa'
// ex: GeneratePass(0,9)   =>   '568597284'

  Function Replicate(Caracter: String; Quant: Integer): String;
  Var
    I: Integer;
  Begin
    Result := '';
    For I := 1 To Quant Do
      Result := Result + Caracter;
  End;

Const
  conso: Array [0 .. 19] Of Char = ('b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l',
    'm', 'n', 'p', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z');
  vocal: Array [0 .. 4] Of Char = ('a', 'e', 'i', 'o', 'u');
Var
  I: Integer;
  si, sf: longint;
  n: String;
Begin
  Result := '';
  Randomize;
  If syllables <> 0 Then
    For I := 1 To syllables Do
    Begin
      Result := Result + conso[Random(19)];
      Result := Result + vocal[Random(4)];
    End;
  If Numbers = 1 Then
    Result := Result + IntToStr(Random(9))
  Else If Numbers >= 2 Then
  Begin
    If Numbers > 9 Then
      Numbers := 9;
    si := strtoint('1' + Replicate('0', Numbers - 1));
    sf := strtoint(Replicate('9', Numbers));
    n := FloatToStr(si + Random(sf));
    Result := Result + Copy(n, 0, Numbers);
  End;
End;

Function THeaderFooterForm.RandomPassword(PLen: Integer): String;
Const
  UpperCase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  Lowercase = 'abcdefghijklmnopqrstuvwxyz';
  Numerals = '0123456789';
Var
  I: Integer;
  str: String;
Begin
  If PLen < 1 Then
  Begin
    showmessage('Password length must be at least 1!');
    exit;
  End;
  str := '';
  If chkUpper.IsChecked Then
    str := str + UpperCase;
  If chkLower.IsChecked Then
    str := str + Lowercase;
  If chkNumerals.IsChecked Then
    str := str + Numerals;
  If chkSymbols.IsChecked Then
    str := str + edtSymbols.Text;
  Result := '';
  Randomize;
  For I := 1 To PLen Do
    Result := Result + str[Random(Length(str)) + 1];
End;

procedure THeaderFooterForm.btnGenPwdClick(Sender: TObject);
begin
  edtRandomPwd.Text := RandomPassword(strtoint(edtPwdLength.Text));
  ToClipboard(edtRandomPwd.Text);
end;

procedure THeaderFooterForm.btnSpeakablePwdClick(Sender: TObject);
begin
  edtSpeakablePwd.Text := GeneratePass(strtoint(edtPwdSyllables.Text),
    strtoint(edtPwdTrailNum.Text));
  ToClipboard(edtSpeakablePwd.Text);
end;

// Color picker

procedure THeaderFooterForm.ColorPanel1Change(Sender: TObject);
var
  ThisColor: TAlphaColor;
  R, G, B: Integer;
begin
  ThisColor := ColorPanel1.Color;
  R := (ThisColor and $FF0000) shr 16;
  G := (ThisColor and $00FF00) shr 8;
  B := (ThisColor and $0000FF);
  edtR.Text := IntToStr(R);
  edtG.Text := IntToStr(G);
  edtB.Text := IntToStr(B);
  CalculateValues;
end;

procedure THeaderFooterForm.edtGChange(Sender: TObject);
begin
  CalculateValues;
end;

procedure THeaderFooterForm.edtRChange(Sender: TObject);
begin
  CalculateValues;
end;

procedure THeaderFooterForm.edtBChange(Sender: TObject);
begin
  CalculateValues;
end;

procedure THeaderFooterForm.edtCopyRGBClick(Sender: TObject);
begin
  ToClipboard(edtRGB.Text);
end;

procedure THeaderFooterForm.edtCopyHEXClick(Sender: TObject);
begin
  ToClipboard(edtHEX.Text);
end;

procedure THeaderFooterForm.edtCopyHSVClick(Sender: TObject);
begin
  ToClipboard(edtHSV.Text);
end;

procedure THeaderFooterForm.edtCopyHSLClick(Sender: TObject);
begin
  ToClipboard(edtHSL.Text);
end;

procedure THeaderFooterForm.edtCopyCMYKClick(Sender: TObject);
begin
  ToClipboard(edtCMYK.Text);
end;

procedure THeaderFooterForm.CalculateValues();
var
  ThisColor: TAlphaColor;
  R, G, B: Integer;
  // CMYK
  C, M, Y, Rp, Gp, Bp, Kp: Single;
  // HSV
  RGBmin, RGBmax, RGBdelta, H, s, V: Single;
  // HSL
  Lum, Hue, Sat: Single;
begin
  R := strtoint(edtR.Text);
  G := strtoint(edtG.Text);
  B := strtoint(edtB.Text);
  ThisColor := $FF000000 + R shl 16 + G shl 8 + B;
  ColorPanel1.Color := ThisColor;
  rectColor.Fill.Color := ThisColor;
  // HSV and HSL
  RGBmin := R;
  if G < RGBmin then
    RGBmin := G;
  if B < RGBmin then
    RGBmin := B;
  RGBmax := R;
  if G > RGBmax then
    RGBmax := G;
  if B > RGBmax then
    RGBmax := B;
  RGBdelta := RGBmax - RGBmin;
  // Normalised values for CMYK and HSL
  Rp := R / 255;
  Gp := G / 255;
  Bp := B / 255;
  // CMYK
  Kp := 1 - RGBmax / 255;
  if (Kp = 1) then
  begin
    C := 0;
    M := 0;
    Y := 0;
  end
  else
  begin
    C := (1 - Rp - Kp) / (1 - Kp);
    M := (1 - Gp - Kp) / (1 - Kp);
    Y := (1 - Bp - Kp) / (1 - Kp);
  end;

  // HSV
  H := 0.0;
  V := RGBmax;
  if (RGBmin = RGBmax) then
  begin
    H := 0.0;
    s := 0.0;
  end
  else
  begin
    if (RGBmax > 0) then
      s := 255.0 * RGBdelta / RGBmax
    else
      s := 0.0;
    if (s <> 0.0) then
    begin
      if R = RGBmax then
        H := (G - B) / RGBdelta
      else if G = RGBmax then
        H := 2.0 + (B - R) / RGBdelta
      else if B = RGBmax then
        H := 4.0 + (R - G) / RGBdelta
    end
    else
      H := -1.0;
    H := H * 60;
    if H < 0.0 then
      H := H + 360.0;
  end;
  // HSL
  Lum := (RGBmax + RGBmin) / 510; // Average normalised, = / 2 / 255
  if (RGBmin = RGBmax) then
    Sat := 0.0
  else
    Sat := RGBdelta / 255 / (1 - Abs(2 * Lum - 1));
  Sat := Round(Sat * 100);
  Lum := Round(Lum * 100);
  Hue := H;
  // Copyable values
  edtRGB.Text := 'RGB(' + edtR.Text + ',' + edtG.Text + ',' + edtB.Text + ')';
  edtHEX.Text := '#' + IntToHex(R, 2) + IntToHex(G, 2) + IntToHex(B, 2);
  edtHSV.Text := 'HSV(' + IntToStr(Round(H)) + ',' +
    IntToStr(Round(s * 100 / 255)) + ',' + IntToStr(Round(V * 100 / 255)) + ')';
  edtHSL.Text := 'HSL(' + IntToStr(Round(Hue)) + ',' + IntToStr(Round(Sat)) +
    ',' + IntToStr(Round(Lum)) + ')';
  edtCMYK.Text := 'CMYK(' + IntToStr(Round(C * 100)) + ',' +
    IntToStr(Round(M * 100)) + ',' + IntToStr(Round(Y * 100)) + ',' +
    IntToStr(Round(Kp * 100)) + ')';
end;

// Panels

procedure THeaderFooterForm.trackPanelChange(Sender: TObject);
var
  component: TComponent;
begin
  for component in HeaderFooterForm do
    if (component is TPanel) then
      TPanel(component).Visible := False;
  case Round(trackPanel.Value) of
    0:
      begin
        pnlBaseConv.Visible := true;
        HeaderLabel.Text := 'SliTools: base converter';
      end;
    1:
      begin
        pnlPiCalc.Visible := true;
        HeaderLabel.Text := 'SliTools: Pi calculator';
      end;
    2:
      begin
        pnlPwdGen.Visible := true;
        HeaderLabel.Text := 'SliTools: password generator';
      end;
    3:
      begin
        pnlColor.Visible := true;
        HeaderLabel.Text := 'SliTools: color picker';
      end;
    4:
      begin
        pnlMPG.Visible := true;
        HeaderLabel.Text := 'SliTools: mileage calculator';
      end;
    5:
      begin
        pnlResi.Visible := true;
        HeaderLabel.Text := 'SliTools: resistor code';
      end;
    6:
      begin
        pnlFactorise.Visible := true;
        HeaderLabel.Text := 'SliTools: factorise';
      end;
  end;
end;

// Form

procedure THeaderFooterForm.FormCreate(Sender: TObject);
var
  I: Integer;
  component: TComponent;
begin
  I := -1;
  for component in HeaderFooterForm do
    if (component is TPanel) then
    begin
      TPanel(component).Position.X := 0;
      TPanel(component).Position.Y := Header.Height;
      TPanel(component).Size.Width := HeaderFooterForm.Width;
      // TPanel(component).Size.Height := HeaderFooterForm.Height - Header.Height - Footer.Height - 50;
      TPanel(component).Visible := False;
      Inc(I);
    end;
  trackPanel.Width := Footer.Width - 16;
  trackPanel.Max := I;
  pnlBaseConv.Visible := true;
  HeaderLabel.Text := 'SliTools: base converter';
  V0 := 2;
  V1 := 2;
  V2 := 2;
  Tolerance := ' ± 2%';
end;

end.
