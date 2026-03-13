unit FprnM1C_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 34747 $
// File generated on 01.11.2018 4:39:49 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\ATOL\Drivers8\Bin_Free\FprnM1C.dll (1)
// LIBID: {E4795282-3564-11D4-8E97-0080C87C930A}
// LCID: 0
// Helpfile: 
// HelpString: ����: ������� ��� v.8
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Errors:
//   Hint: Member 'Operator' of 'IFprnMOP' changed to 'Operator_'
//   Error creating palette bitmap of (TATOL_KKM_1C) : Error reading control bitmap
//   Error creating palette bitmap of (TFprnM45) : Error reading control bitmap
//   Error creating palette bitmap of (TFprnM8) : Error reading control bitmap
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  FprnM1CMajorVersion = 8;
  FprnM1CMinorVersion = 0;

  LIBID_FprnM1C: TGUID = '{E4795282-3564-11D4-8E97-0080C87C930A}';

  IID_IATOL_OPOS: TGUID = '{9CCFD51B-6AE4-4CC7-B492-221B111E3D3E}';
  DIID_IATOL_OPOSEvents: TGUID = '{08049332-DBBB-4670-A3F4-8876A7012A18}';
  IID_IATOL_Fptr: TGUID = '{B19C47FB-540B-4CB2-B630-9815310540D8}';
  CLASS_ATOL_Fptr: TGUID = '{8D1BDF4B-FB5F-4FF0-BBB5-16EED5EA853E}';
  IID_IATOL_Cash: TGUID = '{231239FF-5C8E-4504-BFEA-54117B5686EB}';
  CLASS_ATOL_Cash: TGUID = '{A1021070-2229-46D6-B70D-1F1993734CFF}';
  IID_IATOL_KKM_1C: TGUID = '{1BAC54F7-7C3A-4B40-8391-959AE01F5E13}';
  CLASS_ATOL_KKM_1C: TGUID = '{94327594-E4CF-4780-8CBE-AC34ECF749A2}';
  IID_IFprnMAB: TGUID = '{A892E16E-9F34-446D-B817-F2EB9E9F40FA}';
  IID_IFprnMCD: TGUID = '{23EF7AC0-0214-4CBC-88B3-DF92D96F2207}';
  IID_IFprnMEF: TGUID = '{EAA731C3-753B-43AC-A0FE-EC4787D46556}';
  IID_IFprnMGH: TGUID = '{D37397BD-913E-4749-9894-ABFA18942A07}';
  IID_IFprnMIJ: TGUID = '{909E2397-B951-4DE3-B109-1BC268A35C36}';
  IID_IFprnMKL: TGUID = '{780B3263-999D-4296-92B7-EDF87CF992F4}';
  IID_IFprnMMN: TGUID = '{2FC35006-4625-4485-9F77-02608DFD993A}';
  IID_IFprnMOP: TGUID = '{3C4CB351-D6B1-41DC-A400-78AC3E2C45A5}';
  IID_IFprnMQR: TGUID = '{CABF3767-0227-4992-81B9-A3FCC33F59FC}';
  IID_IFprnMST: TGUID = '{9D15E4B0-F810-4C1C-AF32-D565197BB498}';
  IID_IFprnMUV: TGUID = '{4F29BE13-9903-45F6-A842-06CC29D61012}';
  IID_IFprnMWX: TGUID = '{725917FF-F687-4CB3-9ECC-EAA056623700}';
  IID_IFprnMYZ: TGUID = '{8744B087-6CED-46CD-95DC-8315173CF3C7}';
  IID_IFprnM45: TGUID = '{E4795280-3564-11D4-8E97-0080C87C930A}';
  CLASS_FprnM45: TGUID = '{E4795281-3564-11D4-8E97-0080C87C930A}';
  CLASS_FprnM8: TGUID = '{D2E5F71A-3DC8-4657-A093-D535A8021090}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IATOL_OPOS = interface;
  IATOL_OPOSDisp = dispinterface;
  IATOL_OPOSEvents = dispinterface;
  IATOL_Fptr = interface;
  IATOL_FptrDisp = dispinterface;
  IATOL_Cash = interface;
  IATOL_CashDisp = dispinterface;
  IATOL_KKM_1C = interface;
  IATOL_KKM_1CDisp = dispinterface;
  IFprnMAB = interface;
  IFprnMABDisp = dispinterface;
  IFprnMCD = interface;
  IFprnMCDDisp = dispinterface;
  IFprnMEF = interface;
  IFprnMEFDisp = dispinterface;
  IFprnMGH = interface;
  IFprnMGHDisp = dispinterface;
  IFprnMIJ = interface;
  IFprnMIJDisp = dispinterface;
  IFprnMKL = interface;
  IFprnMKLDisp = dispinterface;
  IFprnMMN = interface;
  IFprnMMNDisp = dispinterface;
  IFprnMOP = interface;
  IFprnMOPDisp = dispinterface;
  IFprnMQR = interface;
  IFprnMQRDisp = dispinterface;
  IFprnMST = interface;
  IFprnMSTDisp = dispinterface;
  IFprnMUV = interface;
  IFprnMUVDisp = dispinterface;
  IFprnMWX = interface;
  IFprnMWXDisp = dispinterface;
  IFprnMYZ = interface;
  IFprnMYZDisp = dispinterface;
  IFprnM45 = interface;
  IFprnM45Disp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ATOL_Fptr = IATOL_Fptr;
  ATOL_Cash = IATOL_Cash;
  ATOL_KKM_1C = IATOL_KKM_1C;
  FprnM45 = IFprnM45;
  FprnM8 = IFprnM45;


// *********************************************************************//
// Interface: IATOL_OPOS
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9CCFD51B-6AE4-4CC7-B492-221B111E3D3E}
// *********************************************************************//
  IATOL_OPOS = interface(IDispatch)
    ['{9CCFD51B-6AE4-4CC7-B492-221B111E3D3E}']
    function Claim(Timeout: Integer): Integer; safecall;
    function UpdateFirmware(const FirmwareFileName: WideString): Integer; safecall;
    function CompareFirmwareVersion(const FirmwareFileName: WideString; out Result_: Integer): Integer; safecall;
    function UpdateStatistics(const StatisticsBuffer: WideString): Integer; safecall;
    function RetrieveStatistics(var StatisticsBuffer: WideString): Integer; safecall;
    function ResetStatistics(const StatisticsBuffer: WideString): Integer; safecall;
    function CloseService: Integer; safecall;
    function ClaimDevice(Timeout: Integer): Integer; safecall;
    function ReleaseDevice: Integer; safecall;
    function CheckHealth(Level: Integer): Integer; safecall;
    function OpenService(const DeviceClass: WideString; const DeviceName: WideString; 
                         const pDispatch: IDispatch): Integer; safecall;
    function GetPropertyNumber(PropIndex: Integer): Integer; safecall;
    procedure SetPropertyNumber(PropIndex: Integer; Number: Integer); safecall;
    function GetPropertyString(PropIndex: Integer): WideString; safecall;
    procedure SetPropertyString(PropIndex: Integer; const String_: WideString); safecall;
    function ClearOutput: Integer; safecall;
    function DirectIO(Command: Integer; var pData: Integer; var pString: WideString): Integer; safecall;
    function ClearInput: Integer; safecall;
    function COFreezeEvents(Freeze: Integer): Integer; safecall;
    function ClearInputProperties: Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IATOL_OPOSDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9CCFD51B-6AE4-4CC7-B492-221B111E3D3E}
// *********************************************************************//
  IATOL_OPOSDisp = dispinterface
    ['{9CCFD51B-6AE4-4CC7-B492-221B111E3D3E}']
    function Claim(Timeout: Integer): Integer; dispid 276;
    function UpdateFirmware(const FirmwareFileName: WideString): Integer; dispid 275;
    function CompareFirmwareVersion(const FirmwareFileName: WideString; out Result_: Integer): Integer; dispid 274;
    function UpdateStatistics(const StatisticsBuffer: WideString): Integer; dispid 273;
    function RetrieveStatistics(var StatisticsBuffer: WideString): Integer; dispid 272;
    function ResetStatistics(const StatisticsBuffer: WideString): Integer; dispid 271;
    function CloseService: Integer; dispid 201;
    function ClaimDevice(Timeout: Integer): Integer; dispid 203;
    function ReleaseDevice: Integer; dispid 204;
    function CheckHealth(Level: Integer): Integer; dispid 210;
    function OpenService(const DeviceClass: WideString; const DeviceName: WideString; 
                         const pDispatch: IDispatch): Integer; dispid 205;
    function GetPropertyNumber(PropIndex: Integer): Integer; dispid 206;
    procedure SetPropertyNumber(PropIndex: Integer; Number: Integer); dispid 207;
    function GetPropertyString(PropIndex: Integer): WideString; dispid 208;
    procedure SetPropertyString(PropIndex: Integer; const String_: WideString); dispid 209;
    function ClearOutput: Integer; dispid 211;
    function DirectIO(Command: Integer; var pData: Integer; var pString: WideString): Integer; dispid 212;
    function ClearInput: Integer; dispid 202;
    function COFreezeEvents(Freeze: Integer): Integer; dispid 213;
    function ClearInputProperties: Integer; dispid 278;
  end;

// *********************************************************************//
// DispIntf:  IATOL_OPOSEvents
// Flags:     (4096) Dispatchable
// GUID:      {08049332-DBBB-4670-A3F4-8876A7012A18}
// *********************************************************************//
  IATOL_OPOSEvents = dispinterface
    ['{08049332-DBBB-4670-A3F4-8876A7012A18}']
    procedure DirectIOEvent(EventNumber: Integer; var pData: Integer; var pString: WideString); dispid 2;
    procedure ErrorEvent(ResultCode: Integer; ResultCodeExtended: Integer; ErrorLocus: Integer; 
                         var pErrorResponse: Integer); dispid 3;
    procedure OutputCompleteEvent(OutputID: Integer); dispid 4;
    procedure StatusUpdateEvent(Data: Integer); dispid 5;
  end;

// *********************************************************************//
// Interface: IATOL_Fptr
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B19C47FB-540B-4CB2-B630-9815310540D8}
// *********************************************************************//
  IATOL_Fptr = interface(IATOL_OPOS)
    ['{B19C47FB-540B-4CB2-B630-9815310540D8}']
    function BeginFiscalDocument(DocumentAmount: Integer): Integer; safecall;
    function BeginFiscalReceipt(PrintHeader: WordBool): Integer; safecall;
    function BeginFixedOutput(Station: Integer; DocumentType: Integer): Integer; safecall;
    function BeginInsertion(Timeout: Integer): Integer; safecall;
    function BeginItemList(VatID: Integer): Integer; safecall;
    function BeginNonFiscal: Integer; safecall;
    function BeginRemoval(Timeout: Integer): Integer; safecall;
    function BeginTraining: Integer; safecall;
    function ClearError: Integer; safecall;
    function EndFiscalDocument: Integer; safecall;
    function EndFiscalReceipt(PrintHeader: WordBool): Integer; safecall;
    function EndFixedOutput: Integer; safecall;
    function EndInsertion: Integer; safecall;
    function EndItemList: Integer; safecall;
    function EndNonFiscal: Integer; safecall;
    function EndRemoval: Integer; safecall;
    function EndTraining: Integer; safecall;
    function GetData(DataItem: Integer; var OptArgs: Integer; var Data: WideString): Integer; safecall;
    function GetDate(var Date: WideString): Integer; safecall;
    function GetTotalizer(VatID: Integer; OptArgs: Integer; out Data: WideString): Integer; safecall;
    function GetVatEntry(VatID: Integer; OptArgs: Integer; out VatRate: Integer): Integer; safecall;
    function PrintDuplicateReceipt: Integer; safecall;
    function PrintFiscalDocumentLine(const DocumentLine: WideString): Integer; safecall;
    function PrintFixedOutput(DocumentType: Integer; LineNumber: Integer; const Data: WideString): Integer; safecall;
    function PrintNormal(Station: Integer; const Data: WideString): Integer; safecall;
    function PrintPeriodicTotalsReport(const Date1: WideString; const Date2: WideString): Integer; safecall;
    function PrintPowerLossReport: Integer; safecall;
    function PrintRecItem(const Description: WideString; Price: Currency; Quantity: Integer; 
                          VatInfo: Integer; UnitPrice: Currency; const UnitName: WideString): Integer; safecall;
    function PrintRecItemAdjustment(AdjustmentType: Integer; const Description: WideString; 
                                    Amount: Currency; VatInfo: Integer): Integer; safecall;
    function PrintRecMessage(const Message: WideString): Integer; safecall;
    function PrintRecNotPaid(const Description: WideString; Amount: Currency): Integer; safecall;
    function PrintRecRefund(const Description: WideString; Amount: Currency; VatInfo: Integer): Integer; safecall;
    function PrintRecSubtotal(Amount: Currency): Integer; safecall;
    function PrintRecSubtotalAdjustment(AdjustmentType: Integer; const Description: WideString; 
                                        Amount: Currency): Integer; safecall;
    function PrintRecTotal(Total: Currency; Payment: Currency; const Description: WideString): Integer; safecall;
    function PrintRecVoid(const Description: WideString): Integer; safecall;
    function PrintRecVoidItem(const Description: WideString; Amount: Currency; Quantity: Integer; 
                              AdjustmentType: Integer; Adjustment: Currency; VatInfo: Integer): Integer; safecall;
    function PrintReport(ReportType: Integer; const StartNum: WideString; const EndNum: WideString): Integer; safecall;
    function PrintXReport: Integer; safecall;
    function PrintZReport: Integer; safecall;
    function ResetPrinter: Integer; safecall;
    function SetDate(const Date: WideString): Integer; safecall;
    function SetHeaderLine(LineNumber: Integer; const Text: WideString; DoubleWidth: WordBool): Integer; safecall;
    function SetPOSID(const POSID: WideString; const CashierID: WideString): Integer; safecall;
    function SetStoreFiscalID(const ID: WideString): Integer; safecall;
    function SetTrailerLine(LineNumber: Integer; const Text: WideString; DoubleWidth: WordBool): Integer; safecall;
    function SetVatTable: Integer; safecall;
    function SetVatValue(VatID: Integer; const VatValue: WideString): Integer; safecall;
    function VerifyItem(const ItemName: WideString; VatID: Integer): Integer; safecall;
    function PrintRecCash(Amount: Currency): Integer; safecall;
    function PrintRecItemFuel(const Description: WideString; Price: Currency; Quantity: Integer; 
                              VatInfo: Integer; UnitPrice: Currency; const UnitName: WideString; 
                              SpecialTax: Currency; const SpecialTaxName: WideString): Integer; safecall;
    function PrintRecItemFuelVoid(const Description: WideString; Price: Currency; VatInfo: Integer; 
                                  SpecialTax: Currency): Integer; safecall;
    function PrintRecPackageAdjustment(AdjustmentType: Integer; const Description: WideString; 
                                       const VatAdjustment: WideString): Integer; safecall;
    function PrintRecPackageAdjustVoid(AdjustmentType: Integer; const VatAdjustment: WideString): Integer; safecall;
    function PrintRecRefundVoid(const Description: WideString; Amount: Currency; VatInfo: Integer): Integer; safecall;
    function PrintRecSubtotalAdjustVoid(AdjustmentType: Integer; Amount: Currency): Integer; safecall;
    function PrintRecTaxID(const TaxId: WideString): Integer; safecall;
    function SetCurrency(NewCurrency: Integer): Integer; safecall;
    function PrintRecItemVoid(const Description: WideString; Price: Currency; Quantity: Integer; 
                              VatInfo: Integer; UnitPrice: Currency; const UnitName: WideString): Integer; safecall;
    function PrintRecItemAdjustmentVoid(AdjustmentType: Integer; const Description: WideString; 
                                        Amount: Currency; VatInfo: Integer): Integer; safecall;
    function PrintRecItemRefund(const Description: WideString; Amount: Currency; Quantity: Integer; 
                                VatInfo: Integer; unitAmount: Currency; const UnitName: WideString): Integer; safecall;
    function PrintRecItemRefundVoid(const Description: WideString; Amount: Currency; 
                                    Quantity: Integer; VatInfo: Integer; unitAmount: Currency; 
                                    const UnitName: WideString): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IATOL_FptrDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B19C47FB-540B-4CB2-B630-9815310540D8}
// *********************************************************************//
  IATOL_FptrDisp = dispinterface
    ['{B19C47FB-540B-4CB2-B630-9815310540D8}']
    function BeginFiscalDocument(DocumentAmount: Integer): Integer; dispid 302;
    function BeginFiscalReceipt(PrintHeader: WordBool): Integer; dispid 214;
    function BeginFixedOutput(Station: Integer; DocumentType: Integer): Integer; dispid 215;
    function BeginInsertion(Timeout: Integer): Integer; dispid 216;
    function BeginItemList(VatID: Integer): Integer; dispid 217;
    function BeginNonFiscal: Integer; dispid 218;
    function BeginRemoval(Timeout: Integer): Integer; dispid 219;
    function BeginTraining: Integer; dispid 220;
    function ClearError: Integer; dispid 221;
    function EndFiscalDocument: Integer; dispid 222;
    function EndFiscalReceipt(PrintHeader: WordBool): Integer; dispid 223;
    function EndFixedOutput: Integer; dispid 224;
    function EndInsertion: Integer; dispid 225;
    function EndItemList: Integer; dispid 226;
    function EndNonFiscal: Integer; dispid 227;
    function EndRemoval: Integer; dispid 228;
    function EndTraining: Integer; dispid 229;
    function GetData(DataItem: Integer; var OptArgs: Integer; var Data: WideString): Integer; dispid 230;
    function GetDate(var Date: WideString): Integer; dispid 231;
    function GetTotalizer(VatID: Integer; OptArgs: Integer; out Data: WideString): Integer; dispid 232;
    function GetVatEntry(VatID: Integer; OptArgs: Integer; out VatRate: Integer): Integer; dispid 233;
    function PrintDuplicateReceipt: Integer; dispid 234;
    function PrintFiscalDocumentLine(const DocumentLine: WideString): Integer; dispid 235;
    function PrintFixedOutput(DocumentType: Integer; LineNumber: Integer; const Data: WideString): Integer; dispid 236;
    function PrintNormal(Station: Integer; const Data: WideString): Integer; dispid 237;
    function PrintPeriodicTotalsReport(const Date1: WideString; const Date2: WideString): Integer; dispid 238;
    function PrintPowerLossReport: Integer; dispid 239;
    function PrintRecItem(const Description: WideString; Price: Currency; Quantity: Integer; 
                          VatInfo: Integer; UnitPrice: Currency; const UnitName: WideString): Integer; dispid 240;
    function PrintRecItemAdjustment(AdjustmentType: Integer; const Description: WideString; 
                                    Amount: Currency; VatInfo: Integer): Integer; dispid 241;
    function PrintRecMessage(const Message: WideString): Integer; dispid 242;
    function PrintRecNotPaid(const Description: WideString; Amount: Currency): Integer; dispid 243;
    function PrintRecRefund(const Description: WideString; Amount: Currency; VatInfo: Integer): Integer; dispid 244;
    function PrintRecSubtotal(Amount: Currency): Integer; dispid 245;
    function PrintRecSubtotalAdjustment(AdjustmentType: Integer; const Description: WideString; 
                                        Amount: Currency): Integer; dispid 246;
    function PrintRecTotal(Total: Currency; Payment: Currency; const Description: WideString): Integer; dispid 247;
    function PrintRecVoid(const Description: WideString): Integer; dispid 248;
    function PrintRecVoidItem(const Description: WideString; Amount: Currency; Quantity: Integer; 
                              AdjustmentType: Integer; Adjustment: Currency; VatInfo: Integer): Integer; dispid 249;
    function PrintReport(ReportType: Integer; const StartNum: WideString; const EndNum: WideString): Integer; dispid 250;
    function PrintXReport: Integer; dispid 251;
    function PrintZReport: Integer; dispid 252;
    function ResetPrinter: Integer; dispid 253;
    function SetDate(const Date: WideString): Integer; dispid 254;
    function SetHeaderLine(LineNumber: Integer; const Text: WideString; DoubleWidth: WordBool): Integer; dispid 255;
    function SetPOSID(const POSID: WideString; const CashierID: WideString): Integer; dispid 256;
    function SetStoreFiscalID(const ID: WideString): Integer; dispid 257;
    function SetTrailerLine(LineNumber: Integer; const Text: WideString; DoubleWidth: WordBool): Integer; dispid 258;
    function SetVatTable: Integer; dispid 259;
    function SetVatValue(VatID: Integer; const VatValue: WideString): Integer; dispid 260;
    function VerifyItem(const ItemName: WideString; VatID: Integer): Integer; dispid 261;
    function PrintRecCash(Amount: Currency): Integer; dispid 262;
    function PrintRecItemFuel(const Description: WideString; Price: Currency; Quantity: Integer; 
                              VatInfo: Integer; UnitPrice: Currency; const UnitName: WideString; 
                              SpecialTax: Currency; const SpecialTaxName: WideString): Integer; dispid 263;
    function PrintRecItemFuelVoid(const Description: WideString; Price: Currency; VatInfo: Integer; 
                                  SpecialTax: Currency): Integer; dispid 264;
    function PrintRecPackageAdjustment(AdjustmentType: Integer; const Description: WideString; 
                                       const VatAdjustment: WideString): Integer; dispid 265;
    function PrintRecPackageAdjustVoid(AdjustmentType: Integer; const VatAdjustment: WideString): Integer; dispid 266;
    function PrintRecRefundVoid(const Description: WideString; Amount: Currency; VatInfo: Integer): Integer; dispid 267;
    function PrintRecSubtotalAdjustVoid(AdjustmentType: Integer; Amount: Currency): Integer; dispid 268;
    function PrintRecTaxID(const TaxId: WideString): Integer; dispid 269;
    function SetCurrency(NewCurrency: Integer): Integer; dispid 270;
    function PrintRecItemVoid(const Description: WideString; Price: Currency; Quantity: Integer; 
                              VatInfo: Integer; UnitPrice: Currency; const UnitName: WideString): Integer; dispid 279;
    function PrintRecItemAdjustmentVoid(AdjustmentType: Integer; const Description: WideString; 
                                        Amount: Currency; VatInfo: Integer): Integer; dispid 280;
    function PrintRecItemRefund(const Description: WideString; Amount: Currency; Quantity: Integer; 
                                VatInfo: Integer; unitAmount: Currency; const UnitName: WideString): Integer; dispid 281;
    function PrintRecItemRefundVoid(const Description: WideString; Amount: Currency; 
                                    Quantity: Integer; VatInfo: Integer; unitAmount: Currency; 
                                    const UnitName: WideString): Integer; dispid 282;
    function Claim(Timeout: Integer): Integer; dispid 276;
    function UpdateFirmware(const FirmwareFileName: WideString): Integer; dispid 275;
    function CompareFirmwareVersion(const FirmwareFileName: WideString; out Result_: Integer): Integer; dispid 274;
    function UpdateStatistics(const StatisticsBuffer: WideString): Integer; dispid 273;
    function RetrieveStatistics(var StatisticsBuffer: WideString): Integer; dispid 272;
    function ResetStatistics(const StatisticsBuffer: WideString): Integer; dispid 271;
    function CloseService: Integer; dispid 201;
    function ClaimDevice(Timeout: Integer): Integer; dispid 203;
    function ReleaseDevice: Integer; dispid 204;
    function CheckHealth(Level: Integer): Integer; dispid 210;
    function OpenService(const DeviceClass: WideString; const DeviceName: WideString; 
                         const pDispatch: IDispatch): Integer; dispid 205;
    function GetPropertyNumber(PropIndex: Integer): Integer; dispid 206;
    procedure SetPropertyNumber(PropIndex: Integer; Number: Integer); dispid 207;
    function GetPropertyString(PropIndex: Integer): WideString; dispid 208;
    procedure SetPropertyString(PropIndex: Integer; const String_: WideString); dispid 209;
    function ClearOutput: Integer; dispid 211;
    function DirectIO(Command: Integer; var pData: Integer; var pString: WideString): Integer; dispid 212;
    function ClearInput: Integer; dispid 202;
    function COFreezeEvents(Freeze: Integer): Integer; dispid 213;
    function ClearInputProperties: Integer; dispid 278;
  end;

// *********************************************************************//
// Interface: IATOL_Cash
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {231239FF-5C8E-4504-BFEA-54117B5686EB}
// *********************************************************************//
  IATOL_Cash = interface(IATOL_OPOS)
    ['{231239FF-5C8E-4504-BFEA-54117B5686EB}']
    function OpenDrawer: Integer; safecall;
    function WaitForDrawerClose(BeepTimeout: Integer; BeepFrequency: Integer; 
                                BeepDuration: Integer; BeepDelay: Integer): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IATOL_CashDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {231239FF-5C8E-4504-BFEA-54117B5686EB}
// *********************************************************************//
  IATOL_CashDisp = dispinterface
    ['{231239FF-5C8E-4504-BFEA-54117B5686EB}']
    function OpenDrawer: Integer; dispid 251;
    function WaitForDrawerClose(BeepTimeout: Integer; BeepFrequency: Integer; 
                                BeepDuration: Integer; BeepDelay: Integer): Integer; dispid 252;
    function Claim(Timeout: Integer): Integer; dispid 276;
    function UpdateFirmware(const FirmwareFileName: WideString): Integer; dispid 275;
    function CompareFirmwareVersion(const FirmwareFileName: WideString; out Result_: Integer): Integer; dispid 274;
    function UpdateStatistics(const StatisticsBuffer: WideString): Integer; dispid 273;
    function RetrieveStatistics(var StatisticsBuffer: WideString): Integer; dispid 272;
    function ResetStatistics(const StatisticsBuffer: WideString): Integer; dispid 271;
    function CloseService: Integer; dispid 201;
    function ClaimDevice(Timeout: Integer): Integer; dispid 203;
    function ReleaseDevice: Integer; dispid 204;
    function CheckHealth(Level: Integer): Integer; dispid 210;
    function OpenService(const DeviceClass: WideString; const DeviceName: WideString; 
                         const pDispatch: IDispatch): Integer; dispid 205;
    function GetPropertyNumber(PropIndex: Integer): Integer; dispid 206;
    procedure SetPropertyNumber(PropIndex: Integer; Number: Integer); dispid 207;
    function GetPropertyString(PropIndex: Integer): WideString; dispid 208;
    procedure SetPropertyString(PropIndex: Integer; const String_: WideString); dispid 209;
    function ClearOutput: Integer; dispid 211;
    function DirectIO(Command: Integer; var pData: Integer; var pString: WideString): Integer; dispid 212;
    function ClearInput: Integer; dispid 202;
    function COFreezeEvents(Freeze: Integer): Integer; dispid 213;
    function ClearInputProperties: Integer; dispid 278;
  end;

// *********************************************************************//
// Interface: IATOL_KKM_1C
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1BAC54F7-7C3A-4B40-8391-959AE01F5E13}
// *********************************************************************//
  IATOL_KKM_1C = interface(IDispatch)
    ['{1BAC54F7-7C3A-4B40-8391-959AE01F5E13}']
    function GetVersion: WideString; safecall;
    function GetLastError(out ErrorDescription: WideString): Integer; safecall;
    function Open(const ValuesArray: IDispatch; out DeviceID: WideString): WordBool; safecall;
    function Close(const DeviceID: WideString): WordBool; safecall;
    function PrintXReport(const DeviceID: WideString): WordBool; safecall;
    function PrintZReport(const DeviceID: WideString): WordBool; safecall;
    function CashInOutcome(const DeviceID: WideString; Amount: Double): WordBool; safecall;
    function OpenCheck(const DeviceID: WideString; IsFiscalCheck: WordBool; 
                       IsReturnCheck: WordBool; CancelOpenedCheck: WordBool; 
                       out CheckNumber: Integer; out SessionNumber: Integer): WordBool; safecall;
    function PrintFiscalString(const DeviceID: WideString; const Name: WideString; 
                               Quantity: Double; Price: Double; Amount: Double; 
                               Department: Integer; Tax: Double): WordBool; safecall;
    function CloseCheck(const DeviceID: WideString; Cash: Double; Cashless: Double): WordBool; safecall;
    function CancelCheck(const DeviceID: WideString): WordBool; safecall;
    function PrintNonFiscalString(const DeviceID: WideString; const TextString: WideString): WordBool; safecall;
    function DeviceTest(const ValuesArray: IDispatch; out AdditionalDescription: WideString): WordBool; safecall;
    function OpenCashDrawer(const DeviceID: WideString): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IATOL_KKM_1CDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1BAC54F7-7C3A-4B40-8391-959AE01F5E13}
// *********************************************************************//
  IATOL_KKM_1CDisp = dispinterface
    ['{1BAC54F7-7C3A-4B40-8391-959AE01F5E13}']
    function GetVersion: WideString; dispid 201;
    function GetLastError(out ErrorDescription: WideString): Integer; dispid 202;
    function Open(const ValuesArray: IDispatch; out DeviceID: WideString): WordBool; dispid 203;
    function Close(const DeviceID: WideString): WordBool; dispid 204;
    function PrintXReport(const DeviceID: WideString): WordBool; dispid 205;
    function PrintZReport(const DeviceID: WideString): WordBool; dispid 206;
    function CashInOutcome(const DeviceID: WideString; Amount: Double): WordBool; dispid 207;
    function OpenCheck(const DeviceID: WideString; IsFiscalCheck: WordBool; 
                       IsReturnCheck: WordBool; CancelOpenedCheck: WordBool; 
                       out CheckNumber: Integer; out SessionNumber: Integer): WordBool; dispid 208;
    function PrintFiscalString(const DeviceID: WideString; const Name: WideString; 
                               Quantity: Double; Price: Double; Amount: Double; 
                               Department: Integer; Tax: Double): WordBool; dispid 209;
    function CloseCheck(const DeviceID: WideString; Cash: Double; Cashless: Double): WordBool; dispid 210;
    function CancelCheck(const DeviceID: WideString): WordBool; dispid 211;
    function PrintNonFiscalString(const DeviceID: WideString; const TextString: WideString): WordBool; dispid 212;
    function DeviceTest(const ValuesArray: IDispatch; out AdditionalDescription: WideString): WordBool; dispid 213;
    function OpenCashDrawer(const DeviceID: WideString): WordBool; dispid 214;
  end;

// *********************************************************************//
// Interface: IFprnMAB
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A892E16E-9F34-446D-B817-F2EB9E9F40FA}
// *********************************************************************//
  IFprnMAB = interface(IDispatch)
    ['{A892E16E-9F34-446D-B817-F2EB9E9F40FA}']
    function AboutBox: Integer; safecall;
    function Get_AccessPassword: WideString; safecall;
    procedure Set_AccessPassword(const Value: WideString); safecall;
    function Get_ACKTimeout: Integer; safecall;
    procedure Set_ACKTimeout(Value: Integer); safecall;
    function AddDevice: Integer; safecall;
    function AddField: Integer; safecall;
    function AddPictureFromFile: Integer; safecall;
    function AdvancedDisplayWrite: Integer; safecall;
    function Get_AdvancedMode: Integer; safecall;
    function AdvancedOpenDrawer: Integer; safecall;
    function Get_AdvancedRegistration: WordBool; safecall;
    procedure Set_AdvancedRegistration(Value: WordBool); safecall;
    function Get_Alignment: Integer; safecall;
    procedure Set_Alignment(Value: Integer); safecall;
    function Annulate: Integer; safecall;
    function Get_ApplicationHandle: Integer; safecall;
    procedure Set_ApplicationHandle(Value: Integer); safecall;
    function Get_AutoSize: WordBool; safecall;
    procedure Set_AutoSize(Value: WordBool); safecall;
    function Get_BadParam: Integer; safecall;
    function Get_BadParamDescription: WideString; safecall;
    function Get_Barcode: WideString; safecall;
    procedure Set_Barcode(const Value: WideString); safecall;
    function Get_BarcodeControlCode: WordBool; safecall;
    procedure Set_BarcodeControlCode(Value: WordBool); safecall;
    function Get_BarcodeTextFont: Integer; safecall;
    procedure Set_BarcodeTextFont(Value: Integer); safecall;
    function Get_BarcodeType: Integer; safecall;
    procedure Set_BarcodeType(Value: Integer); safecall;
    function Get_BatteryLow: WordBool; safecall;
    function Get_BaudRate: Integer; safecall;
    procedure Set_BaudRate(Value: Integer); safecall;
    function Beep: Integer; safecall;
    function BeginAdd: Integer; safecall;
    function BeginDocument: Integer; safecall;
    function BeginFiscDocument: Integer; safecall;
    function BeginReport: Integer; safecall;
    function Get_BufferingMode: WordBool; safecall;
    procedure Set_BufferingMode(Value: WordBool); safecall;
    function Buy: Integer; safecall;
    function BuyAnnulate: Integer; safecall;
    function BuyReturn: Integer; safecall;
    function BeginItem: Integer; safecall;
    function BeginComplexAttribute: Integer; safecall;
    function Get_BarcodeVer: Integer; safecall;
    procedure Set_BarcodeVer(Value: Integer); safecall;
    property AccessPassword: WideString read Get_AccessPassword write Set_AccessPassword;
    property ACKTimeout: Integer read Get_ACKTimeout write Set_ACKTimeout;
    property AdvancedMode: Integer read Get_AdvancedMode;
    property AdvancedRegistration: WordBool read Get_AdvancedRegistration write Set_AdvancedRegistration;
    property Alignment: Integer read Get_Alignment write Set_Alignment;
    property ApplicationHandle: Integer read Get_ApplicationHandle write Set_ApplicationHandle;
    property AutoSize: WordBool read Get_AutoSize write Set_AutoSize;
    property BadParam: Integer read Get_BadParam;
    property BadParamDescription: WideString read Get_BadParamDescription;
    property Barcode: WideString read Get_Barcode write Set_Barcode;
    property BarcodeControlCode: WordBool read Get_BarcodeControlCode write Set_BarcodeControlCode;
    property BarcodeTextFont: Integer read Get_BarcodeTextFont write Set_BarcodeTextFont;
    property BarcodeType: Integer read Get_BarcodeType write Set_BarcodeType;
    property BatteryLow: WordBool read Get_BatteryLow;
    property BaudRate: Integer read Get_BaudRate write Set_BaudRate;
    property BufferingMode: WordBool read Get_BufferingMode write Set_BufferingMode;
    property BarcodeVer: Integer read Get_BarcodeVer write Set_BarcodeVer;
  end;

// *********************************************************************//
// DispIntf:  IFprnMABDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A892E16E-9F34-446D-B817-F2EB9E9F40FA}
// *********************************************************************//
  IFprnMABDisp = dispinterface
    ['{A892E16E-9F34-446D-B817-F2EB9E9F40FA}']
    function AboutBox: Integer; dispid 309;
    property AccessPassword: WideString dispid 165;
    property ACKTimeout: Integer dispid 186;
    function AddDevice: Integer; dispid 21;
    function AddField: Integer; dispid 240;
    function AddPictureFromFile: Integer; dispid 226;
    function AdvancedDisplayWrite: Integer; dispid 182;
    property AdvancedMode: Integer readonly dispid 109;
    function AdvancedOpenDrawer: Integer; dispid 177;
    property AdvancedRegistration: WordBool dispid 256;
    property Alignment: Integer dispid 250;
    function Annulate: Integer; dispid 88;
    property ApplicationHandle: Integer dispid 10;
    property AutoSize: WordBool dispid 251;
    property BadParam: Integer readonly dispid 33;
    property BadParamDescription: WideString readonly dispid 34;
    property Barcode: WideString dispid 12;
    property BarcodeControlCode: WordBool dispid 203;
    property BarcodeTextFont: Integer dispid 301;
    property BarcodeType: Integer dispid 215;
    property BatteryLow: WordBool readonly dispid 275;
    property BaudRate: Integer dispid 67;
    function Beep: Integer; dispid 100;
    function BeginAdd: Integer; dispid 149;
    function BeginDocument: Integer; dispid 246;
    function BeginFiscDocument: Integer; dispid 261;
    function BeginReport: Integer; dispid 112;
    property BufferingMode: WordBool dispid 281;
    function Buy: Integer; dispid 272;
    function BuyAnnulate: Integer; dispid 277;
    function BuyReturn: Integer; dispid 273;
    function BeginItem: Integer; dispid 312;
    function BeginComplexAttribute: Integer; dispid 315;
    property BarcodeVer: Integer dispid 323;
  end;

// *********************************************************************//
// Interface: IFprnMCD
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {23EF7AC0-0214-4CBC-88B3-DF92D96F2207}
// *********************************************************************//
  IFprnMCD = interface(IFprnMAB)
    ['{23EF7AC0-0214-4CBC-88B3-DF92D96F2207}']
    function Get_CacheReport: WordBool; safecall;
    procedure Set_CacheReport(Value: WordBool); safecall;
    function CancelCheck: Integer; safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    function Get_CaptionPurpose: Integer; safecall;
    procedure Set_CaptionPurpose(Value: Integer); safecall;
    function Get_CaptionTable: Integer; safecall;
    procedure Set_CaptionTable(Value: Integer); safecall;
    function CardGetType: Integer; safecall;
    function CardRead: Integer; safecall;
    function CardWrite: Integer; safecall;
    function CashIncome: Integer; safecall;
    function CashOutcome: Integer; safecall;
    function Get_Change: Double; safecall;
    function Get_CharLineLength: Integer; safecall;
    function Get_CheckNumber: Integer; safecall;
    procedure Set_CheckNumber(Value: Integer); safecall;
    function Get_CheckPaperPresent: WordBool; safecall;
    function Get_CheckState: Integer; safecall;
    function Get_CheckType: Integer; safecall;
    procedure Set_CheckType(Value: Integer); safecall;
    function Get_ClearJrn: Integer; safecall;
    procedure Set_ClearJrn(Value: Integer); safecall;
    function ClearOutput: Integer; safecall;
    function ClearPictureArray: Integer; safecall;
    function CloseCheck: Integer; safecall;
    function Get_ComPortsDescriptions: WideString; safecall;
    function Get_ControlPaperPresent: WordBool; safecall;
    function Get_Count: Integer; safecall;
    procedure Set_Count(Value: Integer); safecall;
    function Get_CounterType: Integer; safecall;
    procedure Set_CounterType(Value: Integer); safecall;
    function Get_CoverOpened: WordBool; safecall;
    function Get_CurrentDeviceName: WideString; safecall;
    procedure Set_CurrentDeviceName(const Value: WideString); safecall;
    function Get_CurrentDeviceNumber: Integer; safecall;
    procedure Set_CurrentDeviceNumber(Value: Integer); safecall;
    function Get_CurrentDeviceIndex: Integer; safecall;
    procedure Set_CurrentDeviceIndex(Value: Integer); safecall;
    function Get_Day: Integer; safecall;
    procedure Set_Day(Value: Integer); safecall;
    function Get_DefaultPassword: WideString; safecall;
    procedure Set_DefaultPassword(const Value: WideString); safecall;
    function DeleteDevice: Integer; safecall;
    function DeleteLastPicture: Integer; safecall;
    function Delivery: Integer; safecall;
    function DemoPrint: Integer; safecall;
    function Get_Department: Integer; safecall;
    procedure Set_Department(Value: Integer); safecall;
    function Get_Destination: Integer; safecall;
    procedure Set_Destination(Value: Integer); safecall;
    function Get_DeviceEnabled: WordBool; safecall;
    procedure Set_DeviceEnabled(Value: WordBool); safecall;
    function Get_DeviceCount: Integer; safecall;
    function Get_DeviceDescription: WideString; safecall;
    function Get_DeviceSettings: WideString; safecall;
    procedure Set_DeviceSettings(const Value: WideString); safecall;
    function Get_DevicesSettings: WideString; safecall;
    procedure Set_DevicesSettings(const Value: WideString); safecall;
    function Get_DisableParamWindow: WordBool; safecall;
    procedure Set_DisableParamWindow(Value: WordBool); safecall;
    function Get_DisablePasswordSettings: WordBool; safecall;
    procedure Set_DisablePasswordSettings(Value: WordBool); safecall;
    function Get_DiscountType: Integer; safecall;
    procedure Set_DiscountType(Value: Integer); safecall;
    function Get_DiscountTypeNumber: Integer; safecall;
    procedure Set_DiscountTypeNumber(Value: Integer); safecall;
    function Get_DiscountValue: Double; safecall;
    procedure Set_DiscountValue(Value: Double); safecall;
    function DisplayDraw: Integer; safecall;
    function DisplayWrite: Integer; safecall;
    function Get_DocNumber: Integer; safecall;
    procedure Set_DocNumber(Value: Integer); safecall;
    function Get_DrawerOffTimeout: Integer; safecall;
    procedure Set_DrawerOffTimeout(Value: Integer); safecall;
    function Get_DrawerOnQuantity: Integer; safecall;
    procedure Set_DrawerOnQuantity(Value: Integer); safecall;
    function Get_DrawerOnTimeout: Integer; safecall;
    procedure Set_DrawerOnTimeout(Value: Integer); safecall;
    function Get_DrawerOpened: WordBool; safecall;
    function Get_Duration: Integer; safecall;
    procedure Set_Duration(Value: Integer); safecall;
    function Get_DialogFontName: WideString; safecall;
    procedure Set_DialogFontName(const Value: WideString); safecall;
    function Get_DialogFontSize: Integer; safecall;
    procedure Set_DialogFontSize(Value: Integer); safecall;
    function Get_DialogFontStyle: Integer; safecall;
    procedure Set_DialogFontStyle(Value: Integer); safecall;
    function DeviceEnableEx: Integer; safecall;
    function Get_DeviceEnableTimeout: Integer; safecall;
    procedure Set_DeviceEnableTimeout(Value: Integer); safecall;
    function Get_CorrectionLevel: Integer; safecall;
    procedure Set_CorrectionLevel(Value: Integer); safecall;
    function PrintLastCheckCopy: Integer; safecall;
    function Get_BarcodeOptions: Integer; safecall;
    procedure Set_BarcodeOptions(Value: Integer); safecall;
    function Get_BarcodeRows: Integer; safecall;
    procedure Set_BarcodeRows(Value: Integer); safecall;
    function Get_BarcodeColumns: Integer; safecall;
    procedure Set_BarcodeColumns(Value: Integer); safecall;
    function Get_BarcodeProportions: Integer; safecall;
    procedure Set_BarcodeProportions(Value: Integer); safecall;
    function Get_BarcodePixelProportions: Integer; safecall;
    procedure Set_BarcodePixelProportions(Value: Integer); safecall;
    function OpenDirectory: Integer; safecall;
    function Get_Directory: WideString; safecall;
    procedure Set_Directory(const Value: WideString); safecall;
    function Get_FileSize: Integer; safecall;
    procedure Set_FileSize(Value: Integer); safecall;
    function ReadDirectory: Integer; safecall;
    function Get_OpenFileParams: Byte; safecall;
    procedure Set_OpenFileParams(Value: Byte); safecall;
    function OpenFile: Integer; safecall;
    function CloseFile: Integer; safecall;
    function CloseDirectory: Integer; safecall;
    function Get_FileOffset: Integer; safecall;
    procedure Set_FileOffset(Value: Integer); safecall;
    function Get_FileReadLength: Integer; safecall;
    procedure Set_FileReadLength(Value: Integer); safecall;
    function ReadFile: Integer; safecall;
    function DeleteFileFromSD: Integer; safecall;
    function WriteFileToSD: Integer; safecall;
    function PowerOff: Integer; safecall;
    function Get_DrawerInvertState: WordBool; safecall;
    procedure Set_DrawerInvertState(Value: WordBool); safecall;
    function Get_BarcodeOptionsEx: Integer; safecall;
    procedure Set_BarcodeOptionsEx(Value: Integer); safecall;
    function Get_PortType: Integer; safecall;
    procedure Set_PortType(Value: Integer); safecall;
    function Get_PortFlags: Integer; safecall;
    procedure Set_PortFlags(Value: Integer); safecall;
    function Get_PortSubcommand: Integer; safecall;
    procedure Set_PortSubcommand(Value: Integer); safecall;
    function PortPowerOn: Integer; safecall;
    function PortPowerOff: Integer; safecall;
    function PortSendData: Integer; safecall;
    function PortSyncGetData: Integer; safecall;
    function PortConfig: Integer; safecall;
    function PortStatus: Integer; safecall;
    function PrintBarcodeByNumber: Integer; safecall;
    function ClearBarcodeArray: Integer; safecall;
    function GetBarcodeArrayState: Integer; safecall;
    function ReadBarcode: Integer; safecall;
    function DeleteBarcode: Integer; safecall;
    function EJState: Integer; safecall;
    function WriteAttribute: Integer; safecall;
    function Get_AttrName: WideString; safecall;
    procedure Set_AttrName(const Value: WideString); safecall;
    function Get_AttrValue: WideString; safecall;
    procedure Set_AttrValue(const Value: WideString); safecall;
    function Get_AttrNumber: Integer; safecall;
    procedure Set_AttrNumber(Value: Integer); safecall;
    function ReadAttribute: Integer; safecall;
    procedure Set_ShowModels(Value: Integer); safecall;
    function Get_ShowModels: Integer; safecall;
    procedure Set_OFDLastError(Value: Integer); safecall;
    function Get_OFDLastError: Integer; safecall;
    function ReadFNStatus: Integer; safecall;
    procedure Set_CheckMode(Value: Integer); safecall;
    function Get_CheckMode: Integer; safecall;
    procedure Set_AttrPrint(Value: Integer); safecall;
    function Get_AttrPrint: Integer; safecall;
    function ReadFNParam: Integer; safecall;
    function Get_FNFiscal: WordBool; safecall;
    function Get_FiscalSign: WideString; safecall;
    function Get_OperatorMessage: WordBool; safecall;
    function Get_LastCheckType: Integer; safecall;
    function Get_SessionExceedLimit: WordBool; safecall;
    function Get_FNFlags: Integer; safecall;
    function Get_Is54FZ: WordBool; safecall;
    function Stub: Integer; safecall;
    function Get_CommandCode: Integer; safecall;
    property CacheReport: WordBool read Get_CacheReport write Set_CacheReport;
    property Caption: WideString read Get_Caption write Set_Caption;
    property CaptionPurpose: Integer read Get_CaptionPurpose write Set_CaptionPurpose;
    property CaptionTable: Integer read Get_CaptionTable write Set_CaptionTable;
    property Change: Double read Get_Change;
    property CharLineLength: Integer read Get_CharLineLength;
    property CheckNumber: Integer read Get_CheckNumber write Set_CheckNumber;
    property CheckPaperPresent: WordBool read Get_CheckPaperPresent;
    property CheckState: Integer read Get_CheckState;
    property CheckType: Integer read Get_CheckType write Set_CheckType;
    property ClearJrn: Integer read Get_ClearJrn write Set_ClearJrn;
    property ComPortsDescriptions: WideString read Get_ComPortsDescriptions;
    property ControlPaperPresent: WordBool read Get_ControlPaperPresent;
    property Count: Integer read Get_Count write Set_Count;
    property CounterType: Integer read Get_CounterType write Set_CounterType;
    property CoverOpened: WordBool read Get_CoverOpened;
    property CurrentDeviceName: WideString read Get_CurrentDeviceName write Set_CurrentDeviceName;
    property CurrentDeviceNumber: Integer read Get_CurrentDeviceNumber write Set_CurrentDeviceNumber;
    property CurrentDeviceIndex: Integer read Get_CurrentDeviceIndex write Set_CurrentDeviceIndex;
    property Day: Integer read Get_Day write Set_Day;
    property DefaultPassword: WideString read Get_DefaultPassword write Set_DefaultPassword;
    property Department: Integer read Get_Department write Set_Department;
    property Destination: Integer read Get_Destination write Set_Destination;
    property DeviceEnabled: WordBool read Get_DeviceEnabled write Set_DeviceEnabled;
    property DeviceCount: Integer read Get_DeviceCount;
    property DeviceDescription: WideString read Get_DeviceDescription;
    property DeviceSettings: WideString read Get_DeviceSettings write Set_DeviceSettings;
    property DevicesSettings: WideString read Get_DevicesSettings write Set_DevicesSettings;
    property DisableParamWindow: WordBool read Get_DisableParamWindow write Set_DisableParamWindow;
    property DisablePasswordSettings: WordBool read Get_DisablePasswordSettings write Set_DisablePasswordSettings;
    property DiscountType: Integer read Get_DiscountType write Set_DiscountType;
    property DiscountTypeNumber: Integer read Get_DiscountTypeNumber write Set_DiscountTypeNumber;
    property DiscountValue: Double read Get_DiscountValue write Set_DiscountValue;
    property DocNumber: Integer read Get_DocNumber write Set_DocNumber;
    property DrawerOffTimeout: Integer read Get_DrawerOffTimeout write Set_DrawerOffTimeout;
    property DrawerOnQuantity: Integer read Get_DrawerOnQuantity write Set_DrawerOnQuantity;
    property DrawerOnTimeout: Integer read Get_DrawerOnTimeout write Set_DrawerOnTimeout;
    property DrawerOpened: WordBool read Get_DrawerOpened;
    property Duration: Integer read Get_Duration write Set_Duration;
    property DialogFontName: WideString read Get_DialogFontName write Set_DialogFontName;
    property DialogFontSize: Integer read Get_DialogFontSize write Set_DialogFontSize;
    property DialogFontStyle: Integer read Get_DialogFontStyle write Set_DialogFontStyle;
    property DeviceEnableTimeout: Integer read Get_DeviceEnableTimeout write Set_DeviceEnableTimeout;
    property CorrectionLevel: Integer read Get_CorrectionLevel write Set_CorrectionLevel;
    property BarcodeOptions: Integer read Get_BarcodeOptions write Set_BarcodeOptions;
    property BarcodeRows: Integer read Get_BarcodeRows write Set_BarcodeRows;
    property BarcodeColumns: Integer read Get_BarcodeColumns write Set_BarcodeColumns;
    property BarcodeProportions: Integer read Get_BarcodeProportions write Set_BarcodeProportions;
    property BarcodePixelProportions: Integer read Get_BarcodePixelProportions write Set_BarcodePixelProportions;
    property Directory: WideString read Get_Directory write Set_Directory;
    property FileSize: Integer read Get_FileSize write Set_FileSize;
    property OpenFileParams: Byte read Get_OpenFileParams write Set_OpenFileParams;
    property FileOffset: Integer read Get_FileOffset write Set_FileOffset;
    property FileReadLength: Integer read Get_FileReadLength write Set_FileReadLength;
    property DrawerInvertState: WordBool read Get_DrawerInvertState write Set_DrawerInvertState;
    property BarcodeOptionsEx: Integer read Get_BarcodeOptionsEx write Set_BarcodeOptionsEx;
    property PortType: Integer read Get_PortType write Set_PortType;
    property PortFlags: Integer read Get_PortFlags write Set_PortFlags;
    property PortSubcommand: Integer read Get_PortSubcommand write Set_PortSubcommand;
    property AttrName: WideString read Get_AttrName write Set_AttrName;
    property AttrValue: WideString read Get_AttrValue write Set_AttrValue;
    property AttrNumber: Integer read Get_AttrNumber write Set_AttrNumber;
    property ShowModels: Integer read Get_ShowModels write Set_ShowModels;
    property OFDLastError: Integer read Get_OFDLastError write Set_OFDLastError;
    property CheckMode: Integer read Get_CheckMode write Set_CheckMode;
    property AttrPrint: Integer read Get_AttrPrint write Set_AttrPrint;
    property FNFiscal: WordBool read Get_FNFiscal;
    property FiscalSign: WideString read Get_FiscalSign;
    property OperatorMessage: WordBool read Get_OperatorMessage;
    property LastCheckType: Integer read Get_LastCheckType;
    property SessionExceedLimit: WordBool read Get_SessionExceedLimit;
    property FNFlags: Integer read Get_FNFlags;
    property Is54FZ: WordBool read Get_Is54FZ;
    property CommandCode: Integer read Get_CommandCode;
  end;

// *********************************************************************//
// DispIntf:  IFprnMCDDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {23EF7AC0-0214-4CBC-88B3-DF92D96F2207}
// *********************************************************************//
  IFprnMCDDisp = dispinterface
    ['{23EF7AC0-0214-4CBC-88B3-DF92D96F2207}']
    property CacheReport: WordBool dispid 110;
    function CancelCheck: Integer; dispid 89;
    property Caption: WideString dispid 36;
    property CaptionPurpose: Integer dispid 68;
    property CaptionTable: Integer dispid 303;
    function CardGetType: Integer; dispid 291;
    function CardRead: Integer; dispid 289;
    function CardWrite: Integer; dispid 290;
    function CashIncome: Integer; dispid 78;
    function CashOutcome: Integer; dispid 79;
    property Change: Double readonly dispid 206;
    property CharLineLength: Integer readonly dispid 209;
    property CheckNumber: Integer dispid 57;
    property CheckPaperPresent: WordBool readonly dispid 174;
    property CheckState: Integer readonly dispid 59;
    property CheckType: Integer dispid 201;
    property ClearJrn: Integer dispid 296;
    function ClearOutput: Integer; dispid 163;
    function ClearPictureArray: Integer; dispid 212;
    function CloseCheck: Integer; dispid 81;
    property ComPortsDescriptions: WideString readonly dispid 426;
    property ControlPaperPresent: WordBool readonly dispid 175;
    property Count: Integer dispid 193;
    property CounterType: Integer dispid 307;
    property CoverOpened: WordBool readonly dispid 176;
    property CurrentDeviceName: WideString dispid 8;
    property CurrentDeviceNumber: Integer dispid 7;
    property CurrentDeviceIndex: Integer dispid 6;
    property Day: Integer dispid 37;
    property DefaultPassword: WideString dispid 295;
    function DeleteDevice: Integer; dispid 22;
    function DeleteLastPicture: Integer; dispid 237;
    function Delivery: Integer; dispid 82;
    function DemoPrint: Integer; dispid 239;
    property Department: Integer dispid 48;
    property Destination: Integer dispid 107;
    property DeviceEnabled: WordBool dispid 62;
    property DeviceCount: Integer readonly dispid 9;
    property DeviceDescription: WideString readonly dispid 11;
    property DeviceSettings: WideString dispid 286;
    property DevicesSettings: WideString dispid 284;
    property DisableParamWindow: WordBool dispid 14;
    property DisablePasswordSettings: WordBool dispid 167;
    property DiscountType: Integer dispid 293;
    property DiscountTypeNumber: Integer dispid 234;
    property DiscountValue: Double dispid 294;
    function DisplayDraw: Integer; dispid 73;
    function DisplayWrite: Integer; dispid 72;
    property DocNumber: Integer dispid 297;
    property DrawerOffTimeout: Integer dispid 179;
    property DrawerOnQuantity: Integer dispid 180;
    property DrawerOnTimeout: Integer dispid 178;
    property DrawerOpened: WordBool readonly dispid 162;
    property Duration: Integer dispid 191;
    property DialogFontName: WideString dispid 304;
    property DialogFontSize: Integer dispid 305;
    property DialogFontStyle: Integer dispid 306;
    function DeviceEnableEx: Integer; dispid 817;
    property DeviceEnableTimeout: Integer dispid 818;
    property CorrectionLevel: Integer dispid 65467;
    function PrintLastCheckCopy: Integer; dispid 65468;
    property BarcodeOptions: Integer dispid 1048320;
    property BarcodeRows: Integer dispid 1048321;
    property BarcodeColumns: Integer dispid 1048322;
    property BarcodeProportions: Integer dispid 1048323;
    property BarcodePixelProportions: Integer dispid 1048324;
    function OpenDirectory: Integer; dispid 1048325;
    property Directory: WideString dispid 1048326;
    property FileSize: Integer dispid 1048328;
    function ReadDirectory: Integer; dispid 1048329;
    property OpenFileParams: Byte dispid 1048336;
    function OpenFile: Integer; dispid 1048330;
    function CloseFile: Integer; dispid 1048331;
    function CloseDirectory: Integer; dispid 1048332;
    property FileOffset: Integer dispid 1048333;
    property FileReadLength: Integer dispid 1048334;
    function ReadFile: Integer; dispid 1048335;
    function DeleteFileFromSD: Integer; dispid 1048337;
    function WriteFileToSD: Integer; dispid 1048338;
    function PowerOff: Integer; dispid 1048339;
    property DrawerInvertState: WordBool dispid 2555;
    property BarcodeOptionsEx: Integer dispid 2556;
    property PortType: Integer dispid 2557;
    property PortFlags: Integer dispid 2558;
    property PortSubcommand: Integer dispid 2559;
    function PortPowerOn: Integer; dispid 2560;
    function PortPowerOff: Integer; dispid 2561;
    function PortSendData: Integer; dispid 2562;
    function PortSyncGetData: Integer; dispid 2563;
    function PortConfig: Integer; dispid 2564;
    function PortStatus: Integer; dispid 2565;
    function PrintBarcodeByNumber: Integer; dispid 2566;
    function ClearBarcodeArray: Integer; dispid 2567;
    function GetBarcodeArrayState: Integer; dispid 2568;
    function ReadBarcode: Integer; dispid 2569;
    function DeleteBarcode: Integer; dispid 2570;
    function EJState: Integer; dispid 2571;
    function WriteAttribute: Integer; dispid 2572;
    property AttrName: WideString dispid 2573;
    property AttrValue: WideString dispid 2574;
    property AttrNumber: Integer dispid 2575;
    function ReadAttribute: Integer; dispid 2576;
    property ShowModels: Integer dispid 2577;
    property OFDLastError: Integer dispid 2578;
    function ReadFNStatus: Integer; dispid 2579;
    property CheckMode: Integer dispid 2580;
    property AttrPrint: Integer dispid 2581;
    function ReadFNParam: Integer; dispid 2582;
    property FNFiscal: WordBool readonly dispid 2583;
    property FiscalSign: WideString readonly dispid 2585;
    property OperatorMessage: WordBool readonly dispid 2592;
    property LastCheckType: Integer readonly dispid 2593;
    property SessionExceedLimit: WordBool readonly dispid 2594;
    property FNFlags: Integer readonly dispid 2595;
    property Is54FZ: WordBool readonly dispid 2596;
    function Stub: Integer; dispid 2597;
    property CommandCode: Integer readonly dispid 314;
    function AboutBox: Integer; dispid 309;
    property AccessPassword: WideString dispid 165;
    property ACKTimeout: Integer dispid 186;
    function AddDevice: Integer; dispid 21;
    function AddField: Integer; dispid 240;
    function AddPictureFromFile: Integer; dispid 226;
    function AdvancedDisplayWrite: Integer; dispid 182;
    property AdvancedMode: Integer readonly dispid 109;
    function AdvancedOpenDrawer: Integer; dispid 177;
    property AdvancedRegistration: WordBool dispid 256;
    property Alignment: Integer dispid 250;
    function Annulate: Integer; dispid 88;
    property ApplicationHandle: Integer dispid 10;
    property AutoSize: WordBool dispid 251;
    property BadParam: Integer readonly dispid 33;
    property BadParamDescription: WideString readonly dispid 34;
    property Barcode: WideString dispid 12;
    property BarcodeControlCode: WordBool dispid 203;
    property BarcodeTextFont: Integer dispid 301;
    property BarcodeType: Integer dispid 215;
    property BatteryLow: WordBool readonly dispid 275;
    property BaudRate: Integer dispid 67;
    function Beep: Integer; dispid 100;
    function BeginAdd: Integer; dispid 149;
    function BeginDocument: Integer; dispid 246;
    function BeginFiscDocument: Integer; dispid 261;
    function BeginReport: Integer; dispid 112;
    property BufferingMode: WordBool dispid 281;
    function Buy: Integer; dispid 272;
    function BuyAnnulate: Integer; dispid 277;
    function BuyReturn: Integer; dispid 273;
    function BeginItem: Integer; dispid 312;
    function BeginComplexAttribute: Integer; dispid 315;
    property BarcodeVer: Integer dispid 323;
  end;

// *********************************************************************//
// Interface: IFprnMEF
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EAA731C3-753B-43AC-A0FE-EC4787D46556}
// *********************************************************************//
  IFprnMEF = interface(IFprnMCD)
    ['{EAA731C3-753B-43AC-A0FE-EC4787D46556}']
    function Get_ECRError: Integer; safecall;
    function Get_ECRErrorDescription: WideString; safecall;
    function EKLZActivate: Integer; safecall;
    function EKLZCloseArchive: Integer; safecall;
    function Get_EKLZFlags: Integer; safecall;
    function EKLZGetStatus: Integer; safecall;
    function Get_EKLZKPKNumber: Integer; safecall;
    procedure Set_EKLZKPKNumber(Value: Integer); safecall;
    function Get_EnableCheckSumm: WordBool; safecall;
    procedure Set_EnableCheckSumm(Value: WordBool); safecall;
    function EnableDeferredZReports: Integer; safecall;
    function EndAdd: Integer; safecall;
    function Get_EndDay: Integer; safecall;
    procedure Set_EndDay(Value: Integer); safecall;
    function EndDocument: Integer; safecall;
    function EndFiscDocument: Integer; safecall;
    function Get_EndMonth: Integer; safecall;
    procedure Set_EndMonth(Value: Integer); safecall;
    function EndReport: Integer; safecall;
    function Get_EndSession: Integer; safecall;
    procedure Set_EndSession(Value: Integer); safecall;
    function Get_EndYear: Integer; safecall;
    procedure Set_EndYear(Value: Integer); safecall;
    function Get_ENQTimeout: Integer; safecall;
    procedure Set_ENQTimeout(Value: Integer); safecall;
    function ExecSystemOperation: Integer; safecall;
    function Get_Factor: Integer; safecall;
    procedure Set_Factor(Value: Integer); safecall;
    function Get_Field: Integer; safecall;
    procedure Set_Field(Value: Integer); safecall;
    function Get_FieldType: Integer; safecall;
    procedure Set_FieldType(Value: Integer); safecall;
    function Get_FileName: WideString; safecall;
    procedure Set_FileName(const Value: WideString); safecall;
    function Get_FirstRecord: Integer; safecall;
    procedure Set_FirstRecord(Value: Integer); safecall;
    function Get_FirstZone: Integer; safecall;
    procedure Set_FirstZone(Value: Integer); safecall;
    function Get_Fiscal: WordBool; safecall;
    function Fiscalization: Integer; safecall;
    function Get_FontBold: WordBool; safecall;
    procedure Set_FontBold(Value: WordBool); safecall;
    function Get_FontDblHeight: WordBool; safecall;
    procedure Set_FontDblHeight(Value: WordBool); safecall;
    function Get_FontDblWidth: WordBool; safecall;
    procedure Set_FontDblWidth(Value: WordBool); safecall;
    function Get_FontItalic: WordBool; safecall;
    procedure Set_FontItalic(Value: WordBool); safecall;
    function Get_FontUnderline: WordBool; safecall;
    procedure Set_FontUnderline(Value: WordBool); safecall;
    function Get_FontNegative: WordBool; safecall;
    procedure Set_FontNegative(Value: WordBool); safecall;
    function Get_Frequency: Integer; safecall;
    procedure Set_Frequency(Value: Integer); safecall;
    function FullCut: Integer; safecall;
    function Get_EntryNum: Integer; safecall;
    procedure Set_EntryNum(Value: Integer); safecall;
    function Get_ErrorPosition: Integer; safecall;
    function FindIPDevices(Timeour: Integer): WideString; safecall;
    function EndItem: Integer; safecall;
    function EndComplexAttribute: Integer; safecall;
    procedure Set_EndCheckNumber(Value: Integer); safecall;
    function Get_EndCheckNumber: Integer; safecall;
    procedure Set_ENVDMode(Value: WordBool); safecall;
    function Get_ENVDMode: WordBool; safecall;
    function CheckStatusSKNO: Integer; safecall;
    function Get_FFDVer: Integer; safecall;
    property ECRError: Integer read Get_ECRError;
    property ECRErrorDescription: WideString read Get_ECRErrorDescription;
    property EKLZFlags: Integer read Get_EKLZFlags;
    property EKLZKPKNumber: Integer read Get_EKLZKPKNumber write Set_EKLZKPKNumber;
    property EnableCheckSumm: WordBool read Get_EnableCheckSumm write Set_EnableCheckSumm;
    property EndDay: Integer read Get_EndDay write Set_EndDay;
    property EndMonth: Integer read Get_EndMonth write Set_EndMonth;
    property EndSession: Integer read Get_EndSession write Set_EndSession;
    property EndYear: Integer read Get_EndYear write Set_EndYear;
    property ENQTimeout: Integer read Get_ENQTimeout write Set_ENQTimeout;
    property Factor: Integer read Get_Factor write Set_Factor;
    property Field: Integer read Get_Field write Set_Field;
    property FieldType: Integer read Get_FieldType write Set_FieldType;
    property FileName: WideString read Get_FileName write Set_FileName;
    property FirstRecord: Integer read Get_FirstRecord write Set_FirstRecord;
    property FirstZone: Integer read Get_FirstZone write Set_FirstZone;
    property Fiscal: WordBool read Get_Fiscal;
    property FontBold: WordBool read Get_FontBold write Set_FontBold;
    property FontDblHeight: WordBool read Get_FontDblHeight write Set_FontDblHeight;
    property FontDblWidth: WordBool read Get_FontDblWidth write Set_FontDblWidth;
    property FontItalic: WordBool read Get_FontItalic write Set_FontItalic;
    property FontUnderline: WordBool read Get_FontUnderline write Set_FontUnderline;
    property FontNegative: WordBool read Get_FontNegative write Set_FontNegative;
    property Frequency: Integer read Get_Frequency write Set_Frequency;
    property EntryNum: Integer read Get_EntryNum write Set_EntryNum;
    property ErrorPosition: Integer read Get_ErrorPosition;
    property EndCheckNumber: Integer read Get_EndCheckNumber write Set_EndCheckNumber;
    property ENVDMode: WordBool read Get_ENVDMode write Set_ENVDMode;
    property FFDVer: Integer read Get_FFDVer;
  end;

// *********************************************************************//
// DispIntf:  IFprnMEFDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EAA731C3-753B-43AC-A0FE-EC4787D46556}
// *********************************************************************//
  IFprnMEFDisp = dispinterface
    ['{EAA731C3-753B-43AC-A0FE-EC4787D46556}']
    property ECRError: Integer readonly dispid 64;
    property ECRErrorDescription: WideString readonly dispid 65;
    function EKLZActivate: Integer; dispid 219;
    function EKLZCloseArchive: Integer; dispid 222;
    property EKLZFlags: Integer readonly dispid 236;
    function EKLZGetStatus: Integer; dispid 223;
    property EKLZKPKNumber: Integer dispid 216;
    property EnableCheckSumm: WordBool dispid 148;
    function EnableDeferredZReports: Integer; dispid 302;
    function EndAdd: Integer; dispid 150;
    property EndDay: Integer dispid 16;
    function EndDocument: Integer; dispid 247;
    function EndFiscDocument: Integer; dispid 262;
    property EndMonth: Integer dispid 17;
    function EndReport: Integer; dispid 113;
    property EndSession: Integer dispid 15;
    property EndYear: Integer dispid 18;
    property ENQTimeout: Integer dispid 187;
    function ExecSystemOperation: Integer; dispid 43978;
    property Factor: Integer dispid 143;
    property Field: Integer dispid 130;
    property FieldType: Integer dispid 131;
    property FileName: WideString dispid 228;
    property FirstRecord: Integer dispid 155;
    property FirstZone: Integer dispid 153;
    property Fiscal: WordBool readonly dispid 54;
    function Fiscalization: Integer; dispid 24;
    property FontBold: WordBool dispid 241;
    property FontDblHeight: WordBool dispid 245;
    property FontDblWidth: WordBool dispid 248;
    property FontItalic: WordBool dispid 242;
    property FontUnderline: WordBool dispid 243;
    property FontNegative: WordBool dispid 244;
    property Frequency: Integer dispid 190;
    function FullCut: Integer; dispid 138;
    property EntryNum: Integer dispid 401;
    property ErrorPosition: Integer readonly dispid 402;
    function FindIPDevices(Timeour: Integer): WideString; dispid 403;
    function EndItem: Integer; dispid 313;
    function EndComplexAttribute: Integer; dispid 320;
    property EndCheckNumber: Integer dispid 321;
    property ENVDMode: WordBool dispid 404;
    function CheckStatusSKNO: Integer; dispid 408;
    property FFDVer: Integer readonly dispid 324;
    property CacheReport: WordBool dispid 110;
    function CancelCheck: Integer; dispid 89;
    property Caption: WideString dispid 36;
    property CaptionPurpose: Integer dispid 68;
    property CaptionTable: Integer dispid 303;
    function CardGetType: Integer; dispid 291;
    function CardRead: Integer; dispid 289;
    function CardWrite: Integer; dispid 290;
    function CashIncome: Integer; dispid 78;
    function CashOutcome: Integer; dispid 79;
    property Change: Double readonly dispid 206;
    property CharLineLength: Integer readonly dispid 209;
    property CheckNumber: Integer dispid 57;
    property CheckPaperPresent: WordBool readonly dispid 174;
    property CheckState: Integer readonly dispid 59;
    property CheckType: Integer dispid 201;
    property ClearJrn: Integer dispid 296;
    function ClearOutput: Integer; dispid 163;
    function ClearPictureArray: Integer; dispid 212;
    function CloseCheck: Integer; dispid 81;
    property ComPortsDescriptions: WideString readonly dispid 426;
    property ControlPaperPresent: WordBool readonly dispid 175;
    property Count: Integer dispid 193;
    property CounterType: Integer dispid 307;
    property CoverOpened: WordBool readonly dispid 176;
    property CurrentDeviceName: WideString dispid 8;
    property CurrentDeviceNumber: Integer dispid 7;
    property CurrentDeviceIndex: Integer dispid 6;
    property Day: Integer dispid 37;
    property DefaultPassword: WideString dispid 295;
    function DeleteDevice: Integer; dispid 22;
    function DeleteLastPicture: Integer; dispid 237;
    function Delivery: Integer; dispid 82;
    function DemoPrint: Integer; dispid 239;
    property Department: Integer dispid 48;
    property Destination: Integer dispid 107;
    property DeviceEnabled: WordBool dispid 62;
    property DeviceCount: Integer readonly dispid 9;
    property DeviceDescription: WideString readonly dispid 11;
    property DeviceSettings: WideString dispid 286;
    property DevicesSettings: WideString dispid 284;
    property DisableParamWindow: WordBool dispid 14;
    property DisablePasswordSettings: WordBool dispid 167;
    property DiscountType: Integer dispid 293;
    property DiscountTypeNumber: Integer dispid 234;
    property DiscountValue: Double dispid 294;
    function DisplayDraw: Integer; dispid 73;
    function DisplayWrite: Integer; dispid 72;
    property DocNumber: Integer dispid 297;
    property DrawerOffTimeout: Integer dispid 179;
    property DrawerOnQuantity: Integer dispid 180;
    property DrawerOnTimeout: Integer dispid 178;
    property DrawerOpened: WordBool readonly dispid 162;
    property Duration: Integer dispid 191;
    property DialogFontName: WideString dispid 304;
    property DialogFontSize: Integer dispid 305;
    property DialogFontStyle: Integer dispid 306;
    function DeviceEnableEx: Integer; dispid 817;
    property DeviceEnableTimeout: Integer dispid 818;
    property CorrectionLevel: Integer dispid 65467;
    function PrintLastCheckCopy: Integer; dispid 65468;
    property BarcodeOptions: Integer dispid 1048320;
    property BarcodeRows: Integer dispid 1048321;
    property BarcodeColumns: Integer dispid 1048322;
    property BarcodeProportions: Integer dispid 1048323;
    property BarcodePixelProportions: Integer dispid 1048324;
    function OpenDirectory: Integer; dispid 1048325;
    property Directory: WideString dispid 1048326;
    property FileSize: Integer dispid 1048328;
    function ReadDirectory: Integer; dispid 1048329;
    property OpenFileParams: Byte dispid 1048336;
    function OpenFile: Integer; dispid 1048330;
    function CloseFile: Integer; dispid 1048331;
    function CloseDirectory: Integer; dispid 1048332;
    property FileOffset: Integer dispid 1048333;
    property FileReadLength: Integer dispid 1048334;
    function ReadFile: Integer; dispid 1048335;
    function DeleteFileFromSD: Integer; dispid 1048337;
    function WriteFileToSD: Integer; dispid 1048338;
    function PowerOff: Integer; dispid 1048339;
    property DrawerInvertState: WordBool dispid 2555;
    property BarcodeOptionsEx: Integer dispid 2556;
    property PortType: Integer dispid 2557;
    property PortFlags: Integer dispid 2558;
    property PortSubcommand: Integer dispid 2559;
    function PortPowerOn: Integer; dispid 2560;
    function PortPowerOff: Integer; dispid 2561;
    function PortSendData: Integer; dispid 2562;
    function PortSyncGetData: Integer; dispid 2563;
    function PortConfig: Integer; dispid 2564;
    function PortStatus: Integer; dispid 2565;
    function PrintBarcodeByNumber: Integer; dispid 2566;
    function ClearBarcodeArray: Integer; dispid 2567;
    function GetBarcodeArrayState: Integer; dispid 2568;
    function ReadBarcode: Integer; dispid 2569;
    function DeleteBarcode: Integer; dispid 2570;
    function EJState: Integer; dispid 2571;
    function WriteAttribute: Integer; dispid 2572;
    property AttrName: WideString dispid 2573;
    property AttrValue: WideString dispid 2574;
    property AttrNumber: Integer dispid 2575;
    function ReadAttribute: Integer; dispid 2576;
    property ShowModels: Integer dispid 2577;
    property OFDLastError: Integer dispid 2578;
    function ReadFNStatus: Integer; dispid 2579;
    property CheckMode: Integer dispid 2580;
    property AttrPrint: Integer dispid 2581;
    function ReadFNParam: Integer; dispid 2582;
    property FNFiscal: WordBool readonly dispid 2583;
    property FiscalSign: WideString readonly dispid 2585;
    property OperatorMessage: WordBool readonly dispid 2592;
    property LastCheckType: Integer readonly dispid 2593;
    property SessionExceedLimit: WordBool readonly dispid 2594;
    property FNFlags: Integer readonly dispid 2595;
    property Is54FZ: WordBool readonly dispid 2596;
    function Stub: Integer; dispid 2597;
    property CommandCode: Integer readonly dispid 314;
    function AboutBox: Integer; dispid 309;
    property AccessPassword: WideString dispid 165;
    property ACKTimeout: Integer dispid 186;
    function AddDevice: Integer; dispid 21;
    function AddField: Integer; dispid 240;
    function AddPictureFromFile: Integer; dispid 226;
    function AdvancedDisplayWrite: Integer; dispid 182;
    property AdvancedMode: Integer readonly dispid 109;
    function AdvancedOpenDrawer: Integer; dispid 177;
    property AdvancedRegistration: WordBool dispid 256;
    property Alignment: Integer dispid 250;
    function Annulate: Integer; dispid 88;
    property ApplicationHandle: Integer dispid 10;
    property AutoSize: WordBool dispid 251;
    property BadParam: Integer readonly dispid 33;
    property BadParamDescription: WideString readonly dispid 34;
    property Barcode: WideString dispid 12;
    property BarcodeControlCode: WordBool dispid 203;
    property BarcodeTextFont: Integer dispid 301;
    property BarcodeType: Integer dispid 215;
    property BatteryLow: WordBool readonly dispid 275;
    property BaudRate: Integer dispid 67;
    function Beep: Integer; dispid 100;
    function BeginAdd: Integer; dispid 149;
    function BeginDocument: Integer; dispid 246;
    function BeginFiscDocument: Integer; dispid 261;
    function BeginReport: Integer; dispid 112;
    property BufferingMode: WordBool dispid 281;
    function Buy: Integer; dispid 272;
    function BuyAnnulate: Integer; dispid 277;
    function BuyReturn: Integer; dispid 273;
    function BeginItem: Integer; dispid 312;
    function BeginComplexAttribute: Integer; dispid 315;
    property BarcodeVer: Integer dispid 323;
  end;

// *********************************************************************//
// Interface: IFprnMGH
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D37397BD-913E-4749-9894-ABFA18942A07}
// *********************************************************************//
  IFprnMGH = interface(IFprnMEF)
    ['{D37397BD-913E-4749-9894-ABFA18942A07}']
    function GetCaption: Integer; safecall;
    function GetCurrentMode: Integer; safecall;
    function GetDeviceMetrics: Integer; safecall;
    function GetLastError: Integer; safecall;
    function GetLastSummary: Integer; safecall;
    function GetLicense: Integer; safecall;
    function GetPassword: Integer; safecall;
    function GetRange: Integer; safecall;
    function GetRecord: Integer; safecall;
    function GetRegister: Integer; safecall;
    function GetSettings: Integer; safecall;
    function GetStatus: Integer; safecall;
    function GetStatusPicture: Integer; safecall;
    function GetStatusPictureArray: Integer; safecall;
    function GetSumm: Integer; safecall;
    function GetSupportedMode: Integer; safecall;
    function GetUnitVersion: Integer; safecall;
    function GetValue: Integer; safecall;
    function Get_Height: Integer; safecall;
    procedure Set_Height(Value: Integer); safecall;
    function Get_Hour: Integer; safecall;
    procedure Set_Hour(Value: Integer); safecall;
    function Get_HostAddress: WideString; safecall;
    procedure Set_HostAddress(const Value: WideString); safecall;
    function Get_HideGUI: WordBool; safecall;
    procedure Set_HideGUI(Value: WordBool); safecall;
    property Height: Integer read Get_Height write Set_Height;
    property Hour: Integer read Get_Hour write Set_Hour;
    property HostAddress: WideString read Get_HostAddress write Set_HostAddress;
    property HideGUI: WordBool read Get_HideGUI write Set_HideGUI;
  end;

// *********************************************************************//
// DispIntf:  IFprnMGHDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D37397BD-913E-4749-9894-ABFA18942A07}
// *********************************************************************//
  IFprnMGHDisp = dispinterface
    ['{D37397BD-913E-4749-9894-ABFA18942A07}']
    function GetCaption: Integer; dispid 99;
    function GetCurrentMode: Integer; dispid 137;
    function GetDeviceMetrics: Integer; dispid 123;
    function GetLastError: Integer; dispid 94;
    function GetLastSummary: Integer; dispid 127;
    function GetLicense: Integer; dispid 108;
    function GetPassword: Integer; dispid 172;
    function GetRange: Integer; dispid 25;
    function GetRecord: Integer; dispid 95;
    function GetRegister: Integer; dispid 231;
    function GetSettings: Integer; dispid 132;
    function GetStatus: Integer; dispid 76;
    function GetStatusPicture: Integer; dispid 235;
    function GetStatusPictureArray: Integer; dispid 225;
    function GetSumm: Integer; dispid 90;
    function GetSupportedMode: Integer; dispid 124;
    function GetUnitVersion: Integer; dispid 233;
    function GetValue: Integer; dispid 97;
    property Height: Integer dispid 197;
    property Hour: Integer dispid 40;
    property HostAddress: WideString dispid 501;
    property HideGUI: WordBool dispid 322;
    property ECRError: Integer readonly dispid 64;
    property ECRErrorDescription: WideString readonly dispid 65;
    function EKLZActivate: Integer; dispid 219;
    function EKLZCloseArchive: Integer; dispid 222;
    property EKLZFlags: Integer readonly dispid 236;
    function EKLZGetStatus: Integer; dispid 223;
    property EKLZKPKNumber: Integer dispid 216;
    property EnableCheckSumm: WordBool dispid 148;
    function EnableDeferredZReports: Integer; dispid 302;
    function EndAdd: Integer; dispid 150;
    property EndDay: Integer dispid 16;
    function EndDocument: Integer; dispid 247;
    function EndFiscDocument: Integer; dispid 262;
    property EndMonth: Integer dispid 17;
    function EndReport: Integer; dispid 113;
    property EndSession: Integer dispid 15;
    property EndYear: Integer dispid 18;
    property ENQTimeout: Integer dispid 187;
    function ExecSystemOperation: Integer; dispid 43978;
    property Factor: Integer dispid 143;
    property Field: Integer dispid 130;
    property FieldType: Integer dispid 131;
    property FileName: WideString dispid 228;
    property FirstRecord: Integer dispid 155;
    property FirstZone: Integer dispid 153;
    property Fiscal: WordBool readonly dispid 54;
    function Fiscalization: Integer; dispid 24;
    property FontBold: WordBool dispid 241;
    property FontDblHeight: WordBool dispid 245;
    property FontDblWidth: WordBool dispid 248;
    property FontItalic: WordBool dispid 242;
    property FontUnderline: WordBool dispid 243;
    property FontNegative: WordBool dispid 244;
    property Frequency: Integer dispid 190;
    function FullCut: Integer; dispid 138;
    property EntryNum: Integer dispid 401;
    property ErrorPosition: Integer readonly dispid 402;
    function FindIPDevices(Timeour: Integer): WideString; dispid 403;
    function EndItem: Integer; dispid 313;
    function EndComplexAttribute: Integer; dispid 320;
    property EndCheckNumber: Integer dispid 321;
    property ENVDMode: WordBool dispid 404;
    function CheckStatusSKNO: Integer; dispid 408;
    property FFDVer: Integer readonly dispid 324;
    property CacheReport: WordBool dispid 110;
    function CancelCheck: Integer; dispid 89;
    property Caption: WideString dispid 36;
    property CaptionPurpose: Integer dispid 68;
    property CaptionTable: Integer dispid 303;
    function CardGetType: Integer; dispid 291;
    function CardRead: Integer; dispid 289;
    function CardWrite: Integer; dispid 290;
    function CashIncome: Integer; dispid 78;
    function CashOutcome: Integer; dispid 79;
    property Change: Double readonly dispid 206;
    property CharLineLength: Integer readonly dispid 209;
    property CheckNumber: Integer dispid 57;
    property CheckPaperPresent: WordBool readonly dispid 174;
    property CheckState: Integer readonly dispid 59;
    property CheckType: Integer dispid 201;
    property ClearJrn: Integer dispid 296;
    function ClearOutput: Integer; dispid 163;
    function ClearPictureArray: Integer; dispid 212;
    function CloseCheck: Integer; dispid 81;
    property ComPortsDescriptions: WideString readonly dispid 426;
    property ControlPaperPresent: WordBool readonly dispid 175;
    property Count: Integer dispid 193;
    property CounterType: Integer dispid 307;
    property CoverOpened: WordBool readonly dispid 176;
    property CurrentDeviceName: WideString dispid 8;
    property CurrentDeviceNumber: Integer dispid 7;
    property CurrentDeviceIndex: Integer dispid 6;
    property Day: Integer dispid 37;
    property DefaultPassword: WideString dispid 295;
    function DeleteDevice: Integer; dispid 22;
    function DeleteLastPicture: Integer; dispid 237;
    function Delivery: Integer; dispid 82;
    function DemoPrint: Integer; dispid 239;
    property Department: Integer dispid 48;
    property Destination: Integer dispid 107;
    property DeviceEnabled: WordBool dispid 62;
    property DeviceCount: Integer readonly dispid 9;
    property DeviceDescription: WideString readonly dispid 11;
    property DeviceSettings: WideString dispid 286;
    property DevicesSettings: WideString dispid 284;
    property DisableParamWindow: WordBool dispid 14;
    property DisablePasswordSettings: WordBool dispid 167;
    property DiscountType: Integer dispid 293;
    property DiscountTypeNumber: Integer dispid 234;
    property DiscountValue: Double dispid 294;
    function DisplayDraw: Integer; dispid 73;
    function DisplayWrite: Integer; dispid 72;
    property DocNumber: Integer dispid 297;
    property DrawerOffTimeout: Integer dispid 179;
    property DrawerOnQuantity: Integer dispid 180;
    property DrawerOnTimeout: Integer dispid 178;
    property DrawerOpened: WordBool readonly dispid 162;
    property Duration: Integer dispid 191;
    property DialogFontName: WideString dispid 304;
    property DialogFontSize: Integer dispid 305;
    property DialogFontStyle: Integer dispid 306;
    function DeviceEnableEx: Integer; dispid 817;
    property DeviceEnableTimeout: Integer dispid 818;
    property CorrectionLevel: Integer dispid 65467;
    function PrintLastCheckCopy: Integer; dispid 65468;
    property BarcodeOptions: Integer dispid 1048320;
    property BarcodeRows: Integer dispid 1048321;
    property BarcodeColumns: Integer dispid 1048322;
    property BarcodeProportions: Integer dispid 1048323;
    property BarcodePixelProportions: Integer dispid 1048324;
    function OpenDirectory: Integer; dispid 1048325;
    property Directory: WideString dispid 1048326;
    property FileSize: Integer dispid 1048328;
    function ReadDirectory: Integer; dispid 1048329;
    property OpenFileParams: Byte dispid 1048336;
    function OpenFile: Integer; dispid 1048330;
    function CloseFile: Integer; dispid 1048331;
    function CloseDirectory: Integer; dispid 1048332;
    property FileOffset: Integer dispid 1048333;
    property FileReadLength: Integer dispid 1048334;
    function ReadFile: Integer; dispid 1048335;
    function DeleteFileFromSD: Integer; dispid 1048337;
    function WriteFileToSD: Integer; dispid 1048338;
    function PowerOff: Integer; dispid 1048339;
    property DrawerInvertState: WordBool dispid 2555;
    property BarcodeOptionsEx: Integer dispid 2556;
    property PortType: Integer dispid 2557;
    property PortFlags: Integer dispid 2558;
    property PortSubcommand: Integer dispid 2559;
    function PortPowerOn: Integer; dispid 2560;
    function PortPowerOff: Integer; dispid 2561;
    function PortSendData: Integer; dispid 2562;
    function PortSyncGetData: Integer; dispid 2563;
    function PortConfig: Integer; dispid 2564;
    function PortStatus: Integer; dispid 2565;
    function PrintBarcodeByNumber: Integer; dispid 2566;
    function ClearBarcodeArray: Integer; dispid 2567;
    function GetBarcodeArrayState: Integer; dispid 2568;
    function ReadBarcode: Integer; dispid 2569;
    function DeleteBarcode: Integer; dispid 2570;
    function EJState: Integer; dispid 2571;
    function WriteAttribute: Integer; dispid 2572;
    property AttrName: WideString dispid 2573;
    property AttrValue: WideString dispid 2574;
    property AttrNumber: Integer dispid 2575;
    function ReadAttribute: Integer; dispid 2576;
    property ShowModels: Integer dispid 2577;
    property OFDLastError: Integer dispid 2578;
    function ReadFNStatus: Integer; dispid 2579;
    property CheckMode: Integer dispid 2580;
    property AttrPrint: Integer dispid 2581;
    function ReadFNParam: Integer; dispid 2582;
    property FNFiscal: WordBool readonly dispid 2583;
    property FiscalSign: WideString readonly dispid 2585;
    property OperatorMessage: WordBool readonly dispid 2592;
    property LastCheckType: Integer readonly dispid 2593;
    property SessionExceedLimit: WordBool readonly dispid 2594;
    property FNFlags: Integer readonly dispid 2595;
    property Is54FZ: WordBool readonly dispid 2596;
    function Stub: Integer; dispid 2597;
    property CommandCode: Integer readonly dispid 314;
    function AboutBox: Integer; dispid 309;
    property AccessPassword: WideString dispid 165;
    property ACKTimeout: Integer dispid 186;
    function AddDevice: Integer; dispid 21;
    function AddField: Integer; dispid 240;
    function AddPictureFromFile: Integer; dispid 226;
    function AdvancedDisplayWrite: Integer; dispid 182;
    property AdvancedMode: Integer readonly dispid 109;
    function AdvancedOpenDrawer: Integer; dispid 177;
    property AdvancedRegistration: WordBool dispid 256;
    property Alignment: Integer dispid 250;
    function Annulate: Integer; dispid 88;
    property ApplicationHandle: Integer dispid 10;
    property AutoSize: WordBool dispid 251;
    property BadParam: Integer readonly dispid 33;
    property BadParamDescription: WideString readonly dispid 34;
    property Barcode: WideString dispid 12;
    property BarcodeControlCode: WordBool dispid 203;
    property BarcodeTextFont: Integer dispid 301;
    property BarcodeType: Integer dispid 215;
    property BatteryLow: WordBool readonly dispid 275;
    property BaudRate: Integer dispid 67;
    function Beep: Integer; dispid 100;
    function BeginAdd: Integer; dispid 149;
    function BeginDocument: Integer; dispid 246;
    function BeginFiscDocument: Integer; dispid 261;
    function BeginReport: Integer; dispid 112;
    property BufferingMode: WordBool dispid 281;
    function Buy: Integer; dispid 272;
    function BuyAnnulate: Integer; dispid 277;
    function BuyReturn: Integer; dispid 273;
    function BeginItem: Integer; dispid 312;
    function BeginComplexAttribute: Integer; dispid 315;
    property BarcodeVer: Integer dispid 323;
  end;

// *********************************************************************//
// Interface: IFprnMIJ
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {909E2397-B951-4DE3-B109-1BC268A35C36}
// *********************************************************************//
  IFprnMIJ = interface(IFprnMGH)
    ['{909E2397-B951-4DE3-B109-1BC268A35C36}']
    function Get_InboundStream: WideString; safecall;
    function InitSettings: Integer; safecall;
    function Get_INN: WideString; safecall;
    procedure Set_INN(const Value: WideString); safecall;
    function InputRoute: Integer; safecall;
    function Get_IsDemo: WordBool; safecall;
    function Get_IsFree: WordBool; safecall;
    function Get_JrnBrightness: Integer; safecall;
    procedure Set_JrnBrightness(Value: Integer); safecall;
    function Get_JrnCharLineLength: Integer; safecall;
    function Get_JrnFont: Integer; safecall;
    procedure Set_JrnFont(Value: Integer); safecall;
    function Get_JrnFontHeight: Integer; safecall;
    procedure Set_JrnFontHeight(Value: Integer); safecall;
    function Get_JrnLineSpacing: Integer; safecall;
    procedure Set_JrnLineSpacing(Value: Integer); safecall;
    function Get_JrnPixelLineLength: Integer; safecall;
    function Get_ItemType: Integer; safecall;
    procedure Set_ItemType(Value: Integer); safecall;
    property InboundStream: WideString read Get_InboundStream;
    property INN: WideString read Get_INN write Set_INN;
    property IsDemo: WordBool read Get_IsDemo;
    property IsFree: WordBool read Get_IsFree;
    property JrnBrightness: Integer read Get_JrnBrightness write Set_JrnBrightness;
    property JrnCharLineLength: Integer read Get_JrnCharLineLength;
    property JrnFont: Integer read Get_JrnFont write Set_JrnFont;
    property JrnFontHeight: Integer read Get_JrnFontHeight write Set_JrnFontHeight;
    property JrnLineSpacing: Integer read Get_JrnLineSpacing write Set_JrnLineSpacing;
    property JrnPixelLineLength: Integer read Get_JrnPixelLineLength;
    property ItemType: Integer read Get_ItemType write Set_ItemType;
  end;

// *********************************************************************//
// DispIntf:  IFprnMIJDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {909E2397-B951-4DE3-B109-1BC268A35C36}
// *********************************************************************//
  IFprnMIJDisp = dispinterface
    ['{909E2397-B951-4DE3-B109-1BC268A35C36}']
    property InboundStream: WideString readonly dispid 170;
    function InitSettings: Integer; dispid 142;
    property INN: WideString dispid 23;
    function InputRoute: Integer; dispid 164;
    property IsDemo: WordBool readonly dispid 274;
    property IsFree: WordBool readonly dispid 310;
    property JrnBrightness: Integer dispid 218;
    property JrnCharLineLength: Integer readonly dispid 257;
    property JrnFont: Integer dispid 217;
    property JrnFontHeight: Integer dispid 220;
    property JrnLineSpacing: Integer dispid 221;
    property JrnPixelLineLength: Integer readonly dispid 258;
    property ItemType: Integer dispid 317;
    function GetCaption: Integer; dispid 99;
    function GetCurrentMode: Integer; dispid 137;
    function GetDeviceMetrics: Integer; dispid 123;
    function GetLastError: Integer; dispid 94;
    function GetLastSummary: Integer; dispid 127;
    function GetLicense: Integer; dispid 108;
    function GetPassword: Integer; dispid 172;
    function GetRange: Integer; dispid 25;
    function GetRecord: Integer; dispid 95;
    function GetRegister: Integer; dispid 231;
    function GetSettings: Integer; dispid 132;
    function GetStatus: Integer; dispid 76;
    function GetStatusPicture: Integer; dispid 235;
    function GetStatusPictureArray: Integer; dispid 225;
    function GetSumm: Integer; dispid 90;
    function GetSupportedMode: Integer; dispid 124;
    function GetUnitVersion: Integer; dispid 233;
    function GetValue: Integer; dispid 97;
    property Height: Integer dispid 197;
    property Hour: Integer dispid 40;
    property HostAddress: WideString dispid 501;
    property HideGUI: WordBool dispid 322;
    property ECRError: Integer readonly dispid 64;
    property ECRErrorDescription: WideString readonly dispid 65;
    function EKLZActivate: Integer; dispid 219;
    function EKLZCloseArchive: Integer; dispid 222;
    property EKLZFlags: Integer readonly dispid 236;
    function EKLZGetStatus: Integer; dispid 223;
    property EKLZKPKNumber: Integer dispid 216;
    property EnableCheckSumm: WordBool dispid 148;
    function EnableDeferredZReports: Integer; dispid 302;
    function EndAdd: Integer; dispid 150;
    property EndDay: Integer dispid 16;
    function EndDocument: Integer; dispid 247;
    function EndFiscDocument: Integer; dispid 262;
    property EndMonth: Integer dispid 17;
    function EndReport: Integer; dispid 113;
    property EndSession: Integer dispid 15;
    property EndYear: Integer dispid 18;
    property ENQTimeout: Integer dispid 187;
    function ExecSystemOperation: Integer; dispid 43978;
    property Factor: Integer dispid 143;
    property Field: Integer dispid 130;
    property FieldType: Integer dispid 131;
    property FileName: WideString dispid 228;
    property FirstRecord: Integer dispid 155;
    property FirstZone: Integer dispid 153;
    property Fiscal: WordBool readonly dispid 54;
    function Fiscalization: Integer; dispid 24;
    property FontBold: WordBool dispid 241;
    property FontDblHeight: WordBool dispid 245;
    property FontDblWidth: WordBool dispid 248;
    property FontItalic: WordBool dispid 242;
    property FontUnderline: WordBool dispid 243;
    property FontNegative: WordBool dispid 244;
    property Frequency: Integer dispid 190;
    function FullCut: Integer; dispid 138;
    property EntryNum: Integer dispid 401;
    property ErrorPosition: Integer readonly dispid 402;
    function FindIPDevices(Timeour: Integer): WideString; dispid 403;
    function EndItem: Integer; dispid 313;
    function EndComplexAttribute: Integer; dispid 320;
    property EndCheckNumber: Integer dispid 321;
    property ENVDMode: WordBool dispid 404;
    function CheckStatusSKNO: Integer; dispid 408;
    property FFDVer: Integer readonly dispid 324;
    property CacheReport: WordBool dispid 110;
    function CancelCheck: Integer; dispid 89;
    property Caption: WideString dispid 36;
    property CaptionPurpose: Integer dispid 68;
    property CaptionTable: Integer dispid 303;
    function CardGetType: Integer; dispid 291;
    function CardRead: Integer; dispid 289;
    function CardWrite: Integer; dispid 290;
    function CashIncome: Integer; dispid 78;
    function CashOutcome: Integer; dispid 79;
    property Change: Double readonly dispid 206;
    property CharLineLength: Integer readonly dispid 209;
    property CheckNumber: Integer dispid 57;
    property CheckPaperPresent: WordBool readonly dispid 174;
    property CheckState: Integer readonly dispid 59;
    property CheckType: Integer dispid 201;
    property ClearJrn: Integer dispid 296;
    function ClearOutput: Integer; dispid 163;
    function ClearPictureArray: Integer; dispid 212;
    function CloseCheck: Integer; dispid 81;
    property ComPortsDescriptions: WideString readonly dispid 426;
    property ControlPaperPresent: WordBool readonly dispid 175;
    property Count: Integer dispid 193;
    property CounterType: Integer dispid 307;
    property CoverOpened: WordBool readonly dispid 176;
    property CurrentDeviceName: WideString dispid 8;
    property CurrentDeviceNumber: Integer dispid 7;
    property CurrentDeviceIndex: Integer dispid 6;
    property Day: Integer dispid 37;
    property DefaultPassword: WideString dispid 295;
    function DeleteDevice: Integer; dispid 22;
    function DeleteLastPicture: Integer; dispid 237;
    function Delivery: Integer; dispid 82;
    function DemoPrint: Integer; dispid 239;
    property Department: Integer dispid 48;
    property Destination: Integer dispid 107;
    property DeviceEnabled: WordBool dispid 62;
    property DeviceCount: Integer readonly dispid 9;
    property DeviceDescription: WideString readonly dispid 11;
    property DeviceSettings: WideString dispid 286;
    property DevicesSettings: WideString dispid 284;
    property DisableParamWindow: WordBool dispid 14;
    property DisablePasswordSettings: WordBool dispid 167;
    property DiscountType: Integer dispid 293;
    property DiscountTypeNumber: Integer dispid 234;
    property DiscountValue: Double dispid 294;
    function DisplayDraw: Integer; dispid 73;
    function DisplayWrite: Integer; dispid 72;
    property DocNumber: Integer dispid 297;
    property DrawerOffTimeout: Integer dispid 179;
    property DrawerOnQuantity: Integer dispid 180;
    property DrawerOnTimeout: Integer dispid 178;
    property DrawerOpened: WordBool readonly dispid 162;
    property Duration: Integer dispid 191;
    property DialogFontName: WideString dispid 304;
    property DialogFontSize: Integer dispid 305;
    property DialogFontStyle: Integer dispid 306;
    function DeviceEnableEx: Integer; dispid 817;
    property DeviceEnableTimeout: Integer dispid 818;
    property CorrectionLevel: Integer dispid 65467;
    function PrintLastCheckCopy: Integer; dispid 65468;
    property BarcodeOptions: Integer dispid 1048320;
    property BarcodeRows: Integer dispid 1048321;
    property BarcodeColumns: Integer dispid 1048322;
    property BarcodeProportions: Integer dispid 1048323;
    property BarcodePixelProportions: Integer dispid 1048324;
    function OpenDirectory: Integer; dispid 1048325;
    property Directory: WideString dispid 1048326;
    property FileSize: Integer dispid 1048328;
    function ReadDirectory: Integer; dispid 1048329;
    property OpenFileParams: Byte dispid 1048336;
    function OpenFile: Integer; dispid 1048330;
    function CloseFile: Integer; dispid 1048331;
    function CloseDirectory: Integer; dispid 1048332;
    property FileOffset: Integer dispid 1048333;
    property FileReadLength: Integer dispid 1048334;
    function ReadFile: Integer; dispid 1048335;
    function DeleteFileFromSD: Integer; dispid 1048337;
    function WriteFileToSD: Integer; dispid 1048338;
    function PowerOff: Integer; dispid 1048339;
    property DrawerInvertState: WordBool dispid 2555;
    property BarcodeOptionsEx: Integer dispid 2556;
    property PortType: Integer dispid 2557;
    property PortFlags: Integer dispid 2558;
    property PortSubcommand: Integer dispid 2559;
    function PortPowerOn: Integer; dispid 2560;
    function PortPowerOff: Integer; dispid 2561;
    function PortSendData: Integer; dispid 2562;
    function PortSyncGetData: Integer; dispid 2563;
    function PortConfig: Integer; dispid 2564;
    function PortStatus: Integer; dispid 2565;
    function PrintBarcodeByNumber: Integer; dispid 2566;
    function ClearBarcodeArray: Integer; dispid 2567;
    function GetBarcodeArrayState: Integer; dispid 2568;
    function ReadBarcode: Integer; dispid 2569;
    function DeleteBarcode: Integer; dispid 2570;
    function EJState: Integer; dispid 2571;
    function WriteAttribute: Integer; dispid 2572;
    property AttrName: WideString dispid 2573;
    property AttrValue: WideString dispid 2574;
    property AttrNumber: Integer dispid 2575;
    function ReadAttribute: Integer; dispid 2576;
    property ShowModels: Integer dispid 2577;
    property OFDLastError: Integer dispid 2578;
    function ReadFNStatus: Integer; dispid 2579;
    property CheckMode: Integer dispid 2580;
    property AttrPrint: Integer dispid 2581;
    function ReadFNParam: Integer; dispid 2582;
    property FNFiscal: WordBool readonly dispid 2583;
    property FiscalSign: WideString readonly dispid 2585;
    property OperatorMessage: WordBool readonly dispid 2592;
    property LastCheckType: Integer readonly dispid 2593;
    property SessionExceedLimit: WordBool readonly dispid 2594;
    property FNFlags: Integer readonly dispid 2595;
    property Is54FZ: WordBool readonly dispid 2596;
    function Stub: Integer; dispid 2597;
    property CommandCode: Integer readonly dispid 314;
    function AboutBox: Integer; dispid 309;
    property AccessPassword: WideString dispid 165;
    property ACKTimeout: Integer dispid 186;
    function AddDevice: Integer; dispid 21;
    function AddField: Integer; dispid 240;
    function AddPictureFromFile: Integer; dispid 226;
    function AdvancedDisplayWrite: Integer; dispid 182;
    property AdvancedMode: Integer readonly dispid 109;
    function AdvancedOpenDrawer: Integer; dispid 177;
    property AdvancedRegistration: WordBool dispid 256;
    property Alignment: Integer dispid 250;
    function Annulate: Integer; dispid 88;
    property ApplicationHandle: Integer dispid 10;
    property AutoSize: WordBool dispid 251;
    property BadParam: Integer readonly dispid 33;
    property BadParamDescription: WideString readonly dispid 34;
    property Barcode: WideString dispid 12;
    property BarcodeControlCode: WordBool dispid 203;
    property BarcodeTextFont: Integer dispid 301;
    property BarcodeType: Integer dispid 215;
    property BatteryLow: WordBool readonly dispid 275;
    property BaudRate: Integer dispid 67;
    function Beep: Integer; dispid 100;
    function BeginAdd: Integer; dispid 149;
    function BeginDocument: Integer; dispid 246;
    function BeginFiscDocument: Integer; dispid 261;
    function BeginReport: Integer; dispid 112;
    property BufferingMode: WordBool dispid 281;
    function Buy: Integer; dispid 272;
    function BuyAnnulate: Integer; dispid 277;
    function BuyReturn: Integer; dispid 273;
    function BeginItem: Integer; dispid 312;
    function BeginComplexAttribute: Integer; dispid 315;
    property BarcodeVer: Integer dispid 323;
  end;

// *********************************************************************//
// Interface: IFprnMKL
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {780B3263-999D-4296-92B7-EDF87CF992F4}
// *********************************************************************//
  IFprnMKL = interface(IFprnMIJ)
    ['{780B3263-999D-4296-92B7-EDF87CF992F4}']
    function Get_LastRecord: Integer; safecall;
    procedure Set_LastRecord(Value: Integer); safecall;
    function Get_LastZone: Integer; safecall;
    procedure Set_LastZone(Value: Integer); safecall;
    function Get_LeftMargin: Integer; safecall;
    procedure Set_LeftMargin(Value: Integer); safecall;
    function Get_License: Integer; safecall;
    procedure Set_License(Value: Integer); safecall;
    function Get_LineNumber: Integer; safecall;
    procedure Set_LineNumber(Value: Integer); safecall;
    function LoadDevicesSettings: Integer; safecall;
    function Get_LockDevices: WordBool; safecall;
    procedure Set_LockDevices(Value: WordBool); safecall;
    function LockKeyboard: Integer; safecall;
    function Get_LogicalNumber: Integer; safecall;
    property LastRecord: Integer read Get_LastRecord write Set_LastRecord;
    property LastZone: Integer read Get_LastZone write Set_LastZone;
    property LeftMargin: Integer read Get_LeftMargin write Set_LeftMargin;
    property License: Integer read Get_License write Set_License;
    property LineNumber: Integer read Get_LineNumber write Set_LineNumber;
    property LockDevices: WordBool read Get_LockDevices write Set_LockDevices;
    property LogicalNumber: Integer read Get_LogicalNumber;
  end;

// *********************************************************************//
// DispIntf:  IFprnMKLDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {780B3263-999D-4296-92B7-EDF87CF992F4}
// *********************************************************************//
  IFprnMKLDisp = dispinterface
    ['{780B3263-999D-4296-92B7-EDF87CF992F4}']
    property LastRecord: Integer dispid 156;
    property LastZone: Integer dispid 154;
    property LeftMargin: Integer dispid 214;
    property License: Integer dispid 29;
    property LineNumber: Integer dispid 183;
    function LoadDevicesSettings: Integer; dispid 283;
    property LockDevices: WordBool dispid 13;
    function LockKeyboard: Integer; dispid 74;
    property LogicalNumber: Integer readonly dispid 52;
    property InboundStream: WideString readonly dispid 170;
    function InitSettings: Integer; dispid 142;
    property INN: WideString dispid 23;
    function InputRoute: Integer; dispid 164;
    property IsDemo: WordBool readonly dispid 274;
    property IsFree: WordBool readonly dispid 310;
    property JrnBrightness: Integer dispid 218;
    property JrnCharLineLength: Integer readonly dispid 257;
    property JrnFont: Integer dispid 217;
    property JrnFontHeight: Integer dispid 220;
    property JrnLineSpacing: Integer dispid 221;
    property JrnPixelLineLength: Integer readonly dispid 258;
    property ItemType: Integer dispid 317;
    function GetCaption: Integer; dispid 99;
    function GetCurrentMode: Integer; dispid 137;
    function GetDeviceMetrics: Integer; dispid 123;
    function GetLastError: Integer; dispid 94;
    function GetLastSummary: Integer; dispid 127;
    function GetLicense: Integer; dispid 108;
    function GetPassword: Integer; dispid 172;
    function GetRange: Integer; dispid 25;
    function GetRecord: Integer; dispid 95;
    function GetRegister: Integer; dispid 231;
    function GetSettings: Integer; dispid 132;
    function GetStatus: Integer; dispid 76;
    function GetStatusPicture: Integer; dispid 235;
    function GetStatusPictureArray: Integer; dispid 225;
    function GetSumm: Integer; dispid 90;
    function GetSupportedMode: Integer; dispid 124;
    function GetUnitVersion: Integer; dispid 233;
    function GetValue: Integer; dispid 97;
    property Height: Integer dispid 197;
    property Hour: Integer dispid 40;
    property HostAddress: WideString dispid 501;
    property HideGUI: WordBool dispid 322;
    property ECRError: Integer readonly dispid 64;
    property ECRErrorDescription: WideString readonly dispid 65;
    function EKLZActivate: Integer; dispid 219;
    function EKLZCloseArchive: Integer; dispid 222;
    property EKLZFlags: Integer readonly dispid 236;
    function EKLZGetStatus: Integer; dispid 223;
    property EKLZKPKNumber: Integer dispid 216;
    property EnableCheckSumm: WordBool dispid 148;
    function EnableDeferredZReports: Integer; dispid 302;
    function EndAdd: Integer; dispid 150;
    property EndDay: Integer dispid 16;
    function EndDocument: Integer; dispid 247;
    function EndFiscDocument: Integer; dispid 262;
    property EndMonth: Integer dispid 17;
    function EndReport: Integer; dispid 113;
    property EndSession: Integer dispid 15;
    property EndYear: Integer dispid 18;
    property ENQTimeout: Integer dispid 187;
    function ExecSystemOperation: Integer; dispid 43978;
    property Factor: Integer dispid 143;
    property Field: Integer dispid 130;
    property FieldType: Integer dispid 131;
    property FileName: WideString dispid 228;
    property FirstRecord: Integer dispid 155;
    property FirstZone: Integer dispid 153;
    property Fiscal: WordBool readonly dispid 54;
    function Fiscalization: Integer; dispid 24;
    property FontBold: WordBool dispid 241;
    property FontDblHeight: WordBool dispid 245;
    property FontDblWidth: WordBool dispid 248;
    property FontItalic: WordBool dispid 242;
    property FontUnderline: WordBool dispid 243;
    property FontNegative: WordBool dispid 244;
    property Frequency: Integer dispid 190;
    function FullCut: Integer; dispid 138;
    property EntryNum: Integer dispid 401;
    property ErrorPosition: Integer readonly dispid 402;
    function FindIPDevices(Timeour: Integer): WideString; dispid 403;
    function EndItem: Integer; dispid 313;
    function EndComplexAttribute: Integer; dispid 320;
    property EndCheckNumber: Integer dispid 321;
    property ENVDMode: WordBool dispid 404;
    function CheckStatusSKNO: Integer; dispid 408;
    property FFDVer: Integer readonly dispid 324;
    property CacheReport: WordBool dispid 110;
    function CancelCheck: Integer; dispid 89;
    property Caption: WideString dispid 36;
    property CaptionPurpose: Integer dispid 68;
    property CaptionTable: Integer dispid 303;
    function CardGetType: Integer; dispid 291;
    function CardRead: Integer; dispid 289;
    function CardWrite: Integer; dispid 290;
    function CashIncome: Integer; dispid 78;
    function CashOutcome: Integer; dispid 79;
    property Change: Double readonly dispid 206;
    property CharLineLength: Integer readonly dispid 209;
    property CheckNumber: Integer dispid 57;
    property CheckPaperPresent: WordBool readonly dispid 174;
    property CheckState: Integer readonly dispid 59;
    property CheckType: Integer dispid 201;
    property ClearJrn: Integer dispid 296;
    function ClearOutput: Integer; dispid 163;
    function ClearPictureArray: Integer; dispid 212;
    function CloseCheck: Integer; dispid 81;
    property ComPortsDescriptions: WideString readonly dispid 426;
    property ControlPaperPresent: WordBool readonly dispid 175;
    property Count: Integer dispid 193;
    property CounterType: Integer dispid 307;
    property CoverOpened: WordBool readonly dispid 176;
    property CurrentDeviceName: WideString dispid 8;
    property CurrentDeviceNumber: Integer dispid 7;
    property CurrentDeviceIndex: Integer dispid 6;
    property Day: Integer dispid 37;
    property DefaultPassword: WideString dispid 295;
    function DeleteDevice: Integer; dispid 22;
    function DeleteLastPicture: Integer; dispid 237;
    function Delivery: Integer; dispid 82;
    function DemoPrint: Integer; dispid 239;
    property Department: Integer dispid 48;
    property Destination: Integer dispid 107;
    property DeviceEnabled: WordBool dispid 62;
    property DeviceCount: Integer readonly dispid 9;
    property DeviceDescription: WideString readonly dispid 11;
    property DeviceSettings: WideString dispid 286;
    property DevicesSettings: WideString dispid 284;
    property DisableParamWindow: WordBool dispid 14;
    property DisablePasswordSettings: WordBool dispid 167;
    property DiscountType: Integer dispid 293;
    property DiscountTypeNumber: Integer dispid 234;
    property DiscountValue: Double dispid 294;
    function DisplayDraw: Integer; dispid 73;
    function DisplayWrite: Integer; dispid 72;
    property DocNumber: Integer dispid 297;
    property DrawerOffTimeout: Integer dispid 179;
    property DrawerOnQuantity: Integer dispid 180;
    property DrawerOnTimeout: Integer dispid 178;
    property DrawerOpened: WordBool readonly dispid 162;
    property Duration: Integer dispid 191;
    property DialogFontName: WideString dispid 304;
    property DialogFontSize: Integer dispid 305;
    property DialogFontStyle: Integer dispid 306;
    function DeviceEnableEx: Integer; dispid 817;
    property DeviceEnableTimeout: Integer dispid 818;
    property CorrectionLevel: Integer dispid 65467;
    function PrintLastCheckCopy: Integer; dispid 65468;
    property BarcodeOptions: Integer dispid 1048320;
    property BarcodeRows: Integer dispid 1048321;
    property BarcodeColumns: Integer dispid 1048322;
    property BarcodeProportions: Integer dispid 1048323;
    property BarcodePixelProportions: Integer dispid 1048324;
    function OpenDirectory: Integer; dispid 1048325;
    property Directory: WideString dispid 1048326;
    property FileSize: Integer dispid 1048328;
    function ReadDirectory: Integer; dispid 1048329;
    property OpenFileParams: Byte dispid 1048336;
    function OpenFile: Integer; dispid 1048330;
    function CloseFile: Integer; dispid 1048331;
    function CloseDirectory: Integer; dispid 1048332;
    property FileOffset: Integer dispid 1048333;
    property FileReadLength: Integer dispid 1048334;
    function ReadFile: Integer; dispid 1048335;
    function DeleteFileFromSD: Integer; dispid 1048337;
    function WriteFileToSD: Integer; dispid 1048338;
    function PowerOff: Integer; dispid 1048339;
    property DrawerInvertState: WordBool dispid 2555;
    property BarcodeOptionsEx: Integer dispid 2556;
    property PortType: Integer dispid 2557;
    property PortFlags: Integer dispid 2558;
    property PortSubcommand: Integer dispid 2559;
    function PortPowerOn: Integer; dispid 2560;
    function PortPowerOff: Integer; dispid 2561;
    function PortSendData: Integer; dispid 2562;
    function PortSyncGetData: Integer; dispid 2563;
    function PortConfig: Integer; dispid 2564;
    function PortStatus: Integer; dispid 2565;
    function PrintBarcodeByNumber: Integer; dispid 2566;
    function ClearBarcodeArray: Integer; dispid 2567;
    function GetBarcodeArrayState: Integer; dispid 2568;
    function ReadBarcode: Integer; dispid 2569;
    function DeleteBarcode: Integer; dispid 2570;
    function EJState: Integer; dispid 2571;
    function WriteAttribute: Integer; dispid 2572;
    property AttrName: WideString dispid 2573;
    property AttrValue: WideString dispid 2574;
    property AttrNumber: Integer dispid 2575;
    function ReadAttribute: Integer; dispid 2576;
    property ShowModels: Integer dispid 2577;
    property OFDLastError: Integer dispid 2578;
    function ReadFNStatus: Integer; dispid 2579;
    property CheckMode: Integer dispid 2580;
    property AttrPrint: Integer dispid 2581;
    function ReadFNParam: Integer; dispid 2582;
    property FNFiscal: WordBool readonly dispid 2583;
    property FiscalSign: WideString readonly dispid 2585;
    property OperatorMessage: WordBool readonly dispid 2592;
    property LastCheckType: Integer readonly dispid 2593;
    property SessionExceedLimit: WordBool readonly dispid 2594;
    property FNFlags: Integer readonly dispid 2595;
    property Is54FZ: WordBool readonly dispid 2596;
    function Stub: Integer; dispid 2597;
    property CommandCode: Integer readonly dispid 314;
    function AboutBox: Integer; dispid 309;
    property AccessPassword: WideString dispid 165;
    property ACKTimeout: Integer dispid 186;
    function AddDevice: Integer; dispid 21;
    function AddField: Integer; dispid 240;
    function AddPictureFromFile: Integer; dispid 226;
    function AdvancedDisplayWrite: Integer; dispid 182;
    property AdvancedMode: Integer readonly dispid 109;
    function AdvancedOpenDrawer: Integer; dispid 177;
    property AdvancedRegistration: WordBool dispid 256;
    property Alignment: Integer dispid 250;
    function Annulate: Integer; dispid 88;
    property ApplicationHandle: Integer dispid 10;
    property AutoSize: WordBool dispid 251;
    property BadParam: Integer readonly dispid 33;
    property BadParamDescription: WideString readonly dispid 34;
    property Barcode: WideString dispid 12;
    property BarcodeControlCode: WordBool dispid 203;
    property BarcodeTextFont: Integer dispid 301;
    property BarcodeType: Integer dispid 215;
    property BatteryLow: WordBool readonly dispid 275;
    property BaudRate: Integer dispid 67;
    function Beep: Integer; dispid 100;
    function BeginAdd: Integer; dispid 149;
    function BeginDocument: Integer; dispid 246;
    function BeginFiscDocument: Integer; dispid 261;
    function BeginReport: Integer; dispid 112;
    property BufferingMode: WordBool dispid 281;
    function Buy: Integer; dispid 272;
    function BuyAnnulate: Integer; dispid 277;
    function BuyReturn: Integer; dispid 273;
    function BeginItem: Integer; dispid 312;
    function BeginComplexAttribute: Integer; dispid 315;
    property BarcodeVer: Integer dispid 323;
  end;

// *********************************************************************//
// Interface: IFprnMMN
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2FC35006-4625-4485-9F77-02608DFD993A}
// *********************************************************************//
  IFprnMMN = interface(IFprnMKL)
    ['{2FC35006-4625-4485-9F77-02608DFD993A}']
    function Get_MachineName: WideString; safecall;
    procedure Set_MachineName(const Value: WideString); safecall;
    function Get_MachineNumber: WideString; safecall;
    procedure Set_MachineNumber(const Value: WideString); safecall;
    function Get_MaxCaptionLength: Integer; safecall;
    function Get_Minute: Integer; safecall;
    procedure Set_Minute(Value: Integer); safecall;
    function Get_Mode: Integer; safecall;
    procedure Set_Mode(Value: Integer); safecall;
    function Get_Model: Integer; safecall;
    procedure Set_Model(Value: Integer); safecall;
    function Get_Model_OLD: Integer; safecall;
    function Get_ModelCheck: WordBool; safecall;
    procedure Set_ModelCheck(Value: WordBool); safecall;
    function Get_Month: Integer; safecall;
    procedure Set_Month(Value: Integer); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Value: WideString); safecall;
    function Get_NeedResult: Integer; safecall;
    procedure Set_NeedResult(Value: Integer); safecall;
    function NewDocument: Integer; safecall;
    property MachineName: WideString read Get_MachineName write Set_MachineName;
    property MachineNumber: WideString read Get_MachineNumber write Set_MachineNumber;
    property MaxCaptionLength: Integer read Get_MaxCaptionLength;
    property Minute: Integer read Get_Minute write Set_Minute;
    property Mode: Integer read Get_Mode write Set_Mode;
    property Model: Integer read Get_Model write Set_Model;
    property Model_OLD: Integer read Get_Model_OLD;
    property ModelCheck: WordBool read Get_ModelCheck write Set_ModelCheck;
    property Month: Integer read Get_Month write Set_Month;
    property Name: WideString read Get_Name write Set_Name;
    property NeedResult: Integer read Get_NeedResult write Set_NeedResult;
  end;

// *********************************************************************//
// DispIntf:  IFprnMMNDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2FC35006-4625-4485-9F77-02608DFD993A}
// *********************************************************************//
  IFprnMMNDisp = dispinterface
    ['{2FC35006-4625-4485-9F77-02608DFD993A}']
    property MachineName: WideString dispid 5;
    property MachineNumber: WideString dispid 19;
    property MaxCaptionLength: Integer readonly dispid 255;
    property Minute: Integer dispid 41;
    property Mode: Integer dispid 35;
    property Model: Integer dispid 285;
    property Model_OLD: Integer readonly dispid 56;
    property ModelCheck: WordBool dispid 134;
    property Month: Integer dispid 38;
    property Name: WideString dispid 45;
    property NeedResult: Integer dispid 308;
    function NewDocument: Integer; dispid 278;
    property LastRecord: Integer dispid 156;
    property LastZone: Integer dispid 154;
    property LeftMargin: Integer dispid 214;
    property License: Integer dispid 29;
    property LineNumber: Integer dispid 183;
    function LoadDevicesSettings: Integer; dispid 283;
    property LockDevices: WordBool dispid 13;
    function LockKeyboard: Integer; dispid 74;
    property LogicalNumber: Integer readonly dispid 52;
    property InboundStream: WideString readonly dispid 170;
    function InitSettings: Integer; dispid 142;
    property INN: WideString dispid 23;
    function InputRoute: Integer; dispid 164;
    property IsDemo: WordBool readonly dispid 274;
    property IsFree: WordBool readonly dispid 310;
    property JrnBrightness: Integer dispid 218;
    property JrnCharLineLength: Integer readonly dispid 257;
    property JrnFont: Integer dispid 217;
    property JrnFontHeight: Integer dispid 220;
    property JrnLineSpacing: Integer dispid 221;
    property JrnPixelLineLength: Integer readonly dispid 258;
    property ItemType: Integer dispid 317;
    function GetCaption: Integer; dispid 99;
    function GetCurrentMode: Integer; dispid 137;
    function GetDeviceMetrics: Integer; dispid 123;
    function GetLastError: Integer; dispid 94;
    function GetLastSummary: Integer; dispid 127;
    function GetLicense: Integer; dispid 108;
    function GetPassword: Integer; dispid 172;
    function GetRange: Integer; dispid 25;
    function GetRecord: Integer; dispid 95;
    function GetRegister: Integer; dispid 231;
    function GetSettings: Integer; dispid 132;
    function GetStatus: Integer; dispid 76;
    function GetStatusPicture: Integer; dispid 235;
    function GetStatusPictureArray: Integer; dispid 225;
    function GetSumm: Integer; dispid 90;
    function GetSupportedMode: Integer; dispid 124;
    function GetUnitVersion: Integer; dispid 233;
    function GetValue: Integer; dispid 97;
    property Height: Integer dispid 197;
    property Hour: Integer dispid 40;
    property HostAddress: WideString dispid 501;
    property HideGUI: WordBool dispid 322;
    property ECRError: Integer readonly dispid 64;
    property ECRErrorDescription: WideString readonly dispid 65;
    function EKLZActivate: Integer; dispid 219;
    function EKLZCloseArchive: Integer; dispid 222;
    property EKLZFlags: Integer readonly dispid 236;
    function EKLZGetStatus: Integer; dispid 223;
    property EKLZKPKNumber: Integer dispid 216;
    property EnableCheckSumm: WordBool dispid 148;
    function EnableDeferredZReports: Integer; dispid 302;
    function EndAdd: Integer; dispid 150;
    property EndDay: Integer dispid 16;
    function EndDocument: Integer; dispid 247;
    function EndFiscDocument: Integer; dispid 262;
    property EndMonth: Integer dispid 17;
    function EndReport: Integer; dispid 113;
    property EndSession: Integer dispid 15;
    property EndYear: Integer dispid 18;
    property ENQTimeout: Integer dispid 187;
    function ExecSystemOperation: Integer; dispid 43978;
    property Factor: Integer dispid 143;
    property Field: Integer dispid 130;
    property FieldType: Integer dispid 131;
    property FileName: WideString dispid 228;
    property FirstRecord: Integer dispid 155;
    property FirstZone: Integer dispid 153;
    property Fiscal: WordBool readonly dispid 54;
    function Fiscalization: Integer; dispid 24;
    property FontBold: WordBool dispid 241;
    property FontDblHeight: WordBool dispid 245;
    property FontDblWidth: WordBool dispid 248;
    property FontItalic: WordBool dispid 242;
    property FontUnderline: WordBool dispid 243;
    property FontNegative: WordBool dispid 244;
    property Frequency: Integer dispid 190;
    function FullCut: Integer; dispid 138;
    property EntryNum: Integer dispid 401;
    property ErrorPosition: Integer readonly dispid 402;
    function FindIPDevices(Timeour: Integer): WideString; dispid 403;
    function EndItem: Integer; dispid 313;
    function EndComplexAttribute: Integer; dispid 320;
    property EndCheckNumber: Integer dispid 321;
    property ENVDMode: WordBool dispid 404;
    function CheckStatusSKNO: Integer; dispid 408;
    property FFDVer: Integer readonly dispid 324;
    property CacheReport: WordBool dispid 110;
    function CancelCheck: Integer; dispid 89;
    property Caption: WideString dispid 36;
    property CaptionPurpose: Integer dispid 68;
    property CaptionTable: Integer dispid 303;
    function CardGetType: Integer; dispid 291;
    function CardRead: Integer; dispid 289;
    function CardWrite: Integer; dispid 290;
    function CashIncome: Integer; dispid 78;
    function CashOutcome: Integer; dispid 79;
    property Change: Double readonly dispid 206;
    property CharLineLength: Integer readonly dispid 209;
    property CheckNumber: Integer dispid 57;
    property CheckPaperPresent: WordBool readonly dispid 174;
    property CheckState: Integer readonly dispid 59;
    property CheckType: Integer dispid 201;
    property ClearJrn: Integer dispid 296;
    function ClearOutput: Integer; dispid 163;
    function ClearPictureArray: Integer; dispid 212;
    function CloseCheck: Integer; dispid 81;
    property ComPortsDescriptions: WideString readonly dispid 426;
    property ControlPaperPresent: WordBool readonly dispid 175;
    property Count: Integer dispid 193;
    property CounterType: Integer dispid 307;
    property CoverOpened: WordBool readonly dispid 176;
    property CurrentDeviceName: WideString dispid 8;
    property CurrentDeviceNumber: Integer dispid 7;
    property CurrentDeviceIndex: Integer dispid 6;
    property Day: Integer dispid 37;
    property DefaultPassword: WideString dispid 295;
    function DeleteDevice: Integer; dispid 22;
    function DeleteLastPicture: Integer; dispid 237;
    function Delivery: Integer; dispid 82;
    function DemoPrint: Integer; dispid 239;
    property Department: Integer dispid 48;
    property Destination: Integer dispid 107;
    property DeviceEnabled: WordBool dispid 62;
    property DeviceCount: Integer readonly dispid 9;
    property DeviceDescription: WideString readonly dispid 11;
    property DeviceSettings: WideString dispid 286;
    property DevicesSettings: WideString dispid 284;
    property DisableParamWindow: WordBool dispid 14;
    property DisablePasswordSettings: WordBool dispid 167;
    property DiscountType: Integer dispid 293;
    property DiscountTypeNumber: Integer dispid 234;
    property DiscountValue: Double dispid 294;
    function DisplayDraw: Integer; dispid 73;
    function DisplayWrite: Integer; dispid 72;
    property DocNumber: Integer dispid 297;
    property DrawerOffTimeout: Integer dispid 179;
    property DrawerOnQuantity: Integer dispid 180;
    property DrawerOnTimeout: Integer dispid 178;
    property DrawerOpened: WordBool readonly dispid 162;
    property Duration: Integer dispid 191;
    property DialogFontName: WideString dispid 304;
    property DialogFontSize: Integer dispid 305;
    property DialogFontStyle: Integer dispid 306;
    function DeviceEnableEx: Integer; dispid 817;
    property DeviceEnableTimeout: Integer dispid 818;
    property CorrectionLevel: Integer dispid 65467;
    function PrintLastCheckCopy: Integer; dispid 65468;
    property BarcodeOptions: Integer dispid 1048320;
    property BarcodeRows: Integer dispid 1048321;
    property BarcodeColumns: Integer dispid 1048322;
    property BarcodeProportions: Integer dispid 1048323;
    property BarcodePixelProportions: Integer dispid 1048324;
    function OpenDirectory: Integer; dispid 1048325;
    property Directory: WideString dispid 1048326;
    property FileSize: Integer dispid 1048328;
    function ReadDirectory: Integer; dispid 1048329;
    property OpenFileParams: Byte dispid 1048336;
    function OpenFile: Integer; dispid 1048330;
    function CloseFile: Integer; dispid 1048331;
    function CloseDirectory: Integer; dispid 1048332;
    property FileOffset: Integer dispid 1048333;
    property FileReadLength: Integer dispid 1048334;
    function ReadFile: Integer; dispid 1048335;
    function DeleteFileFromSD: Integer; dispid 1048337;
    function WriteFileToSD: Integer; dispid 1048338;
    function PowerOff: Integer; dispid 1048339;
    property DrawerInvertState: WordBool dispid 2555;
    property BarcodeOptionsEx: Integer dispid 2556;
    property PortType: Integer dispid 2557;
    property PortFlags: Integer dispid 2558;
    property PortSubcommand: Integer dispid 2559;
    function PortPowerOn: Integer; dispid 2560;
    function PortPowerOff: Integer; dispid 2561;
    function PortSendData: Integer; dispid 2562;
    function PortSyncGetData: Integer; dispid 2563;
    function PortConfig: Integer; dispid 2564;
    function PortStatus: Integer; dispid 2565;
    function PrintBarcodeByNumber: Integer; dispid 2566;
    function ClearBarcodeArray: Integer; dispid 2567;
    function GetBarcodeArrayState: Integer; dispid 2568;
    function ReadBarcode: Integer; dispid 2569;
    function DeleteBarcode: Integer; dispid 2570;
    function EJState: Integer; dispid 2571;
    function WriteAttribute: Integer; dispid 2572;
    property AttrName: WideString dispid 2573;
    property AttrValue: WideString dispid 2574;
    property AttrNumber: Integer dispid 2575;
    function ReadAttribute: Integer; dispid 2576;
    property ShowModels: Integer dispid 2577;
    property OFDLastError: Integer dispid 2578;
    function ReadFNStatus: Integer; dispid 2579;
    property CheckMode: Integer dispid 2580;
    property AttrPrint: Integer dispid 2581;
    function ReadFNParam: Integer; dispid 2582;
    property FNFiscal: WordBool readonly dispid 2583;
    property FiscalSign: WideString readonly dispid 2585;
    property OperatorMessage: WordBool readonly dispid 2592;
    property LastCheckType: Integer readonly dispid 2593;
    property SessionExceedLimit: WordBool readonly dispid 2594;
    property FNFlags: Integer readonly dispid 2595;
    property Is54FZ: WordBool readonly dispid 2596;
    function Stub: Integer; dispid 2597;
    property CommandCode: Integer readonly dispid 314;
    function AboutBox: Integer; dispid 309;
    property AccessPassword: WideString dispid 165;
    property ACKTimeout: Integer dispid 186;
    function AddDevice: Integer; dispid 21;
    function AddField: Integer; dispid 240;
    function AddPictureFromFile: Integer; dispid 226;
    function AdvancedDisplayWrite: Integer; dispid 182;
    property AdvancedMode: Integer readonly dispid 109;
    function AdvancedOpenDrawer: Integer; dispid 177;
    property AdvancedRegistration: WordBool dispid 256;
    property Alignment: Integer dispid 250;
    function Annulate: Integer; dispid 88;
    property ApplicationHandle: Integer dispid 10;
    property AutoSize: WordBool dispid 251;
    property BadParam: Integer readonly dispid 33;
    property BadParamDescription: WideString readonly dispid 34;
    property Barcode: WideString dispid 12;
    property BarcodeControlCode: WordBool dispid 203;
    property BarcodeTextFont: Integer dispid 301;
    property BarcodeType: Integer dispid 215;
    property BatteryLow: WordBool readonly dispid 275;
    property BaudRate: Integer dispid 67;
    function Beep: Integer; dispid 100;
    function BeginAdd: Integer; dispid 149;
    function BeginDocument: Integer; dispid 246;
    function BeginFiscDocument: Integer; dispid 261;
    function BeginReport: Integer; dispid 112;
    property BufferingMode: WordBool dispid 281;
    function Buy: Integer; dispid 272;
    function BuyAnnulate: Integer; dispid 277;
    function BuyReturn: Integer; dispid 273;
    function BeginItem: Integer; dispid 312;
    function BeginComplexAttribute: Integer; dispid 315;
    property BarcodeVer: Integer dispid 323;
  end;

// *********************************************************************//
// Interface: IFprnMOP
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3C4CB351-D6B1-41DC-A400-78AC3E2C45A5}
// *********************************************************************//
  IFprnMOP = interface(IFprnMMN)
    ['{3C4CB351-D6B1-41DC-A400-78AC3E2C45A5}']
    function OpenCheck: Integer; safecall;
    function OpenDrawer: Integer; safecall;
    function OpenSession: Integer; safecall;
    function Get_OperationType: Integer; safecall;
    procedure Set_OperationType(Value: Integer); safecall;
    function Get_Operator_: Integer; safecall;
    function Get_OrderCode: WideString; safecall;
    procedure Set_OrderCode(const Value: WideString); safecall;
    function Get_OrderNumber: Integer; safecall;
    procedure Set_OrderNumber(Value: Integer); safecall;
    function Get_OutboundStream: WideString; safecall;
    procedure Set_OutboundStream(const Value: WideString); safecall;
    function Get_OutOfPaper: WordBool; safecall;
    function PartialCut: Integer; safecall;
    function Get_Password: WideString; safecall;
    procedure Set_Password(const Value: WideString); safecall;
    function Get_PasswordEntered: WordBool; safecall;
    function Payment: Integer; safecall;
    function Get_Percents: Double; safecall;
    procedure Set_Percents(Value: Double); safecall;
    function PercentsCharge: Integer; safecall;
    function PercentsDiscount: Integer; safecall;
    function Get_PictureNumber: Integer; safecall;
    procedure Set_PictureNumber(Value: Integer); safecall;
    function Get_PictureState: Integer; safecall;
    function Get_PixelLineLength: Integer; safecall;
    function Get_PLUNumber: Integer; safecall;
    procedure Set_PLUNumber(Value: Integer); safecall;
    function Get_PointPosition: Integer; safecall;
    procedure Set_PointPosition(Value: Integer); safecall;
    function Get_PortNumber: Integer; safecall;
    procedure Set_PortNumber(Value: Integer); safecall;
    function Get_Price: Double; safecall;
    procedure Set_Price(Value: Double); safecall;
    function PrintBarcode: Integer; safecall;
    function Get_PrintBarcodeText: Integer; safecall;
    procedure Set_PrintBarcodeText(Value: Integer); safecall;
    function PrintBitMap: Integer; safecall;
    function PrintBitMapFromFile: Integer; safecall;
    function Get_PrinterConnectionFailed: WordBool; safecall;
    function Get_PrinterCutMechanismError: WordBool; safecall;
    function Get_PrinterMechanismError: WordBool; safecall;
    function Get_PrinterOverheatError: WordBool; safecall;
    function PrinterWrite: Integer; safecall;
    function PrintField: Integer; safecall;
    function PrintFooter: Integer; safecall;
    function PrintHeader: Integer; safecall;
    function Get_PrintHeadTemperature: Integer; safecall;
    function PrintPicture: Integer; safecall;
    function Get_PrintPurpose: Integer; safecall;
    procedure Set_PrintPurpose(Value: Integer); safecall;
    function PrintString: Integer; safecall;
    function Get_Protocol: Integer; safecall;
    procedure Set_Protocol(Value: Integer); safecall;
    function Get_PowerSource: Integer; safecall;
    procedure Set_PowerSource(Value: Integer); safecall;
    function Get_PowerState: Integer; safecall;
    procedure Set_PowerState(Value: Integer); safecall;
    function Get_PowerValue: Double; safecall;
    procedure Set_PowerValue(Value: Double); safecall;
    function Get_OperatorName: WideString; safecall;
    procedure Set_OperatorName(const Value: WideString); safecall;
    function Get_OperatorCode: Integer; safecall;
    procedure Set_OperatorCode(Value: Integer); safecall;
    function Get_OperatorPassword: WideString; safecall;
    procedure Set_OperatorPassword(const Value: WideString); safecall;
    function Get_Parameters1CUI: WideString; safecall;
    function Get_ParametersDrv: WideString; safecall;
    function Get_SessionTaxByDepartment: Double; safecall;
    procedure Set_SessionTaxByDepartment(Value: Double); safecall;
    function Get_SessionTaxSummByDepartment: Double; safecall;
    procedure Set_SessionTaxSummByDepartment(Value: Double); safecall;
    function Get_DiscountSummBySession: Double; safecall;
    procedure Set_DiscountSummBySession(Value: Double); safecall;
    function Get_IncreaseSummBySession: Double; safecall;
    procedure Set_IncreaseSummBySession(Value: Double); safecall;
    function Get_PaymentMode: Integer; safecall;
    procedure Set_PaymentMode(Value: Integer); safecall;
    function Get_ProductId: WideString; safecall;
    procedure Set_ProductId(const Value: WideString); safecall;
    property OperationType: Integer read Get_OperationType write Set_OperationType;
    property Operator_: Integer read Get_Operator_;
    property OrderCode: WideString read Get_OrderCode write Set_OrderCode;
    property OrderNumber: Integer read Get_OrderNumber write Set_OrderNumber;
    property OutboundStream: WideString read Get_OutboundStream write Set_OutboundStream;
    property OutOfPaper: WordBool read Get_OutOfPaper;
    property Password: WideString read Get_Password write Set_Password;
    property PasswordEntered: WordBool read Get_PasswordEntered;
    property Percents: Double read Get_Percents write Set_Percents;
    property PictureNumber: Integer read Get_PictureNumber write Set_PictureNumber;
    property PictureState: Integer read Get_PictureState;
    property PixelLineLength: Integer read Get_PixelLineLength;
    property PLUNumber: Integer read Get_PLUNumber write Set_PLUNumber;
    property PointPosition: Integer read Get_PointPosition write Set_PointPosition;
    property PortNumber: Integer read Get_PortNumber write Set_PortNumber;
    property Price: Double read Get_Price write Set_Price;
    property PrintBarcodeText: Integer read Get_PrintBarcodeText write Set_PrintBarcodeText;
    property PrinterConnectionFailed: WordBool read Get_PrinterConnectionFailed;
    property PrinterCutMechanismError: WordBool read Get_PrinterCutMechanismError;
    property PrinterMechanismError: WordBool read Get_PrinterMechanismError;
    property PrinterOverheatError: WordBool read Get_PrinterOverheatError;
    property PrintHeadTemperature: Integer read Get_PrintHeadTemperature;
    property PrintPurpose: Integer read Get_PrintPurpose write Set_PrintPurpose;
    property Protocol: Integer read Get_Protocol write Set_Protocol;
    property PowerSource: Integer read Get_PowerSource write Set_PowerSource;
    property PowerState: Integer read Get_PowerState write Set_PowerState;
    property PowerValue: Double read Get_PowerValue write Set_PowerValue;
    property OperatorName: WideString read Get_OperatorName write Set_OperatorName;
    property OperatorCode: Integer read Get_OperatorCode write Set_OperatorCode;
    property OperatorPassword: WideString read Get_OperatorPassword write Set_OperatorPassword;
    property Parameters1CUI: WideString read Get_Parameters1CUI;
    property ParametersDrv: WideString read Get_ParametersDrv;
    property SessionTaxByDepartment: Double read Get_SessionTaxByDepartment write Set_SessionTaxByDepartment;
    property SessionTaxSummByDepartment: Double read Get_SessionTaxSummByDepartment write Set_SessionTaxSummByDepartment;
    property DiscountSummBySession: Double read Get_DiscountSummBySession write Set_DiscountSummBySession;
    property IncreaseSummBySession: Double read Get_IncreaseSummBySession write Set_IncreaseSummBySession;
    property PaymentMode: Integer read Get_PaymentMode write Set_PaymentMode;
    property ProductId: WideString read Get_ProductId write Set_ProductId;
  end;

// *********************************************************************//
// DispIntf:  IFprnMOPDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3C4CB351-D6B1-41DC-A400-78AC3E2C45A5}
// *********************************************************************//
  IFprnMOPDisp = dispinterface
    ['{3C4CB351-D6B1-41DC-A400-78AC3E2C45A5}']
    function OpenCheck: Integer; dispid 202;
    function OpenDrawer: Integer; dispid 160;
    function OpenSession: Integer; dispid 204;
    property OperationType: Integer dispid 276;
    property Operator_: Integer readonly dispid 51;
    property OrderCode: WideString dispid 146;
    property OrderNumber: Integer dispid 144;
    property OutboundStream: WideString dispid 169;
    property OutOfPaper: WordBool readonly dispid 157;
    function PartialCut: Integer; dispid 139;
    property Password: WideString dispid 43;
    property PasswordEntered: WordBool readonly dispid 61;
    function Payment: Integer; dispid 207;
    property Percents: Double dispid 49;
    function PercentsCharge: Integer; dispid 84;
    function PercentsDiscount: Integer; dispid 83;
    property PictureNumber: Integer dispid 210;
    property PictureState: Integer readonly dispid 211;
    property PixelLineLength: Integer readonly dispid 229;
    property PLUNumber: Integer dispid 31;
    property PointPosition: Integer dispid 60;
    property PortNumber: Integer dispid 32;
    property Price: Double dispid 46;
    function PrintBarcode: Integer; dispid 189;
    property PrintBarcodeText: Integer dispid 238;
    function PrintBitMap: Integer; dispid 194;
    function PrintBitMapFromFile: Integer; dispid 227;
    property PrinterConnectionFailed: WordBool readonly dispid 158;
    property PrinterCutMechanismError: WordBool readonly dispid 287;
    property PrinterMechanismError: WordBool readonly dispid 185;
    property PrinterOverheatError: WordBool readonly dispid 288;
    function PrinterWrite: Integer; dispid 27;
    function PrintField: Integer; dispid 200;
    function PrintFooter: Integer; dispid 103;
    function PrintHeader: Integer; dispid 102;
    property PrintHeadTemperature: Integer readonly dispid 406;
    function PrintPicture: Integer; dispid 213;
    property PrintPurpose: Integer dispid 181;
    function PrintString: Integer; dispid 70;
    property Protocol: Integer dispid 184;
    property PowerSource: Integer dispid 43969;
    property PowerState: Integer dispid 43970;
    property PowerValue: Double dispid 43971;
    property OperatorName: WideString dispid 904;
    property OperatorCode: Integer dispid 905;
    property OperatorPassword: WideString dispid 906;
    property Parameters1CUI: WideString readonly dispid 43972;
    property ParametersDrv: WideString readonly dispid 43973;
    property SessionTaxByDepartment: Double dispid 43974;
    property SessionTaxSummByDepartment: Double dispid 43975;
    property DiscountSummBySession: Double dispid 43976;
    property IncreaseSummBySession: Double dispid 43977;
    property PaymentMode: Integer dispid 316;
    property ProductId: WideString dispid 2598;
    property MachineName: WideString dispid 5;
    property MachineNumber: WideString dispid 19;
    property MaxCaptionLength: Integer readonly dispid 255;
    property Minute: Integer dispid 41;
    property Mode: Integer dispid 35;
    property Model: Integer dispid 285;
    property Model_OLD: Integer readonly dispid 56;
    property ModelCheck: WordBool dispid 134;
    property Month: Integer dispid 38;
    property Name: WideString dispid 45;
    property NeedResult: Integer dispid 308;
    function NewDocument: Integer; dispid 278;
    property LastRecord: Integer dispid 156;
    property LastZone: Integer dispid 154;
    property LeftMargin: Integer dispid 214;
    property License: Integer dispid 29;
    property LineNumber: Integer dispid 183;
    function LoadDevicesSettings: Integer; dispid 283;
    property LockDevices: WordBool dispid 13;
    function LockKeyboard: Integer; dispid 74;
    property LogicalNumber: Integer readonly dispid 52;
    property InboundStream: WideString readonly dispid 170;
    function InitSettings: Integer; dispid 142;
    property INN: WideString dispid 23;
    function InputRoute: Integer; dispid 164;
    property IsDemo: WordBool readonly dispid 274;
    property IsFree: WordBool readonly dispid 310;
    property JrnBrightness: Integer dispid 218;
    property JrnCharLineLength: Integer readonly dispid 257;
    property JrnFont: Integer dispid 217;
    property JrnFontHeight: Integer dispid 220;
    property JrnLineSpacing: Integer dispid 221;
    property JrnPixelLineLength: Integer readonly dispid 258;
    property ItemType: Integer dispid 317;
    function GetCaption: Integer; dispid 99;
    function GetCurrentMode: Integer; dispid 137;
    function GetDeviceMetrics: Integer; dispid 123;
    function GetLastError: Integer; dispid 94;
    function GetLastSummary: Integer; dispid 127;
    function GetLicense: Integer; dispid 108;
    function GetPassword: Integer; dispid 172;
    function GetRange: Integer; dispid 25;
    function GetRecord: Integer; dispid 95;
    function GetRegister: Integer; dispid 231;
    function GetSettings: Integer; dispid 132;
    function GetStatus: Integer; dispid 76;
    function GetStatusPicture: Integer; dispid 235;
    function GetStatusPictureArray: Integer; dispid 225;
    function GetSumm: Integer; dispid 90;
    function GetSupportedMode: Integer; dispid 124;
    function GetUnitVersion: Integer; dispid 233;
    function GetValue: Integer; dispid 97;
    property Height: Integer dispid 197;
    property Hour: Integer dispid 40;
    property HostAddress: WideString dispid 501;
    property HideGUI: WordBool dispid 322;
    property ECRError: Integer readonly dispid 64;
    property ECRErrorDescription: WideString readonly dispid 65;
    function EKLZActivate: Integer; dispid 219;
    function EKLZCloseArchive: Integer; dispid 222;
    property EKLZFlags: Integer readonly dispid 236;
    function EKLZGetStatus: Integer; dispid 223;
    property EKLZKPKNumber: Integer dispid 216;
    property EnableCheckSumm: WordBool dispid 148;
    function EnableDeferredZReports: Integer; dispid 302;
    function EndAdd: Integer; dispid 150;
    property EndDay: Integer dispid 16;
    function EndDocument: Integer; dispid 247;
    function EndFiscDocument: Integer; dispid 262;
    property EndMonth: Integer dispid 17;
    function EndReport: Integer; dispid 113;
    property EndSession: Integer dispid 15;
    property EndYear: Integer dispid 18;
    property ENQTimeout: Integer dispid 187;
    function ExecSystemOperation: Integer; dispid 43978;
    property Factor: Integer dispid 143;
    property Field: Integer dispid 130;
    property FieldType: Integer dispid 131;
    property FileName: WideString dispid 228;
    property FirstRecord: Integer dispid 155;
    property FirstZone: Integer dispid 153;
    property Fiscal: WordBool readonly dispid 54;
    function Fiscalization: Integer; dispid 24;
    property FontBold: WordBool dispid 241;
    property FontDblHeight: WordBool dispid 245;
    property FontDblWidth: WordBool dispid 248;
    property FontItalic: WordBool dispid 242;
    property FontUnderline: WordBool dispid 243;
    property FontNegative: WordBool dispid 244;
    property Frequency: Integer dispid 190;
    function FullCut: Integer; dispid 138;
    property EntryNum: Integer dispid 401;
    property ErrorPosition: Integer readonly dispid 402;
    function FindIPDevices(Timeour: Integer): WideString; dispid 403;
    function EndItem: Integer; dispid 313;
    function EndComplexAttribute: Integer; dispid 320;
    property EndCheckNumber: Integer dispid 321;
    property ENVDMode: WordBool dispid 404;
    function CheckStatusSKNO: Integer; dispid 408;
    property FFDVer: Integer readonly dispid 324;
    property CacheReport: WordBool dispid 110;
    function CancelCheck: Integer; dispid 89;
    property Caption: WideString dispid 36;
    property CaptionPurpose: Integer dispid 68;
    property CaptionTable: Integer dispid 303;
    function CardGetType: Integer; dispid 291;
    function CardRead: Integer; dispid 289;
    function CardWrite: Integer; dispid 290;
    function CashIncome: Integer; dispid 78;
    function CashOutcome: Integer; dispid 79;
    property Change: Double readonly dispid 206;
    property CharLineLength: Integer readonly dispid 209;
    property CheckNumber: Integer dispid 57;
    property CheckPaperPresent: WordBool readonly dispid 174;
    property CheckState: Integer readonly dispid 59;
    property CheckType: Integer dispid 201;
    property ClearJrn: Integer dispid 296;
    function ClearOutput: Integer; dispid 163;
    function ClearPictureArray: Integer; dispid 212;
    function CloseCheck: Integer; dispid 81;
    property ComPortsDescriptions: WideString readonly dispid 426;
    property ControlPaperPresent: WordBool readonly dispid 175;
    property Count: Integer dispid 193;
    property CounterType: Integer dispid 307;
    property CoverOpened: WordBool readonly dispid 176;
    property CurrentDeviceName: WideString dispid 8;
    property CurrentDeviceNumber: Integer dispid 7;
    property CurrentDeviceIndex: Integer dispid 6;
    property Day: Integer dispid 37;
    property DefaultPassword: WideString dispid 295;
    function DeleteDevice: Integer; dispid 22;
    function DeleteLastPicture: Integer; dispid 237;
    function Delivery: Integer; dispid 82;
    function DemoPrint: Integer; dispid 239;
    property Department: Integer dispid 48;
    property Destination: Integer dispid 107;
    property DeviceEnabled: WordBool dispid 62;
    property DeviceCount: Integer readonly dispid 9;
    property DeviceDescription: WideString readonly dispid 11;
    property DeviceSettings: WideString dispid 286;
    property DevicesSettings: WideString dispid 284;
    property DisableParamWindow: WordBool dispid 14;
    property DisablePasswordSettings: WordBool dispid 167;
    property DiscountType: Integer dispid 293;
    property DiscountTypeNumber: Integer dispid 234;
    property DiscountValue: Double dispid 294;
    function DisplayDraw: Integer; dispid 73;
    function DisplayWrite: Integer; dispid 72;
    property DocNumber: Integer dispid 297;
    property DrawerOffTimeout: Integer dispid 179;
    property DrawerOnQuantity: Integer dispid 180;
    property DrawerOnTimeout: Integer dispid 178;
    property DrawerOpened: WordBool readonly dispid 162;
    property Duration: Integer dispid 191;
    property DialogFontName: WideString dispid 304;
    property DialogFontSize: Integer dispid 305;
    property DialogFontStyle: Integer dispid 306;
    function DeviceEnableEx: Integer; dispid 817;
    property DeviceEnableTimeout: Integer dispid 818;
    property CorrectionLevel: Integer dispid 65467;
    function PrintLastCheckCopy: Integer; dispid 65468;
    property BarcodeOptions: Integer dispid 1048320;
    property BarcodeRows: Integer dispid 1048321;
    property BarcodeColumns: Integer dispid 1048322;
    property BarcodeProportions: Integer dispid 1048323;
    property BarcodePixelProportions: Integer dispid 1048324;
    function OpenDirectory: Integer; dispid 1048325;
    property Directory: WideString dispid 1048326;
    property FileSize: Integer dispid 1048328;
    function ReadDirectory: Integer; dispid 1048329;
    property OpenFileParams: Byte dispid 1048336;
    function OpenFile: Integer; dispid 1048330;
    function CloseFile: Integer; dispid 1048331;
    function CloseDirectory: Integer; dispid 1048332;
    property FileOffset: Integer dispid 1048333;
    property FileReadLength: Integer dispid 1048334;
    function ReadFile: Integer; dispid 1048335;
    function DeleteFileFromSD: Integer; dispid 1048337;
    function WriteFileToSD: Integer; dispid 1048338;
    function PowerOff: Integer; dispid 1048339;
    property DrawerInvertState: WordBool dispid 2555;
    property BarcodeOptionsEx: Integer dispid 2556;
    property PortType: Integer dispid 2557;
    property PortFlags: Integer dispid 2558;
    property PortSubcommand: Integer dispid 2559;
    function PortPowerOn: Integer; dispid 2560;
    function PortPowerOff: Integer; dispid 2561;
    function PortSendData: Integer; dispid 2562;
    function PortSyncGetData: Integer; dispid 2563;
    function PortConfig: Integer; dispid 2564;
    function PortStatus: Integer; dispid 2565;
    function PrintBarcodeByNumber: Integer; dispid 2566;
    function ClearBarcodeArray: Integer; dispid 2567;
    function GetBarcodeArrayState: Integer; dispid 2568;
    function ReadBarcode: Integer; dispid 2569;
    function DeleteBarcode: Integer; dispid 2570;
    function EJState: Integer; dispid 2571;
    function WriteAttribute: Integer; dispid 2572;
    property AttrName: WideString dispid 2573;
    property AttrValue: WideString dispid 2574;
    property AttrNumber: Integer dispid 2575;
    function ReadAttribute: Integer; dispid 2576;
    property ShowModels: Integer dispid 2577;
    property OFDLastError: Integer dispid 2578;
    function ReadFNStatus: Integer; dispid 2579;
    property CheckMode: Integer dispid 2580;
    property AttrPrint: Integer dispid 2581;
    function ReadFNParam: Integer; dispid 2582;
    property FNFiscal: WordBool readonly dispid 2583;
    property FiscalSign: WideString readonly dispid 2585;
    property OperatorMessage: WordBool readonly dispid 2592;
    property LastCheckType: Integer readonly dispid 2593;
    property SessionExceedLimit: WordBool readonly dispid 2594;
    property FNFlags: Integer readonly dispid 2595;
    property Is54FZ: WordBool readonly dispid 2596;
    function Stub: Integer; dispid 2597;
    property CommandCode: Integer readonly dispid 314;
    function AboutBox: Integer; dispid 309;
    property AccessPassword: WideString dispid 165;
    property ACKTimeout: Integer dispid 186;
    function AddDevice: Integer; dispid 21;
    function AddField: Integer; dispid 240;
    function AddPictureFromFile: Integer; dispid 226;
    function AdvancedDisplayWrite: Integer; dispid 182;
    property AdvancedMode: Integer readonly dispid 109;
    function AdvancedOpenDrawer: Integer; dispid 177;
    property AdvancedRegistration: WordBool dispid 256;
    property Alignment: Integer dispid 250;
    function Annulate: Integer; dispid 88;
    property ApplicationHandle: Integer dispid 10;
    property AutoSize: WordBool dispid 251;
    property BadParam: Integer readonly dispid 33;
    property BadParamDescription: WideString readonly dispid 34;
    property Barcode: WideString dispid 12;
    property BarcodeControlCode: WordBool dispid 203;
    property BarcodeTextFont: Integer dispid 301;
    property BarcodeType: Integer dispid 215;
    property BatteryLow: WordBool readonly dispid 275;
    property BaudRate: Integer dispid 67;
    function Beep: Integer; dispid 100;
    function BeginAdd: Integer; dispid 149;
    function BeginDocument: Integer; dispid 246;
    function BeginFiscDocument: Integer; dispid 261;
    function BeginReport: Integer; dispid 112;
    property BufferingMode: WordBool dispid 281;
    function Buy: Integer; dispid 272;
    function BuyAnnulate: Integer; dispid 277;
    function BuyReturn: Integer; dispid 273;
    function BeginItem: Integer; dispid 312;
    function BeginComplexAttribute: Integer; dispid 315;
    property BarcodeVer: Integer dispid 323;
  end;

// *********************************************************************//
// Interface: IFprnMQR
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CABF3767-0227-4992-81B9-A3FCC33F59FC}
// *********************************************************************//
  IFprnMQR = interface(IFprnMOP)
    ['{CABF3767-0227-4992-81B9-A3FCC33F59FC}']
    function Get_Quantity: Double; safecall;
    procedure Set_Quantity(Value: Double); safecall;
    function Get_RateType: Integer; safecall;
    procedure Set_RateType(Value: Integer); safecall;
    function Get_RcpCharLineLength: Integer; safecall;
    function Get_RcpPixelLineLength: Integer; safecall;
    function Get_RecFont: Integer; safecall;
    procedure Set_RecFont(Value: Integer); safecall;
    function Get_RecBrightness: Integer; safecall;
    procedure Set_RecBrightness(Value: Integer); safecall;
    function Get_RecFontHeight: Integer; safecall;
    procedure Set_RecFontHeight(Value: Integer); safecall;
    function Get_RecLineSpacing: Integer; safecall;
    procedure Set_RecLineSpacing(Value: Integer); safecall;
    function Get_RecordType: Integer; safecall;
    procedure Set_RecordType(Value: Integer); safecall;
    function Get_RegisterNumber: Integer; safecall;
    procedure Set_RegisterNumber(Value: Integer); safecall;
    function Registration: Integer; safecall;
    function Get_Remainder: Double; safecall;
    function Report: Integer; safecall;
    function Get_ReportType: Integer; safecall;
    procedure Set_ReportType(Value: Integer); safecall;
    function ResetChargeDiscount: Integer; safecall;
    function ResetMode: Integer; safecall;
    function ResetSettings: Integer; safecall;
    function ResetSummary: Integer; safecall;
    function ResetTax: Integer; safecall;
    function Get_ResultCode: Integer; safecall;
    function Get_ResultDescription: WideString; safecall;
    function Return: Integer; safecall;
    function Get_ROMVersion: WideString; safecall;
    function Get_RouteCode: Integer; safecall;
    procedure Set_RouteCode(Value: Integer); safecall;
    function Get_RouteNumber: Integer; safecall;
    procedure Set_RouteNumber(Value: Integer); safecall;
    function Get_Row: Integer; safecall;
    procedure Set_Row(Value: Integer); safecall;
    function RunCommand: Integer; safecall;
    procedure Set_QuantityType(Value: Integer); safecall;
    function Get_QuantityType: Integer; safecall;
    property Quantity: Double read Get_Quantity write Set_Quantity;
    property RateType: Integer read Get_RateType write Set_RateType;
    property RcpCharLineLength: Integer read Get_RcpCharLineLength;
    property RcpPixelLineLength: Integer read Get_RcpPixelLineLength;
    property RecFont: Integer read Get_RecFont write Set_RecFont;
    property RecBrightness: Integer read Get_RecBrightness write Set_RecBrightness;
    property RecFontHeight: Integer read Get_RecFontHeight write Set_RecFontHeight;
    property RecLineSpacing: Integer read Get_RecLineSpacing write Set_RecLineSpacing;
    property RecordType: Integer read Get_RecordType write Set_RecordType;
    property RegisterNumber: Integer read Get_RegisterNumber write Set_RegisterNumber;
    property Remainder: Double read Get_Remainder;
    property ReportType: Integer read Get_ReportType write Set_ReportType;
    property ResultCode: Integer read Get_ResultCode;
    property ResultDescription: WideString read Get_ResultDescription;
    property ROMVersion: WideString read Get_ROMVersion;
    property RouteCode: Integer read Get_RouteCode write Set_RouteCode;
    property RouteNumber: Integer read Get_RouteNumber write Set_RouteNumber;
    property Row: Integer read Get_Row write Set_Row;
    property QuantityType: Integer read Get_QuantityType write Set_QuantityType;
  end;

// *********************************************************************//
// DispIntf:  IFprnMQRDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CABF3767-0227-4992-81B9-A3FCC33F59FC}
// *********************************************************************//
  IFprnMQRDisp = dispinterface
    ['{CABF3767-0227-4992-81B9-A3FCC33F59FC}']
    property Quantity: Double dispid 47;
    property RateType: Integer dispid 152;
    property RcpCharLineLength: Integer readonly dispid 279;
    property RcpPixelLineLength: Integer readonly dispid 280;
    property RecFont: Integer dispid 195;
    property RecBrightness: Integer dispid 196;
    property RecFontHeight: Integer dispid 198;
    property RecLineSpacing: Integer dispid 199;
    property RecordType: Integer dispid 145;
    property RegisterNumber: Integer dispid 230;
    function Registration: Integer; dispid 80;
    property Remainder: Double readonly dispid 205;
    function Report: Integer; dispid 92;
    property ReportType: Integer dispid 63;
    function ResetChargeDiscount: Integer; dispid 147;
    function ResetMode: Integer; dispid 168;
    function ResetSettings: Integer; dispid 136;
    function ResetSummary: Integer; dispid 141;
    function ResetTax: Integer; dispid 300;
    property ResultCode: Integer readonly dispid 1;
    property ResultDescription: WideString readonly dispid 2;
    function Return: Integer; dispid 87;
    property ROMVersion: WideString readonly dispid 55;
    property RouteCode: Integer dispid 135;
    property RouteNumber: Integer dispid 151;
    property Row: Integer dispid 129;
    function RunCommand: Integer; dispid 171;
    property QuantityType: Integer dispid 405;
    function OpenCheck: Integer; dispid 202;
    function OpenDrawer: Integer; dispid 160;
    function OpenSession: Integer; dispid 204;
    property OperationType: Integer dispid 276;
    property Operator_: Integer readonly dispid 51;
    property OrderCode: WideString dispid 146;
    property OrderNumber: Integer dispid 144;
    property OutboundStream: WideString dispid 169;
    property OutOfPaper: WordBool readonly dispid 157;
    function PartialCut: Integer; dispid 139;
    property Password: WideString dispid 43;
    property PasswordEntered: WordBool readonly dispid 61;
    function Payment: Integer; dispid 207;
    property Percents: Double dispid 49;
    function PercentsCharge: Integer; dispid 84;
    function PercentsDiscount: Integer; dispid 83;
    property PictureNumber: Integer dispid 210;
    property PictureState: Integer readonly dispid 211;
    property PixelLineLength: Integer readonly dispid 229;
    property PLUNumber: Integer dispid 31;
    property PointPosition: Integer dispid 60;
    property PortNumber: Integer dispid 32;
    property Price: Double dispid 46;
    function PrintBarcode: Integer; dispid 189;
    property PrintBarcodeText: Integer dispid 238;
    function PrintBitMap: Integer; dispid 194;
    function PrintBitMapFromFile: Integer; dispid 227;
    property PrinterConnectionFailed: WordBool readonly dispid 158;
    property PrinterCutMechanismError: WordBool readonly dispid 287;
    property PrinterMechanismError: WordBool readonly dispid 185;
    property PrinterOverheatError: WordBool readonly dispid 288;
    function PrinterWrite: Integer; dispid 27;
    function PrintField: Integer; dispid 200;
    function PrintFooter: Integer; dispid 103;
    function PrintHeader: Integer; dispid 102;
    property PrintHeadTemperature: Integer readonly dispid 406;
    function PrintPicture: Integer; dispid 213;
    property PrintPurpose: Integer dispid 181;
    function PrintString: Integer; dispid 70;
    property Protocol: Integer dispid 184;
    property PowerSource: Integer dispid 43969;
    property PowerState: Integer dispid 43970;
    property PowerValue: Double dispid 43971;
    property OperatorName: WideString dispid 904;
    property OperatorCode: Integer dispid 905;
    property OperatorPassword: WideString dispid 906;
    property Parameters1CUI: WideString readonly dispid 43972;
    property ParametersDrv: WideString readonly dispid 43973;
    property SessionTaxByDepartment: Double dispid 43974;
    property SessionTaxSummByDepartment: Double dispid 43975;
    property DiscountSummBySession: Double dispid 43976;
    property IncreaseSummBySession: Double dispid 43977;
    property PaymentMode: Integer dispid 316;
    property ProductId: WideString dispid 2598;
    property MachineName: WideString dispid 5;
    property MachineNumber: WideString dispid 19;
    property MaxCaptionLength: Integer readonly dispid 255;
    property Minute: Integer dispid 41;
    property Mode: Integer dispid 35;
    property Model: Integer dispid 285;
    property Model_OLD: Integer readonly dispid 56;
    property ModelCheck: WordBool dispid 134;
    property Month: Integer dispid 38;
    property Name: WideString dispid 45;
    property NeedResult: Integer dispid 308;
    function NewDocument: Integer; dispid 278;
    property LastRecord: Integer dispid 156;
    property LastZone: Integer dispid 154;
    property LeftMargin: Integer dispid 214;
    property License: Integer dispid 29;
    property LineNumber: Integer dispid 183;
    function LoadDevicesSettings: Integer; dispid 283;
    property LockDevices: WordBool dispid 13;
    function LockKeyboard: Integer; dispid 74;
    property LogicalNumber: Integer readonly dispid 52;
    property InboundStream: WideString readonly dispid 170;
    function InitSettings: Integer; dispid 142;
    property INN: WideString dispid 23;
    function InputRoute: Integer; dispid 164;
    property IsDemo: WordBool readonly dispid 274;
    property IsFree: WordBool readonly dispid 310;
    property JrnBrightness: Integer dispid 218;
    property JrnCharLineLength: Integer readonly dispid 257;
    property JrnFont: Integer dispid 217;
    property JrnFontHeight: Integer dispid 220;
    property JrnLineSpacing: Integer dispid 221;
    property JrnPixelLineLength: Integer readonly dispid 258;
    property ItemType: Integer dispid 317;
    function GetCaption: Integer; dispid 99;
    function GetCurrentMode: Integer; dispid 137;
    function GetDeviceMetrics: Integer; dispid 123;
    function GetLastError: Integer; dispid 94;
    function GetLastSummary: Integer; dispid 127;
    function GetLicense: Integer; dispid 108;
    function GetPassword: Integer; dispid 172;
    function GetRange: Integer; dispid 25;
    function GetRecord: Integer; dispid 95;
    function GetRegister: Integer; dispid 231;
    function GetSettings: Integer; dispid 132;
    function GetStatus: Integer; dispid 76;
    function GetStatusPicture: Integer; dispid 235;
    function GetStatusPictureArray: Integer; dispid 225;
    function GetSumm: Integer; dispid 90;
    function GetSupportedMode: Integer; dispid 124;
    function GetUnitVersion: Integer; dispid 233;
    function GetValue: Integer; dispid 97;
    property Height: Integer dispid 197;
    property Hour: Integer dispid 40;
    property HostAddress: WideString dispid 501;
    property HideGUI: WordBool dispid 322;
    property ECRError: Integer readonly dispid 64;
    property ECRErrorDescription: WideString readonly dispid 65;
    function EKLZActivate: Integer; dispid 219;
    function EKLZCloseArchive: Integer; dispid 222;
    property EKLZFlags: Integer readonly dispid 236;
    function EKLZGetStatus: Integer; dispid 223;
    property EKLZKPKNumber: Integer dispid 216;
    property EnableCheckSumm: WordBool dispid 148;
    function EnableDeferredZReports: Integer; dispid 302;
    function EndAdd: Integer; dispid 150;
    property EndDay: Integer dispid 16;
    function EndDocument: Integer; dispid 247;
    function EndFiscDocument: Integer; dispid 262;
    property EndMonth: Integer dispid 17;
    function EndReport: Integer; dispid 113;
    property EndSession: Integer dispid 15;
    property EndYear: Integer dispid 18;
    property ENQTimeout: Integer dispid 187;
    function ExecSystemOperation: Integer; dispid 43978;
    property Factor: Integer dispid 143;
    property Field: Integer dispid 130;
    property FieldType: Integer dispid 131;
    property FileName: WideString dispid 228;
    property FirstRecord: Integer dispid 155;
    property FirstZone: Integer dispid 153;
    property Fiscal: WordBool readonly dispid 54;
    function Fiscalization: Integer; dispid 24;
    property FontBold: WordBool dispid 241;
    property FontDblHeight: WordBool dispid 245;
    property FontDblWidth: WordBool dispid 248;
    property FontItalic: WordBool dispid 242;
    property FontUnderline: WordBool dispid 243;
    property FontNegative: WordBool dispid 244;
    property Frequency: Integer dispid 190;
    function FullCut: Integer; dispid 138;
    property EntryNum: Integer dispid 401;
    property ErrorPosition: Integer readonly dispid 402;
    function FindIPDevices(Timeour: Integer): WideString; dispid 403;
    function EndItem: Integer; dispid 313;
    function EndComplexAttribute: Integer; dispid 320;
    property EndCheckNumber: Integer dispid 321;
    property ENVDMode: WordBool dispid 404;
    function CheckStatusSKNO: Integer; dispid 408;
    property FFDVer: Integer readonly dispid 324;
    property CacheReport: WordBool dispid 110;
    function CancelCheck: Integer; dispid 89;
    property Caption: WideString dispid 36;
    property CaptionPurpose: Integer dispid 68;
    property CaptionTable: Integer dispid 303;
    function CardGetType: Integer; dispid 291;
    function CardRead: Integer; dispid 289;
    function CardWrite: Integer; dispid 290;
    function CashIncome: Integer; dispid 78;
    function CashOutcome: Integer; dispid 79;
    property Change: Double readonly dispid 206;
    property CharLineLength: Integer readonly dispid 209;
    property CheckNumber: Integer dispid 57;
    property CheckPaperPresent: WordBool readonly dispid 174;
    property CheckState: Integer readonly dispid 59;
    property CheckType: Integer dispid 201;
    property ClearJrn: Integer dispid 296;
    function ClearOutput: Integer; dispid 163;
    function ClearPictureArray: Integer; dispid 212;
    function CloseCheck: Integer; dispid 81;
    property ComPortsDescriptions: WideString readonly dispid 426;
    property ControlPaperPresent: WordBool readonly dispid 175;
    property Count: Integer dispid 193;
    property CounterType: Integer dispid 307;
    property CoverOpened: WordBool readonly dispid 176;
    property CurrentDeviceName: WideString dispid 8;
    property CurrentDeviceNumber: Integer dispid 7;
    property CurrentDeviceIndex: Integer dispid 6;
    property Day: Integer dispid 37;
    property DefaultPassword: WideString dispid 295;
    function DeleteDevice: Integer; dispid 22;
    function DeleteLastPicture: Integer; dispid 237;
    function Delivery: Integer; dispid 82;
    function DemoPrint: Integer; dispid 239;
    property Department: Integer dispid 48;
    property Destination: Integer dispid 107;
    property DeviceEnabled: WordBool dispid 62;
    property DeviceCount: Integer readonly dispid 9;
    property DeviceDescription: WideString readonly dispid 11;
    property DeviceSettings: WideString dispid 286;
    property DevicesSettings: WideString dispid 284;
    property DisableParamWindow: WordBool dispid 14;
    property DisablePasswordSettings: WordBool dispid 167;
    property DiscountType: Integer dispid 293;
    property DiscountTypeNumber: Integer dispid 234;
    property DiscountValue: Double dispid 294;
    function DisplayDraw: Integer; dispid 73;
    function DisplayWrite: Integer; dispid 72;
    property DocNumber: Integer dispid 297;
    property DrawerOffTimeout: Integer dispid 179;
    property DrawerOnQuantity: Integer dispid 180;
    property DrawerOnTimeout: Integer dispid 178;
    property DrawerOpened: WordBool readonly dispid 162;
    property Duration: Integer dispid 191;
    property DialogFontName: WideString dispid 304;
    property DialogFontSize: Integer dispid 305;
    property DialogFontStyle: Integer dispid 306;
    function DeviceEnableEx: Integer; dispid 817;
    property DeviceEnableTimeout: Integer dispid 818;
    property CorrectionLevel: Integer dispid 65467;
    function PrintLastCheckCopy: Integer; dispid 65468;
    property BarcodeOptions: Integer dispid 1048320;
    property BarcodeRows: Integer dispid 1048321;
    property BarcodeColumns: Integer dispid 1048322;
    property BarcodeProportions: Integer dispid 1048323;
    property BarcodePixelProportions: Integer dispid 1048324;
    function OpenDirectory: Integer; dispid 1048325;
    property Directory: WideString dispid 1048326;
    property FileSize: Integer dispid 1048328;
    function ReadDirectory: Integer; dispid 1048329;
    property OpenFileParams: Byte dispid 1048336;
    function OpenFile: Integer; dispid 1048330;
    function CloseFile: Integer; dispid 1048331;
    function CloseDirectory: Integer; dispid 1048332;
    property FileOffset: Integer dispid 1048333;
    property FileReadLength: Integer dispid 1048334;
    function ReadFile: Integer; dispid 1048335;
    function DeleteFileFromSD: Integer; dispid 1048337;
    function WriteFileToSD: Integer; dispid 1048338;
    function PowerOff: Integer; dispid 1048339;
    property DrawerInvertState: WordBool dispid 2555;
    property BarcodeOptionsEx: Integer dispid 2556;
    property PortType: Integer dispid 2557;
    property PortFlags: Integer dispid 2558;
    property PortSubcommand: Integer dispid 2559;
    function PortPowerOn: Integer; dispid 2560;
    function PortPowerOff: Integer; dispid 2561;
    function PortSendData: Integer; dispid 2562;
    function PortSyncGetData: Integer; dispid 2563;
    function PortConfig: Integer; dispid 2564;
    function PortStatus: Integer; dispid 2565;
    function PrintBarcodeByNumber: Integer; dispid 2566;
    function ClearBarcodeArray: Integer; dispid 2567;
    function GetBarcodeArrayState: Integer; dispid 2568;
    function ReadBarcode: Integer; dispid 2569;
    function DeleteBarcode: Integer; dispid 2570;
    function EJState: Integer; dispid 2571;
    function WriteAttribute: Integer; dispid 2572;
    property AttrName: WideString dispid 2573;
    property AttrValue: WideString dispid 2574;
    property AttrNumber: Integer dispid 2575;
    function ReadAttribute: Integer; dispid 2576;
    property ShowModels: Integer dispid 2577;
    property OFDLastError: Integer dispid 2578;
    function ReadFNStatus: Integer; dispid 2579;
    property CheckMode: Integer dispid 2580;
    property AttrPrint: Integer dispid 2581;
    function ReadFNParam: Integer; dispid 2582;
    property FNFiscal: WordBool readonly dispid 2583;
    property FiscalSign: WideString readonly dispid 2585;
    property OperatorMessage: WordBool readonly dispid 2592;
    property LastCheckType: Integer readonly dispid 2593;
    property SessionExceedLimit: WordBool readonly dispid 2594;
    property FNFlags: Integer readonly dispid 2595;
    property Is54FZ: WordBool readonly dispid 2596;
    function Stub: Integer; dispid 2597;
    property CommandCode: Integer readonly dispid 314;
    function AboutBox: Integer; dispid 309;
    property AccessPassword: WideString dispid 165;
    property ACKTimeout: Integer dispid 186;
    function AddDevice: Integer; dispid 21;
    function AddField: Integer; dispid 240;
    function AddPictureFromFile: Integer; dispid 226;
    function AdvancedDisplayWrite: Integer; dispid 182;
    property AdvancedMode: Integer readonly dispid 109;
    function AdvancedOpenDrawer: Integer; dispid 177;
    property AdvancedRegistration: WordBool dispid 256;
    property Alignment: Integer dispid 250;
    function Annulate: Integer; dispid 88;
    property ApplicationHandle: Integer dispid 10;
    property AutoSize: WordBool dispid 251;
    property BadParam: Integer readonly dispid 33;
    property BadParamDescription: WideString readonly dispid 34;
    property Barcode: WideString dispid 12;
    property BarcodeControlCode: WordBool dispid 203;
    property BarcodeTextFont: Integer dispid 301;
    property BarcodeType: Integer dispid 215;
    property BatteryLow: WordBool readonly dispid 275;
    property BaudRate: Integer dispid 67;
    function Beep: Integer; dispid 100;
    function BeginAdd: Integer; dispid 149;
    function BeginDocument: Integer; dispid 246;
    function BeginFiscDocument: Integer; dispid 261;
    function BeginReport: Integer; dispid 112;
    property BufferingMode: WordBool dispid 281;
    function Buy: Integer; dispid 272;
    function BuyAnnulate: Integer; dispid 277;
    function BuyReturn: Integer; dispid 273;
    function BeginItem: Integer; dispid 312;
    function BeginComplexAttribute: Integer; dispid 315;
    property BarcodeVer: Integer dispid 323;
  end;

// *********************************************************************//
// Interface: IFprnMST
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9D15E4B0-F810-4C1C-AF32-D565197BB498}
// *********************************************************************//
  IFprnMST = interface(IFprnMQR)
    ['{9D15E4B0-F810-4C1C-AF32-D565197BB498}']
    function SaveDevicesSettings: Integer; safecall;
    function Get_Scale: Double; safecall;
    procedure Set_Scale(Value: Double); safecall;
    function Get_ScaleVB: Double; safecall;
    procedure Set_ScaleVB(Value: Double); safecall;
    function Get_Second: Integer; safecall;
    procedure Set_Second(Value: Integer); safecall;
    function Get_SerialNumber: WideString; safecall;
    procedure Set_SerialNumber(const Value: WideString); safecall;
    function Get_ServerVersion: WideString; safecall;
    function Get_Session: Integer; safecall;
    procedure Set_Session(Value: Integer); safecall;
    function Get_SessionOpened: WordBool; safecall;
    function SetCaption: Integer; safecall;
    function SetDate: Integer; safecall;
    function SetDateTime: Integer; safecall;
    function SetLicense: Integer; safecall;
    function SetMode: Integer; safecall;
    function SetPassword: Integer; safecall;
    function SetPointPosition: Integer; safecall;
    function SetRecord: Integer; safecall;
    function SetSerialNumber: Integer; safecall;
    function SetSettings: Integer; safecall;
    function SetTime: Integer; safecall;
    function SetValue: Integer; safecall;
    function Get_ShowProgress: WordBool; safecall;
    procedure Set_ShowProgress(Value: WordBool); safecall;
    function ShowProperties: Integer; safecall;
    function Get_SlipCharLineLength: Integer; safecall;
    function Get_SlipDocCharLineLength: Integer; safecall;
    procedure Set_SlipDocCharLineLength(Value: Integer); safecall;
    function Get_SlipDocCopyCountHorz: Integer; safecall;
    procedure Set_SlipDocCopyCountHorz(Value: Integer); safecall;
    function Get_SlipDocCopyCountVert: Integer; safecall;
    procedure Set_SlipDocCopyCountVert(Value: Integer); safecall;
    function Get_SlipDocCopyShiftHorz: Integer; safecall;
    procedure Set_SlipDocCopyShiftHorz(Value: Integer); safecall;
    function Get_SlipDocCopyShiftVert: Integer; safecall;
    procedure Set_SlipDocCopyShiftVert(Value: Integer); safecall;
    function Get_SlipDocLeftMargin: Integer; safecall;
    procedure Set_SlipDocLeftMargin(Value: Integer); safecall;
    function Get_SlipDocOrientation: Integer; safecall;
    procedure Set_SlipDocOrientation(Value: Integer); safecall;
    function Get_SlipDocTopMargin: Integer; safecall;
    procedure Set_SlipDocTopMargin(Value: Integer); safecall;
    function Get_SlipLineSpacing: Integer; safecall;
    procedure Set_SlipLineSpacing(Value: Integer); safecall;
    function Get_SlipPixelLineLength: Integer; safecall;
    function Get_SlotNumber: Integer; safecall;
    function Sound: Integer; safecall;
    function Storno: Integer; safecall;
    function StornoPayment: Integer; safecall;
    function Get_StreamFormat: Integer; safecall;
    procedure Set_StreamFormat(Value: Integer); safecall;
    function SubResult: Integer; safecall;
    function Get_Summ: Double; safecall;
    procedure Set_Summ(Value: Double); safecall;
    function SummCharge: Integer; safecall;
    function SummDiscount: Integer; safecall;
    function SummTax: Integer; safecall;
    procedure Set_SystemOperationType(Value: Integer); safecall;
    function Get_SystemOperationType: Integer; safecall;
    procedure Set_SystemOperationData(const Value: WideString); safecall;
    function Get_SystemOperationData: WideString; safecall;
    function Get_SystemOperationResult: WideString; safecall;
    function Get_Table: Integer; safecall;
    procedure Set_Table(Value: Integer); safecall;
    function Get_Tax: Integer; safecall;
    procedure Set_Tax(Value: Integer); safecall;
    function Get_TaxTypeNumber: Integer; safecall;
    procedure Set_TaxTypeNumber(Value: Integer); safecall;
    function TestDevice: Integer; safecall;
    function Get_TestMode: WordBool; safecall;
    procedure Set_TestMode(Value: WordBool); safecall;
    function Get_TextWrap: Integer; safecall;
    procedure Set_TextWrap(Value: Integer); safecall;
    function Get_Timeout: Integer; safecall;
    procedure Set_Timeout(Value: Integer); safecall;
    function Get_TransactionType: Integer; safecall;
    function Get_TypeClose: Integer; safecall;
    procedure Set_TypeClose(Value: Integer); safecall;
    function Get_TaxMode: Integer; safecall;
    procedure Set_TaxMode(Value: Integer); safecall;
    function Get_TaxSumm: Double; safecall;
    procedure Set_TaxSumm(Value: Double); safecall;
    function Get_StoreReceipts: WordBool; safecall;
    procedure Set_StoreReceipts(Value: WordBool); safecall;
    property Scale: Double read Get_Scale write Set_Scale;
    property ScaleVB: Double read Get_ScaleVB write Set_ScaleVB;
    property Second: Integer read Get_Second write Set_Second;
    property SerialNumber: WideString read Get_SerialNumber write Set_SerialNumber;
    property ServerVersion: WideString read Get_ServerVersion;
    property Session: Integer read Get_Session write Set_Session;
    property SessionOpened: WordBool read Get_SessionOpened;
    property ShowProgress: WordBool read Get_ShowProgress write Set_ShowProgress;
    property SlipCharLineLength: Integer read Get_SlipCharLineLength;
    property SlipDocCharLineLength: Integer read Get_SlipDocCharLineLength write Set_SlipDocCharLineLength;
    property SlipDocCopyCountHorz: Integer read Get_SlipDocCopyCountHorz write Set_SlipDocCopyCountHorz;
    property SlipDocCopyCountVert: Integer read Get_SlipDocCopyCountVert write Set_SlipDocCopyCountVert;
    property SlipDocCopyShiftHorz: Integer read Get_SlipDocCopyShiftHorz write Set_SlipDocCopyShiftHorz;
    property SlipDocCopyShiftVert: Integer read Get_SlipDocCopyShiftVert write Set_SlipDocCopyShiftVert;
    property SlipDocLeftMargin: Integer read Get_SlipDocLeftMargin write Set_SlipDocLeftMargin;
    property SlipDocOrientation: Integer read Get_SlipDocOrientation write Set_SlipDocOrientation;
    property SlipDocTopMargin: Integer read Get_SlipDocTopMargin write Set_SlipDocTopMargin;
    property SlipLineSpacing: Integer read Get_SlipLineSpacing write Set_SlipLineSpacing;
    property SlipPixelLineLength: Integer read Get_SlipPixelLineLength;
    property SlotNumber: Integer read Get_SlotNumber;
    property StreamFormat: Integer read Get_StreamFormat write Set_StreamFormat;
    property Summ: Double read Get_Summ write Set_Summ;
    property SystemOperationType: Integer read Get_SystemOperationType write Set_SystemOperationType;
    property SystemOperationData: WideString read Get_SystemOperationData write Set_SystemOperationData;
    property SystemOperationResult: WideString read Get_SystemOperationResult;
    property Table: Integer read Get_Table write Set_Table;
    property Tax: Integer read Get_Tax write Set_Tax;
    property TaxTypeNumber: Integer read Get_TaxTypeNumber write Set_TaxTypeNumber;
    property TestMode: WordBool read Get_TestMode write Set_TestMode;
    property TextWrap: Integer read Get_TextWrap write Set_TextWrap;
    property Timeout: Integer read Get_Timeout write Set_Timeout;
    property TransactionType: Integer read Get_TransactionType;
    property TypeClose: Integer read Get_TypeClose write Set_TypeClose;
    property TaxMode: Integer read Get_TaxMode write Set_TaxMode;
    property TaxSumm: Double read Get_TaxSumm write Set_TaxSumm;
    property StoreReceipts: WordBool read Get_StoreReceipts write Set_StoreReceipts;
  end;

// *********************************************************************//
// DispIntf:  IFprnMSTDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9D15E4B0-F810-4C1C-AF32-D565197BB498}
// *********************************************************************//
  IFprnMSTDisp = dispinterface
    ['{9D15E4B0-F810-4C1C-AF32-D565197BB498}']
    function SaveDevicesSettings: Integer; dispid 282;
    property Scale: Double dispid 252;
    property ScaleVB: Double dispid 292;
    property Second: Integer dispid 42;
    property SerialNumber: WideString dispid 53;
    property ServerVersion: WideString readonly dispid 4;
    property Session: Integer dispid 58;
    property SessionOpened: WordBool readonly dispid 161;
    function SetCaption: Integer; dispid 98;
    function SetDate: Integer; dispid 91;
    function SetDateTime: Integer; dispid 407;
    function SetLicense: Integer; dispid 28;
    function SetMode: Integer; dispid 71;
    function SetPassword: Integer; dispid 173;
    function SetPointPosition: Integer; dispid 140;
    function SetRecord: Integer; dispid 93;
    function SetSerialNumber: Integer; dispid 26;
    function SetSettings: Integer; dispid 133;
    function SetTime: Integer; dispid 77;
    function SetValue: Integer; dispid 96;
    property ShowProgress: WordBool dispid 111;
    function ShowProperties: Integer; dispid 20;
    property SlipCharLineLength: Integer readonly dispid 259;
    property SlipDocCharLineLength: Integer dispid 264;
    property SlipDocCopyCountHorz: Integer dispid 265;
    property SlipDocCopyCountVert: Integer dispid 266;
    property SlipDocCopyShiftHorz: Integer dispid 267;
    property SlipDocCopyShiftVert: Integer dispid 268;
    property SlipDocLeftMargin: Integer dispid 270;
    property SlipDocOrientation: Integer dispid 269;
    property SlipDocTopMargin: Integer dispid 271;
    property SlipLineSpacing: Integer dispid 249;
    property SlipPixelLineLength: Integer readonly dispid 260;
    property SlotNumber: Integer readonly dispid 159;
    function Sound: Integer; dispid 192;
    function Storno: Integer; dispid 86;
    function StornoPayment: Integer; dispid 208;
    property StreamFormat: Integer dispid 188;
    function SubResult: Integer; dispid 85;
    property Summ: Double dispid 44;
    function SummCharge: Integer; dispid 106;
    function SummDiscount: Integer; dispid 105;
    function SummTax: Integer; dispid 298;
    property SystemOperationType: Integer dispid 409;
    property SystemOperationData: WideString dispid 410;
    property SystemOperationResult: WideString readonly dispid 411;
    property Table: Integer dispid 128;
    property Tax: Integer dispid 126;
    property TaxTypeNumber: Integer dispid 299;
    function TestDevice: Integer; dispid 101;
    property TestMode: WordBool dispid 125;
    property TextWrap: Integer dispid 254;
    property Timeout: Integer dispid 30;
    property TransactionType: Integer readonly dispid 114;
    property TypeClose: Integer dispid 50;
    property TaxMode: Integer dispid 318;
    property TaxSumm: Double dispid 319;
    property StoreReceipts: WordBool dispid 1101;
    property Quantity: Double dispid 47;
    property RateType: Integer dispid 152;
    property RcpCharLineLength: Integer readonly dispid 279;
    property RcpPixelLineLength: Integer readonly dispid 280;
    property RecFont: Integer dispid 195;
    property RecBrightness: Integer dispid 196;
    property RecFontHeight: Integer dispid 198;
    property RecLineSpacing: Integer dispid 199;
    property RecordType: Integer dispid 145;
    property RegisterNumber: Integer dispid 230;
    function Registration: Integer; dispid 80;
    property Remainder: Double readonly dispid 205;
    function Report: Integer; dispid 92;
    property ReportType: Integer dispid 63;
    function ResetChargeDiscount: Integer; dispid 147;
    function ResetMode: Integer; dispid 168;
    function ResetSettings: Integer; dispid 136;
    function ResetSummary: Integer; dispid 141;
    function ResetTax: Integer; dispid 300;
    property ResultCode: Integer readonly dispid 1;
    property ResultDescription: WideString readonly dispid 2;
    function Return: Integer; dispid 87;
    property ROMVersion: WideString readonly dispid 55;
    property RouteCode: Integer dispid 135;
    property RouteNumber: Integer dispid 151;
    property Row: Integer dispid 129;
    function RunCommand: Integer; dispid 171;
    property QuantityType: Integer dispid 405;
    function OpenCheck: Integer; dispid 202;
    function OpenDrawer: Integer; dispid 160;
    function OpenSession: Integer; dispid 204;
    property OperationType: Integer dispid 276;
    property Operator_: Integer readonly dispid 51;
    property OrderCode: WideString dispid 146;
    property OrderNumber: Integer dispid 144;
    property OutboundStream: WideString dispid 169;
    property OutOfPaper: WordBool readonly dispid 157;
    function PartialCut: Integer; dispid 139;
    property Password: WideString dispid 43;
    property PasswordEntered: WordBool readonly dispid 61;
    function Payment: Integer; dispid 207;
    property Percents: Double dispid 49;
    function PercentsCharge: Integer; dispid 84;
    function PercentsDiscount: Integer; dispid 83;
    property PictureNumber: Integer dispid 210;
    property PictureState: Integer readonly dispid 211;
    property PixelLineLength: Integer readonly dispid 229;
    property PLUNumber: Integer dispid 31;
    property PointPosition: Integer dispid 60;
    property PortNumber: Integer dispid 32;
    property Price: Double dispid 46;
    function PrintBarcode: Integer; dispid 189;
    property PrintBarcodeText: Integer dispid 238;
    function PrintBitMap: Integer; dispid 194;
    function PrintBitMapFromFile: Integer; dispid 227;
    property PrinterConnectionFailed: WordBool readonly dispid 158;
    property PrinterCutMechanismError: WordBool readonly dispid 287;
    property PrinterMechanismError: WordBool readonly dispid 185;
    property PrinterOverheatError: WordBool readonly dispid 288;
    function PrinterWrite: Integer; dispid 27;
    function PrintField: Integer; dispid 200;
    function PrintFooter: Integer; dispid 103;
    function PrintHeader: Integer; dispid 102;
    property PrintHeadTemperature: Integer readonly dispid 406;
    function PrintPicture: Integer; dispid 213;
    property PrintPurpose: Integer dispid 181;
    function PrintString: Integer; dispid 70;
    property Protocol: Integer dispid 184;
    property PowerSource: Integer dispid 43969;
    property PowerState: Integer dispid 43970;
    property PowerValue: Double dispid 43971;
    property OperatorName: WideString dispid 904;
    property OperatorCode: Integer dispid 905;
    property OperatorPassword: WideString dispid 906;
    property Parameters1CUI: WideString readonly dispid 43972;
    property ParametersDrv: WideString readonly dispid 43973;
    property SessionTaxByDepartment: Double dispid 43974;
    property SessionTaxSummByDepartment: Double dispid 43975;
    property DiscountSummBySession: Double dispid 43976;
    property IncreaseSummBySession: Double dispid 43977;
    property PaymentMode: Integer dispid 316;
    property ProductId: WideString dispid 2598;
    property MachineName: WideString dispid 5;
    property MachineNumber: WideString dispid 19;
    property MaxCaptionLength: Integer readonly dispid 255;
    property Minute: Integer dispid 41;
    property Mode: Integer dispid 35;
    property Model: Integer dispid 285;
    property Model_OLD: Integer readonly dispid 56;
    property ModelCheck: WordBool dispid 134;
    property Month: Integer dispid 38;
    property Name: WideString dispid 45;
    property NeedResult: Integer dispid 308;
    function NewDocument: Integer; dispid 278;
    property LastRecord: Integer dispid 156;
    property LastZone: Integer dispid 154;
    property LeftMargin: Integer dispid 214;
    property License: Integer dispid 29;
    property LineNumber: Integer dispid 183;
    function LoadDevicesSettings: Integer; dispid 283;
    property LockDevices: WordBool dispid 13;
    function LockKeyboard: Integer; dispid 74;
    property LogicalNumber: Integer readonly dispid 52;
    property InboundStream: WideString readonly dispid 170;
    function InitSettings: Integer; dispid 142;
    property INN: WideString dispid 23;
    function InputRoute: Integer; dispid 164;
    property IsDemo: WordBool readonly dispid 274;
    property IsFree: WordBool readonly dispid 310;
    property JrnBrightness: Integer dispid 218;
    property JrnCharLineLength: Integer readonly dispid 257;
    property JrnFont: Integer dispid 217;
    property JrnFontHeight: Integer dispid 220;
    property JrnLineSpacing: Integer dispid 221;
    property JrnPixelLineLength: Integer readonly dispid 258;
    property ItemType: Integer dispid 317;
    function GetCaption: Integer; dispid 99;
    function GetCurrentMode: Integer; dispid 137;
    function GetDeviceMetrics: Integer; dispid 123;
    function GetLastError: Integer; dispid 94;
    function GetLastSummary: Integer; dispid 127;
    function GetLicense: Integer; dispid 108;
    function GetPassword: Integer; dispid 172;
    function GetRange: Integer; dispid 25;
    function GetRecord: Integer; dispid 95;
    function GetRegister: Integer; dispid 231;
    function GetSettings: Integer; dispid 132;
    function GetStatus: Integer; dispid 76;
    function GetStatusPicture: Integer; dispid 235;
    function GetStatusPictureArray: Integer; dispid 225;
    function GetSumm: Integer; dispid 90;
    function GetSupportedMode: Integer; dispid 124;
    function GetUnitVersion: Integer; dispid 233;
    function GetValue: Integer; dispid 97;
    property Height: Integer dispid 197;
    property Hour: Integer dispid 40;
    property HostAddress: WideString dispid 501;
    property HideGUI: WordBool dispid 322;
    property ECRError: Integer readonly dispid 64;
    property ECRErrorDescription: WideString readonly dispid 65;
    function EKLZActivate: Integer; dispid 219;
    function EKLZCloseArchive: Integer; dispid 222;
    property EKLZFlags: Integer readonly dispid 236;
    function EKLZGetStatus: Integer; dispid 223;
    property EKLZKPKNumber: Integer dispid 216;
    property EnableCheckSumm: WordBool dispid 148;
    function EnableDeferredZReports: Integer; dispid 302;
    function EndAdd: Integer; dispid 150;
    property EndDay: Integer dispid 16;
    function EndDocument: Integer; dispid 247;
    function EndFiscDocument: Integer; dispid 262;
    property EndMonth: Integer dispid 17;
    function EndReport: Integer; dispid 113;
    property EndSession: Integer dispid 15;
    property EndYear: Integer dispid 18;
    property ENQTimeout: Integer dispid 187;
    function ExecSystemOperation: Integer; dispid 43978;
    property Factor: Integer dispid 143;
    property Field: Integer dispid 130;
    property FieldType: Integer dispid 131;
    property FileName: WideString dispid 228;
    property FirstRecord: Integer dispid 155;
    property FirstZone: Integer dispid 153;
    property Fiscal: WordBool readonly dispid 54;
    function Fiscalization: Integer; dispid 24;
    property FontBold: WordBool dispid 241;
    property FontDblHeight: WordBool dispid 245;
    property FontDblWidth: WordBool dispid 248;
    property FontItalic: WordBool dispid 242;
    property FontUnderline: WordBool dispid 243;
    property FontNegative: WordBool dispid 244;
    property Frequency: Integer dispid 190;
    function FullCut: Integer; dispid 138;
    property EntryNum: Integer dispid 401;
    property ErrorPosition: Integer readonly dispid 402;
    function FindIPDevices(Timeour: Integer): WideString; dispid 403;
    function EndItem: Integer; dispid 313;
    function EndComplexAttribute: Integer; dispid 320;
    property EndCheckNumber: Integer dispid 321;
    property ENVDMode: WordBool dispid 404;
    function CheckStatusSKNO: Integer; dispid 408;
    property FFDVer: Integer readonly dispid 324;
    property CacheReport: WordBool dispid 110;
    function CancelCheck: Integer; dispid 89;
    property Caption: WideString dispid 36;
    property CaptionPurpose: Integer dispid 68;
    property CaptionTable: Integer dispid 303;
    function CardGetType: Integer; dispid 291;
    function CardRead: Integer; dispid 289;
    function CardWrite: Integer; dispid 290;
    function CashIncome: Integer; dispid 78;
    function CashOutcome: Integer; dispid 79;
    property Change: Double readonly dispid 206;
    property CharLineLength: Integer readonly dispid 209;
    property CheckNumber: Integer dispid 57;
    property CheckPaperPresent: WordBool readonly dispid 174;
    property CheckState: Integer readonly dispid 59;
    property CheckType: Integer dispid 201;
    property ClearJrn: Integer dispid 296;
    function ClearOutput: Integer; dispid 163;
    function ClearPictureArray: Integer; dispid 212;
    function CloseCheck: Integer; dispid 81;
    property ComPortsDescriptions: WideString readonly dispid 426;
    property ControlPaperPresent: WordBool readonly dispid 175;
    property Count: Integer dispid 193;
    property CounterType: Integer dispid 307;
    property CoverOpened: WordBool readonly dispid 176;
    property CurrentDeviceName: WideString dispid 8;
    property CurrentDeviceNumber: Integer dispid 7;
    property CurrentDeviceIndex: Integer dispid 6;
    property Day: Integer dispid 37;
    property DefaultPassword: WideString dispid 295;
    function DeleteDevice: Integer; dispid 22;
    function DeleteLastPicture: Integer; dispid 237;
    function Delivery: Integer; dispid 82;
    function DemoPrint: Integer; dispid 239;
    property Department: Integer dispid 48;
    property Destination: Integer dispid 107;
    property DeviceEnabled: WordBool dispid 62;
    property DeviceCount: Integer readonly dispid 9;
    property DeviceDescription: WideString readonly dispid 11;
    property DeviceSettings: WideString dispid 286;
    property DevicesSettings: WideString dispid 284;
    property DisableParamWindow: WordBool dispid 14;
    property DisablePasswordSettings: WordBool dispid 167;
    property DiscountType: Integer dispid 293;
    property DiscountTypeNumber: Integer dispid 234;
    property DiscountValue: Double dispid 294;
    function DisplayDraw: Integer; dispid 73;
    function DisplayWrite: Integer; dispid 72;
    property DocNumber: Integer dispid 297;
    property DrawerOffTimeout: Integer dispid 179;
    property DrawerOnQuantity: Integer dispid 180;
    property DrawerOnTimeout: Integer dispid 178;
    property DrawerOpened: WordBool readonly dispid 162;
    property Duration: Integer dispid 191;
    property DialogFontName: WideString dispid 304;
    property DialogFontSize: Integer dispid 305;
    property DialogFontStyle: Integer dispid 306;
    function DeviceEnableEx: Integer; dispid 817;
    property DeviceEnableTimeout: Integer dispid 818;
    property CorrectionLevel: Integer dispid 65467;
    function PrintLastCheckCopy: Integer; dispid 65468;
    property BarcodeOptions: Integer dispid 1048320;
    property BarcodeRows: Integer dispid 1048321;
    property BarcodeColumns: Integer dispid 1048322;
    property BarcodeProportions: Integer dispid 1048323;
    property BarcodePixelProportions: Integer dispid 1048324;
    function OpenDirectory: Integer; dispid 1048325;
    property Directory: WideString dispid 1048326;
    property FileSize: Integer dispid 1048328;
    function ReadDirectory: Integer; dispid 1048329;
    property OpenFileParams: Byte dispid 1048336;
    function OpenFile: Integer; dispid 1048330;
    function CloseFile: Integer; dispid 1048331;
    function CloseDirectory: Integer; dispid 1048332;
    property FileOffset: Integer dispid 1048333;
    property FileReadLength: Integer dispid 1048334;
    function ReadFile: Integer; dispid 1048335;
    function DeleteFileFromSD: Integer; dispid 1048337;
    function WriteFileToSD: Integer; dispid 1048338;
    function PowerOff: Integer; dispid 1048339;
    property DrawerInvertState: WordBool dispid 2555;
    property BarcodeOptionsEx: Integer dispid 2556;
    property PortType: Integer dispid 2557;
    property PortFlags: Integer dispid 2558;
    property PortSubcommand: Integer dispid 2559;
    function PortPowerOn: Integer; dispid 2560;
    function PortPowerOff: Integer; dispid 2561;
    function PortSendData: Integer; dispid 2562;
    function PortSyncGetData: Integer; dispid 2563;
    function PortConfig: Integer; dispid 2564;
    function PortStatus: Integer; dispid 2565;
    function PrintBarcodeByNumber: Integer; dispid 2566;
    function ClearBarcodeArray: Integer; dispid 2567;
    function GetBarcodeArrayState: Integer; dispid 2568;
    function ReadBarcode: Integer; dispid 2569;
    function DeleteBarcode: Integer; dispid 2570;
    function EJState: Integer; dispid 2571;
    function WriteAttribute: Integer; dispid 2572;
    property AttrName: WideString dispid 2573;
    property AttrValue: WideString dispid 2574;
    property AttrNumber: Integer dispid 2575;
    function ReadAttribute: Integer; dispid 2576;
    property ShowModels: Integer dispid 2577;
    property OFDLastError: Integer dispid 2578;
    function ReadFNStatus: Integer; dispid 2579;
    property CheckMode: Integer dispid 2580;
    property AttrPrint: Integer dispid 2581;
    function ReadFNParam: Integer; dispid 2582;
    property FNFiscal: WordBool readonly dispid 2583;
    property FiscalSign: WideString readonly dispid 2585;
    property OperatorMessage: WordBool readonly dispid 2592;
    property LastCheckType: Integer readonly dispid 2593;
    property SessionExceedLimit: WordBool readonly dispid 2594;
    property FNFlags: Integer readonly dispid 2595;
    property Is54FZ: WordBool readonly dispid 2596;
    function Stub: Integer; dispid 2597;
    property CommandCode: Integer readonly dispid 314;
    function AboutBox: Integer; dispid 309;
    property AccessPassword: WideString dispid 165;
    property ACKTimeout: Integer dispid 186;
    function AddDevice: Integer; dispid 21;
    function AddField: Integer; dispid 240;
    function AddPictureFromFile: Integer; dispid 226;
    function AdvancedDisplayWrite: Integer; dispid 182;
    property AdvancedMode: Integer readonly dispid 109;
    function AdvancedOpenDrawer: Integer; dispid 177;
    property AdvancedRegistration: WordBool dispid 256;
    property Alignment: Integer dispid 250;
    function Annulate: Integer; dispid 88;
    property ApplicationHandle: Integer dispid 10;
    property AutoSize: WordBool dispid 251;
    property BadParam: Integer readonly dispid 33;
    property BadParamDescription: WideString readonly dispid 34;
    property Barcode: WideString dispid 12;
    property BarcodeControlCode: WordBool dispid 203;
    property BarcodeTextFont: Integer dispid 301;
    property BarcodeType: Integer dispid 215;
    property BatteryLow: WordBool readonly dispid 275;
    property BaudRate: Integer dispid 67;
    function Beep: Integer; dispid 100;
    function BeginAdd: Integer; dispid 149;
    function BeginDocument: Integer; dispid 246;
    function BeginFiscDocument: Integer; dispid 261;
    function BeginReport: Integer; dispid 112;
    property BufferingMode: WordBool dispid 281;
    function Buy: Integer; dispid 272;
    function BuyAnnulate: Integer; dispid 277;
    function BuyReturn: Integer; dispid 273;
    function BeginItem: Integer; dispid 312;
    function BeginComplexAttribute: Integer; dispid 315;
    property BarcodeVer: Integer dispid 323;
  end;

// *********************************************************************//
// Interface: IFprnMUV
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4F29BE13-9903-45F6-A842-06CC29D61012}
// *********************************************************************//
  IFprnMUV = interface(IFprnMST)
    ['{4F29BE13-9903-45F6-A842-06CC29D61012}']
    function Get_UBuild: Integer; safecall;
    function Get_UCodePage: Integer; safecall;
    function Get_UDescription: WideString; safecall;
    function Get_UMajorVersion: Integer; safecall;
    function Get_UMinorVersion: Integer; safecall;
    function Get_UMode: Integer; safecall;
    procedure Set_UMode(Value: Integer); safecall;
    function Get_UModel: Integer; safecall;
    function Get_UnitType: Integer; safecall;
    procedure Set_UnitType(Value: Integer); safecall;
    function UnlockKeyboard: Integer; safecall;
    function Get_UProtocolVersion: Integer; safecall;
    function Get_UseAccessPassword: WordBool; safecall;
    procedure Set_UseAccessPassword(Value: WordBool); safecall;
    function Get_UType: Integer; safecall;
    function Get_Value: Double; safecall;
    procedure Set_Value(Value: Double); safecall;
    function Get_ValuePurpose: Integer; safecall;
    procedure Set_ValuePurpose(Value: Integer); safecall;
    function Get_Version: WideString; safecall;
    property UBuild: Integer read Get_UBuild;
    property UCodePage: Integer read Get_UCodePage;
    property UDescription: WideString read Get_UDescription;
    property UMajorVersion: Integer read Get_UMajorVersion;
    property UMinorVersion: Integer read Get_UMinorVersion;
    property UMode: Integer read Get_UMode write Set_UMode;
    property UModel: Integer read Get_UModel;
    property UnitType: Integer read Get_UnitType write Set_UnitType;
    property UProtocolVersion: Integer read Get_UProtocolVersion;
    property UseAccessPassword: WordBool read Get_UseAccessPassword write Set_UseAccessPassword;
    property UType: Integer read Get_UType;
    property Value: Double read Get_Value write Set_Value;
    property ValuePurpose: Integer read Get_ValuePurpose write Set_ValuePurpose;
    property Version: WideString read Get_Version;
  end;

// *********************************************************************//
// DispIntf:  IFprnMUVDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4F29BE13-9903-45F6-A842-06CC29D61012}
// *********************************************************************//
  IFprnMUVDisp = dispinterface
    ['{4F29BE13-9903-45F6-A842-06CC29D61012}']
    property UBuild: Integer readonly dispid 116;
    property UCodePage: Integer readonly dispid 121;
    property UDescription: WideString readonly dispid 119;
    property UMajorVersion: Integer readonly dispid 104;
    property UMinorVersion: Integer readonly dispid 115;
    property UMode: Integer dispid 122;
    property UModel: Integer readonly dispid 118;
    property UnitType: Integer dispid 232;
    function UnlockKeyboard: Integer; dispid 75;
    property UProtocolVersion: Integer readonly dispid 120;
    property UseAccessPassword: WordBool dispid 166;
    property UType: Integer readonly dispid 117;
    property Value: Double dispid 66;
    property ValuePurpose: Integer dispid 69;
    property Version: WideString readonly dispid 3;
    function SaveDevicesSettings: Integer; dispid 282;
    property Scale: Double dispid 252;
    property ScaleVB: Double dispid 292;
    property Second: Integer dispid 42;
    property SerialNumber: WideString dispid 53;
    property ServerVersion: WideString readonly dispid 4;
    property Session: Integer dispid 58;
    property SessionOpened: WordBool readonly dispid 161;
    function SetCaption: Integer; dispid 98;
    function SetDate: Integer; dispid 91;
    function SetDateTime: Integer; dispid 407;
    function SetLicense: Integer; dispid 28;
    function SetMode: Integer; dispid 71;
    function SetPassword: Integer; dispid 173;
    function SetPointPosition: Integer; dispid 140;
    function SetRecord: Integer; dispid 93;
    function SetSerialNumber: Integer; dispid 26;
    function SetSettings: Integer; dispid 133;
    function SetTime: Integer; dispid 77;
    function SetValue: Integer; dispid 96;
    property ShowProgress: WordBool dispid 111;
    function ShowProperties: Integer; dispid 20;
    property SlipCharLineLength: Integer readonly dispid 259;
    property SlipDocCharLineLength: Integer dispid 264;
    property SlipDocCopyCountHorz: Integer dispid 265;
    property SlipDocCopyCountVert: Integer dispid 266;
    property SlipDocCopyShiftHorz: Integer dispid 267;
    property SlipDocCopyShiftVert: Integer dispid 268;
    property SlipDocLeftMargin: Integer dispid 270;
    property SlipDocOrientation: Integer dispid 269;
    property SlipDocTopMargin: Integer dispid 271;
    property SlipLineSpacing: Integer dispid 249;
    property SlipPixelLineLength: Integer readonly dispid 260;
    property SlotNumber: Integer readonly dispid 159;
    function Sound: Integer; dispid 192;
    function Storno: Integer; dispid 86;
    function StornoPayment: Integer; dispid 208;
    property StreamFormat: Integer dispid 188;
    function SubResult: Integer; dispid 85;
    property Summ: Double dispid 44;
    function SummCharge: Integer; dispid 106;
    function SummDiscount: Integer; dispid 105;
    function SummTax: Integer; dispid 298;
    property SystemOperationType: Integer dispid 409;
    property SystemOperationData: WideString dispid 410;
    property SystemOperationResult: WideString readonly dispid 411;
    property Table: Integer dispid 128;
    property Tax: Integer dispid 126;
    property TaxTypeNumber: Integer dispid 299;
    function TestDevice: Integer; dispid 101;
    property TestMode: WordBool dispid 125;
    property TextWrap: Integer dispid 254;
    property Timeout: Integer dispid 30;
    property TransactionType: Integer readonly dispid 114;
    property TypeClose: Integer dispid 50;
    property TaxMode: Integer dispid 318;
    property TaxSumm: Double dispid 319;
    property StoreReceipts: WordBool dispid 1101;
    property Quantity: Double dispid 47;
    property RateType: Integer dispid 152;
    property RcpCharLineLength: Integer readonly dispid 279;
    property RcpPixelLineLength: Integer readonly dispid 280;
    property RecFont: Integer dispid 195;
    property RecBrightness: Integer dispid 196;
    property RecFontHeight: Integer dispid 198;
    property RecLineSpacing: Integer dispid 199;
    property RecordType: Integer dispid 145;
    property RegisterNumber: Integer dispid 230;
    function Registration: Integer; dispid 80;
    property Remainder: Double readonly dispid 205;
    function Report: Integer; dispid 92;
    property ReportType: Integer dispid 63;
    function ResetChargeDiscount: Integer; dispid 147;
    function ResetMode: Integer; dispid 168;
    function ResetSettings: Integer; dispid 136;
    function ResetSummary: Integer; dispid 141;
    function ResetTax: Integer; dispid 300;
    property ResultCode: Integer readonly dispid 1;
    property ResultDescription: WideString readonly dispid 2;
    function Return: Integer; dispid 87;
    property ROMVersion: WideString readonly dispid 55;
    property RouteCode: Integer dispid 135;
    property RouteNumber: Integer dispid 151;
    property Row: Integer dispid 129;
    function RunCommand: Integer; dispid 171;
    property QuantityType: Integer dispid 405;
    function OpenCheck: Integer; dispid 202;
    function OpenDrawer: Integer; dispid 160;
    function OpenSession: Integer; dispid 204;
    property OperationType: Integer dispid 276;
    property Operator_: Integer readonly dispid 51;
    property OrderCode: WideString dispid 146;
    property OrderNumber: Integer dispid 144;
    property OutboundStream: WideString dispid 169;
    property OutOfPaper: WordBool readonly dispid 157;
    function PartialCut: Integer; dispid 139;
    property Password: WideString dispid 43;
    property PasswordEntered: WordBool readonly dispid 61;
    function Payment: Integer; dispid 207;
    property Percents: Double dispid 49;
    function PercentsCharge: Integer; dispid 84;
    function PercentsDiscount: Integer; dispid 83;
    property PictureNumber: Integer dispid 210;
    property PictureState: Integer readonly dispid 211;
    property PixelLineLength: Integer readonly dispid 229;
    property PLUNumber: Integer dispid 31;
    property PointPosition: Integer dispid 60;
    property PortNumber: Integer dispid 32;
    property Price: Double dispid 46;
    function PrintBarcode: Integer; dispid 189;
    property PrintBarcodeText: Integer dispid 238;
    function PrintBitMap: Integer; dispid 194;
    function PrintBitMapFromFile: Integer; dispid 227;
    property PrinterConnectionFailed: WordBool readonly dispid 158;
    property PrinterCutMechanismError: WordBool readonly dispid 287;
    property PrinterMechanismError: WordBool readonly dispid 185;
    property PrinterOverheatError: WordBool readonly dispid 288;
    function PrinterWrite: Integer; dispid 27;
    function PrintField: Integer; dispid 200;
    function PrintFooter: Integer; dispid 103;
    function PrintHeader: Integer; dispid 102;
    property PrintHeadTemperature: Integer readonly dispid 406;
    function PrintPicture: Integer; dispid 213;
    property PrintPurpose: Integer dispid 181;
    function PrintString: Integer; dispid 70;
    property Protocol: Integer dispid 184;
    property PowerSource: Integer dispid 43969;
    property PowerState: Integer dispid 43970;
    property PowerValue: Double dispid 43971;
    property OperatorName: WideString dispid 904;
    property OperatorCode: Integer dispid 905;
    property OperatorPassword: WideString dispid 906;
    property Parameters1CUI: WideString readonly dispid 43972;
    property ParametersDrv: WideString readonly dispid 43973;
    property SessionTaxByDepartment: Double dispid 43974;
    property SessionTaxSummByDepartment: Double dispid 43975;
    property DiscountSummBySession: Double dispid 43976;
    property IncreaseSummBySession: Double dispid 43977;
    property PaymentMode: Integer dispid 316;
    property ProductId: WideString dispid 2598;
    property MachineName: WideString dispid 5;
    property MachineNumber: WideString dispid 19;
    property MaxCaptionLength: Integer readonly dispid 255;
    property Minute: Integer dispid 41;
    property Mode: Integer dispid 35;
    property Model: Integer dispid 285;
    property Model_OLD: Integer readonly dispid 56;
    property ModelCheck: WordBool dispid 134;
    property Month: Integer dispid 38;
    property Name: WideString dispid 45;
    property NeedResult: Integer dispid 308;
    function NewDocument: Integer; dispid 278;
    property LastRecord: Integer dispid 156;
    property LastZone: Integer dispid 154;
    property LeftMargin: Integer dispid 214;
    property License: Integer dispid 29;
    property LineNumber: Integer dispid 183;
    function LoadDevicesSettings: Integer; dispid 283;
    property LockDevices: WordBool dispid 13;
    function LockKeyboard: Integer; dispid 74;
    property LogicalNumber: Integer readonly dispid 52;
    property InboundStream: WideString readonly dispid 170;
    function InitSettings: Integer; dispid 142;
    property INN: WideString dispid 23;
    function InputRoute: Integer; dispid 164;
    property IsDemo: WordBool readonly dispid 274;
    property IsFree: WordBool readonly dispid 310;
    property JrnBrightness: Integer dispid 218;
    property JrnCharLineLength: Integer readonly dispid 257;
    property JrnFont: Integer dispid 217;
    property JrnFontHeight: Integer dispid 220;
    property JrnLineSpacing: Integer dispid 221;
    property JrnPixelLineLength: Integer readonly dispid 258;
    property ItemType: Integer dispid 317;
    function GetCaption: Integer; dispid 99;
    function GetCurrentMode: Integer; dispid 137;
    function GetDeviceMetrics: Integer; dispid 123;
    function GetLastError: Integer; dispid 94;
    function GetLastSummary: Integer; dispid 127;
    function GetLicense: Integer; dispid 108;
    function GetPassword: Integer; dispid 172;
    function GetRange: Integer; dispid 25;
    function GetRecord: Integer; dispid 95;
    function GetRegister: Integer; dispid 231;
    function GetSettings: Integer; dispid 132;
    function GetStatus: Integer; dispid 76;
    function GetStatusPicture: Integer; dispid 235;
    function GetStatusPictureArray: Integer; dispid 225;
    function GetSumm: Integer; dispid 90;
    function GetSupportedMode: Integer; dispid 124;
    function GetUnitVersion: Integer; dispid 233;
    function GetValue: Integer; dispid 97;
    property Height: Integer dispid 197;
    property Hour: Integer dispid 40;
    property HostAddress: WideString dispid 501;
    property HideGUI: WordBool dispid 322;
    property ECRError: Integer readonly dispid 64;
    property ECRErrorDescription: WideString readonly dispid 65;
    function EKLZActivate: Integer; dispid 219;
    function EKLZCloseArchive: Integer; dispid 222;
    property EKLZFlags: Integer readonly dispid 236;
    function EKLZGetStatus: Integer; dispid 223;
    property EKLZKPKNumber: Integer dispid 216;
    property EnableCheckSumm: WordBool dispid 148;
    function EnableDeferredZReports: Integer; dispid 302;
    function EndAdd: Integer; dispid 150;
    property EndDay: Integer dispid 16;
    function EndDocument: Integer; dispid 247;
    function EndFiscDocument: Integer; dispid 262;
    property EndMonth: Integer dispid 17;
    function EndReport: Integer; dispid 113;
    property EndSession: Integer dispid 15;
    property EndYear: Integer dispid 18;
    property ENQTimeout: Integer dispid 187;
    function ExecSystemOperation: Integer; dispid 43978;
    property Factor: Integer dispid 143;
    property Field: Integer dispid 130;
    property FieldType: Integer dispid 131;
    property FileName: WideString dispid 228;
    property FirstRecord: Integer dispid 155;
    property FirstZone: Integer dispid 153;
    property Fiscal: WordBool readonly dispid 54;
    function Fiscalization: Integer; dispid 24;
    property FontBold: WordBool dispid 241;
    property FontDblHeight: WordBool dispid 245;
    property FontDblWidth: WordBool dispid 248;
    property FontItalic: WordBool dispid 242;
    property FontUnderline: WordBool dispid 243;
    property FontNegative: WordBool dispid 244;
    property Frequency: Integer dispid 190;
    function FullCut: Integer; dispid 138;
    property EntryNum: Integer dispid 401;
    property ErrorPosition: Integer readonly dispid 402;
    function FindIPDevices(Timeour: Integer): WideString; dispid 403;
    function EndItem: Integer; dispid 313;
    function EndComplexAttribute: Integer; dispid 320;
    property EndCheckNumber: Integer dispid 321;
    property ENVDMode: WordBool dispid 404;
    function CheckStatusSKNO: Integer; dispid 408;
    property FFDVer: Integer readonly dispid 324;
    property CacheReport: WordBool dispid 110;
    function CancelCheck: Integer; dispid 89;
    property Caption: WideString dispid 36;
    property CaptionPurpose: Integer dispid 68;
    property CaptionTable: Integer dispid 303;
    function CardGetType: Integer; dispid 291;
    function CardRead: Integer; dispid 289;
    function CardWrite: Integer; dispid 290;
    function CashIncome: Integer; dispid 78;
    function CashOutcome: Integer; dispid 79;
    property Change: Double readonly dispid 206;
    property CharLineLength: Integer readonly dispid 209;
    property CheckNumber: Integer dispid 57;
    property CheckPaperPresent: WordBool readonly dispid 174;
    property CheckState: Integer readonly dispid 59;
    property CheckType: Integer dispid 201;
    property ClearJrn: Integer dispid 296;
    function ClearOutput: Integer; dispid 163;
    function ClearPictureArray: Integer; dispid 212;
    function CloseCheck: Integer; dispid 81;
    property ComPortsDescriptions: WideString readonly dispid 426;
    property ControlPaperPresent: WordBool readonly dispid 175;
    property Count: Integer dispid 193;
    property CounterType: Integer dispid 307;
    property CoverOpened: WordBool readonly dispid 176;
    property CurrentDeviceName: WideString dispid 8;
    property CurrentDeviceNumber: Integer dispid 7;
    property CurrentDeviceIndex: Integer dispid 6;
    property Day: Integer dispid 37;
    property DefaultPassword: WideString dispid 295;
    function DeleteDevice: Integer; dispid 22;
    function DeleteLastPicture: Integer; dispid 237;
    function Delivery: Integer; dispid 82;
    function DemoPrint: Integer; dispid 239;
    property Department: Integer dispid 48;
    property Destination: Integer dispid 107;
    property DeviceEnabled: WordBool dispid 62;
    property DeviceCount: Integer readonly dispid 9;
    property DeviceDescription: WideString readonly dispid 11;
    property DeviceSettings: WideString dispid 286;
    property DevicesSettings: WideString dispid 284;
    property DisableParamWindow: WordBool dispid 14;
    property DisablePasswordSettings: WordBool dispid 167;
    property DiscountType: Integer dispid 293;
    property DiscountTypeNumber: Integer dispid 234;
    property DiscountValue: Double dispid 294;
    function DisplayDraw: Integer; dispid 73;
    function DisplayWrite: Integer; dispid 72;
    property DocNumber: Integer dispid 297;
    property DrawerOffTimeout: Integer dispid 179;
    property DrawerOnQuantity: Integer dispid 180;
    property DrawerOnTimeout: Integer dispid 178;
    property DrawerOpened: WordBool readonly dispid 162;
    property Duration: Integer dispid 191;
    property DialogFontName: WideString dispid 304;
    property DialogFontSize: Integer dispid 305;
    property DialogFontStyle: Integer dispid 306;
    function DeviceEnableEx: Integer; dispid 817;
    property DeviceEnableTimeout: Integer dispid 818;
    property CorrectionLevel: Integer dispid 65467;
    function PrintLastCheckCopy: Integer; dispid 65468;
    property BarcodeOptions: Integer dispid 1048320;
    property BarcodeRows: Integer dispid 1048321;
    property BarcodeColumns: Integer dispid 1048322;
    property BarcodeProportions: Integer dispid 1048323;
    property BarcodePixelProportions: Integer dispid 1048324;
    function OpenDirectory: Integer; dispid 1048325;
    property Directory: WideString dispid 1048326;
    property FileSize: Integer dispid 1048328;
    function ReadDirectory: Integer; dispid 1048329;
    property OpenFileParams: Byte dispid 1048336;
    function OpenFile: Integer; dispid 1048330;
    function CloseFile: Integer; dispid 1048331;
    function CloseDirectory: Integer; dispid 1048332;
    property FileOffset: Integer dispid 1048333;
    property FileReadLength: Integer dispid 1048334;
    function ReadFile: Integer; dispid 1048335;
    function DeleteFileFromSD: Integer; dispid 1048337;
    function WriteFileToSD: Integer; dispid 1048338;
    function PowerOff: Integer; dispid 1048339;
    property DrawerInvertState: WordBool dispid 2555;
    property BarcodeOptionsEx: Integer dispid 2556;
    property PortType: Integer dispid 2557;
    property PortFlags: Integer dispid 2558;
    property PortSubcommand: Integer dispid 2559;
    function PortPowerOn: Integer; dispid 2560;
    function PortPowerOff: Integer; dispid 2561;
    function PortSendData: Integer; dispid 2562;
    function PortSyncGetData: Integer; dispid 2563;
    function PortConfig: Integer; dispid 2564;
    function PortStatus: Integer; dispid 2565;
    function PrintBarcodeByNumber: Integer; dispid 2566;
    function ClearBarcodeArray: Integer; dispid 2567;
    function GetBarcodeArrayState: Integer; dispid 2568;
    function ReadBarcode: Integer; dispid 2569;
    function DeleteBarcode: Integer; dispid 2570;
    function EJState: Integer; dispid 2571;
    function WriteAttribute: Integer; dispid 2572;
    property AttrName: WideString dispid 2573;
    property AttrValue: WideString dispid 2574;
    property AttrNumber: Integer dispid 2575;
    function ReadAttribute: Integer; dispid 2576;
    property ShowModels: Integer dispid 2577;
    property OFDLastError: Integer dispid 2578;
    function ReadFNStatus: Integer; dispid 2579;
    property CheckMode: Integer dispid 2580;
    property AttrPrint: Integer dispid 2581;
    function ReadFNParam: Integer; dispid 2582;
    property FNFiscal: WordBool readonly dispid 2583;
    property FiscalSign: WideString readonly dispid 2585;
    property OperatorMessage: WordBool readonly dispid 2592;
    property LastCheckType: Integer readonly dispid 2593;
    property SessionExceedLimit: WordBool readonly dispid 2594;
    property FNFlags: Integer readonly dispid 2595;
    property Is54FZ: WordBool readonly dispid 2596;
    function Stub: Integer; dispid 2597;
    property CommandCode: Integer readonly dispid 314;
    function AboutBox: Integer; dispid 309;
    property AccessPassword: WideString dispid 165;
    property ACKTimeout: Integer dispid 186;
    function AddDevice: Integer; dispid 21;
    function AddField: Integer; dispid 240;
    function AddPictureFromFile: Integer; dispid 226;
    function AdvancedDisplayWrite: Integer; dispid 182;
    property AdvancedMode: Integer readonly dispid 109;
    function AdvancedOpenDrawer: Integer; dispid 177;
    property AdvancedRegistration: WordBool dispid 256;
    property Alignment: Integer dispid 250;
    function Annulate: Integer; dispid 88;
    property ApplicationHandle: Integer dispid 10;
    property AutoSize: WordBool dispid 251;
    property BadParam: Integer readonly dispid 33;
    property BadParamDescription: WideString readonly dispid 34;
    property Barcode: WideString dispid 12;
    property BarcodeControlCode: WordBool dispid 203;
    property BarcodeTextFont: Integer dispid 301;
    property BarcodeType: Integer dispid 215;
    property BatteryLow: WordBool readonly dispid 275;
    property BaudRate: Integer dispid 67;
    function Beep: Integer; dispid 100;
    function BeginAdd: Integer; dispid 149;
    function BeginDocument: Integer; dispid 246;
    function BeginFiscDocument: Integer; dispid 261;
    function BeginReport: Integer; dispid 112;
    property BufferingMode: WordBool dispid 281;
    function Buy: Integer; dispid 272;
    function BuyAnnulate: Integer; dispid 277;
    function BuyReturn: Integer; dispid 273;
    function BeginItem: Integer; dispid 312;
    function BeginComplexAttribute: Integer; dispid 315;
    property BarcodeVer: Integer dispid 323;
  end;

// *********************************************************************//
// Interface: IFprnMWX
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {725917FF-F687-4CB3-9ECC-EAA056623700}
// *********************************************************************//
  IFprnMWX = interface(IFprnMUV)
    ['{725917FF-F687-4CB3-9ECC-EAA056623700}']
    function Get_Width: Integer; safecall;
    function Get_WorkShop: Integer; safecall;
    procedure Set_WorkShop(Value: Integer); safecall;
    function Get_WriteLogFile: Integer; safecall;
    procedure Set_WriteLogFile(Value: Integer); safecall;
    function WriteSMLog(const str: WideString): Integer; safecall;
    property Width: Integer read Get_Width;
    property WorkShop: Integer read Get_WorkShop write Set_WorkShop;
    property WriteLogFile: Integer read Get_WriteLogFile write Set_WriteLogFile;
  end;

// *********************************************************************//
// DispIntf:  IFprnMWXDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {725917FF-F687-4CB3-9ECC-EAA056623700}
// *********************************************************************//
  IFprnMWXDisp = dispinterface
    ['{725917FF-F687-4CB3-9ECC-EAA056623700}']
    property Width: Integer readonly dispid 224;
    property WorkShop: Integer dispid 253;
    property WriteLogFile: Integer dispid 263;
    function WriteSMLog(const str: WideString): Integer; dispid 311;
    property UBuild: Integer readonly dispid 116;
    property UCodePage: Integer readonly dispid 121;
    property UDescription: WideString readonly dispid 119;
    property UMajorVersion: Integer readonly dispid 104;
    property UMinorVersion: Integer readonly dispid 115;
    property UMode: Integer dispid 122;
    property UModel: Integer readonly dispid 118;
    property UnitType: Integer dispid 232;
    function UnlockKeyboard: Integer; dispid 75;
    property UProtocolVersion: Integer readonly dispid 120;
    property UseAccessPassword: WordBool dispid 166;
    property UType: Integer readonly dispid 117;
    property Value: Double dispid 66;
    property ValuePurpose: Integer dispid 69;
    property Version: WideString readonly dispid 3;
    function SaveDevicesSettings: Integer; dispid 282;
    property Scale: Double dispid 252;
    property ScaleVB: Double dispid 292;
    property Second: Integer dispid 42;
    property SerialNumber: WideString dispid 53;
    property ServerVersion: WideString readonly dispid 4;
    property Session: Integer dispid 58;
    property SessionOpened: WordBool readonly dispid 161;
    function SetCaption: Integer; dispid 98;
    function SetDate: Integer; dispid 91;
    function SetDateTime: Integer; dispid 407;
    function SetLicense: Integer; dispid 28;
    function SetMode: Integer; dispid 71;
    function SetPassword: Integer; dispid 173;
    function SetPointPosition: Integer; dispid 140;
    function SetRecord: Integer; dispid 93;
    function SetSerialNumber: Integer; dispid 26;
    function SetSettings: Integer; dispid 133;
    function SetTime: Integer; dispid 77;
    function SetValue: Integer; dispid 96;
    property ShowProgress: WordBool dispid 111;
    function ShowProperties: Integer; dispid 20;
    property SlipCharLineLength: Integer readonly dispid 259;
    property SlipDocCharLineLength: Integer dispid 264;
    property SlipDocCopyCountHorz: Integer dispid 265;
    property SlipDocCopyCountVert: Integer dispid 266;
    property SlipDocCopyShiftHorz: Integer dispid 267;
    property SlipDocCopyShiftVert: Integer dispid 268;
    property SlipDocLeftMargin: Integer dispid 270;
    property SlipDocOrientation: Integer dispid 269;
    property SlipDocTopMargin: Integer dispid 271;
    property SlipLineSpacing: Integer dispid 249;
    property SlipPixelLineLength: Integer readonly dispid 260;
    property SlotNumber: Integer readonly dispid 159;
    function Sound: Integer; dispid 192;
    function Storno: Integer; dispid 86;
    function StornoPayment: Integer; dispid 208;
    property StreamFormat: Integer dispid 188;
    function SubResult: Integer; dispid 85;
    property Summ: Double dispid 44;
    function SummCharge: Integer; dispid 106;
    function SummDiscount: Integer; dispid 105;
    function SummTax: Integer; dispid 298;
    property SystemOperationType: Integer dispid 409;
    property SystemOperationData: WideString dispid 410;
    property SystemOperationResult: WideString readonly dispid 411;
    property Table: Integer dispid 128;
    property Tax: Integer dispid 126;
    property TaxTypeNumber: Integer dispid 299;
    function TestDevice: Integer; dispid 101;
    property TestMode: WordBool dispid 125;
    property TextWrap: Integer dispid 254;
    property Timeout: Integer dispid 30;
    property TransactionType: Integer readonly dispid 114;
    property TypeClose: Integer dispid 50;
    property TaxMode: Integer dispid 318;
    property TaxSumm: Double dispid 319;
    property StoreReceipts: WordBool dispid 1101;
    property Quantity: Double dispid 47;
    property RateType: Integer dispid 152;
    property RcpCharLineLength: Integer readonly dispid 279;
    property RcpPixelLineLength: Integer readonly dispid 280;
    property RecFont: Integer dispid 195;
    property RecBrightness: Integer dispid 196;
    property RecFontHeight: Integer dispid 198;
    property RecLineSpacing: Integer dispid 199;
    property RecordType: Integer dispid 145;
    property RegisterNumber: Integer dispid 230;
    function Registration: Integer; dispid 80;
    property Remainder: Double readonly dispid 205;
    function Report: Integer; dispid 92;
    property ReportType: Integer dispid 63;
    function ResetChargeDiscount: Integer; dispid 147;
    function ResetMode: Integer; dispid 168;
    function ResetSettings: Integer; dispid 136;
    function ResetSummary: Integer; dispid 141;
    function ResetTax: Integer; dispid 300;
    property ResultCode: Integer readonly dispid 1;
    property ResultDescription: WideString readonly dispid 2;
    function Return: Integer; dispid 87;
    property ROMVersion: WideString readonly dispid 55;
    property RouteCode: Integer dispid 135;
    property RouteNumber: Integer dispid 151;
    property Row: Integer dispid 129;
    function RunCommand: Integer; dispid 171;
    property QuantityType: Integer dispid 405;
    function OpenCheck: Integer; dispid 202;
    function OpenDrawer: Integer; dispid 160;
    function OpenSession: Integer; dispid 204;
    property OperationType: Integer dispid 276;
    property Operator_: Integer readonly dispid 51;
    property OrderCode: WideString dispid 146;
    property OrderNumber: Integer dispid 144;
    property OutboundStream: WideString dispid 169;
    property OutOfPaper: WordBool readonly dispid 157;
    function PartialCut: Integer; dispid 139;
    property Password: WideString dispid 43;
    property PasswordEntered: WordBool readonly dispid 61;
    function Payment: Integer; dispid 207;
    property Percents: Double dispid 49;
    function PercentsCharge: Integer; dispid 84;
    function PercentsDiscount: Integer; dispid 83;
    property PictureNumber: Integer dispid 210;
    property PictureState: Integer readonly dispid 211;
    property PixelLineLength: Integer readonly dispid 229;
    property PLUNumber: Integer dispid 31;
    property PointPosition: Integer dispid 60;
    property PortNumber: Integer dispid 32;
    property Price: Double dispid 46;
    function PrintBarcode: Integer; dispid 189;
    property PrintBarcodeText: Integer dispid 238;
    function PrintBitMap: Integer; dispid 194;
    function PrintBitMapFromFile: Integer; dispid 227;
    property PrinterConnectionFailed: WordBool readonly dispid 158;
    property PrinterCutMechanismError: WordBool readonly dispid 287;
    property PrinterMechanismError: WordBool readonly dispid 185;
    property PrinterOverheatError: WordBool readonly dispid 288;
    function PrinterWrite: Integer; dispid 27;
    function PrintField: Integer; dispid 200;
    function PrintFooter: Integer; dispid 103;
    function PrintHeader: Integer; dispid 102;
    property PrintHeadTemperature: Integer readonly dispid 406;
    function PrintPicture: Integer; dispid 213;
    property PrintPurpose: Integer dispid 181;
    function PrintString: Integer; dispid 70;
    property Protocol: Integer dispid 184;
    property PowerSource: Integer dispid 43969;
    property PowerState: Integer dispid 43970;
    property PowerValue: Double dispid 43971;
    property OperatorName: WideString dispid 904;
    property OperatorCode: Integer dispid 905;
    property OperatorPassword: WideString dispid 906;
    property Parameters1CUI: WideString readonly dispid 43972;
    property ParametersDrv: WideString readonly dispid 43973;
    property SessionTaxByDepartment: Double dispid 43974;
    property SessionTaxSummByDepartment: Double dispid 43975;
    property DiscountSummBySession: Double dispid 43976;
    property IncreaseSummBySession: Double dispid 43977;
    property PaymentMode: Integer dispid 316;
    property ProductId: WideString dispid 2598;
    property MachineName: WideString dispid 5;
    property MachineNumber: WideString dispid 19;
    property MaxCaptionLength: Integer readonly dispid 255;
    property Minute: Integer dispid 41;
    property Mode: Integer dispid 35;
    property Model: Integer dispid 285;
    property Model_OLD: Integer readonly dispid 56;
    property ModelCheck: WordBool dispid 134;
    property Month: Integer dispid 38;
    property Name: WideString dispid 45;
    property NeedResult: Integer dispid 308;
    function NewDocument: Integer; dispid 278;
    property LastRecord: Integer dispid 156;
    property LastZone: Integer dispid 154;
    property LeftMargin: Integer dispid 214;
    property License: Integer dispid 29;
    property LineNumber: Integer dispid 183;
    function LoadDevicesSettings: Integer; dispid 283;
    property LockDevices: WordBool dispid 13;
    function LockKeyboard: Integer; dispid 74;
    property LogicalNumber: Integer readonly dispid 52;
    property InboundStream: WideString readonly dispid 170;
    function InitSettings: Integer; dispid 142;
    property INN: WideString dispid 23;
    function InputRoute: Integer; dispid 164;
    property IsDemo: WordBool readonly dispid 274;
    property IsFree: WordBool readonly dispid 310;
    property JrnBrightness: Integer dispid 218;
    property JrnCharLineLength: Integer readonly dispid 257;
    property JrnFont: Integer dispid 217;
    property JrnFontHeight: Integer dispid 220;
    property JrnLineSpacing: Integer dispid 221;
    property JrnPixelLineLength: Integer readonly dispid 258;
    property ItemType: Integer dispid 317;
    function GetCaption: Integer; dispid 99;
    function GetCurrentMode: Integer; dispid 137;
    function GetDeviceMetrics: Integer; dispid 123;
    function GetLastError: Integer; dispid 94;
    function GetLastSummary: Integer; dispid 127;
    function GetLicense: Integer; dispid 108;
    function GetPassword: Integer; dispid 172;
    function GetRange: Integer; dispid 25;
    function GetRecord: Integer; dispid 95;
    function GetRegister: Integer; dispid 231;
    function GetSettings: Integer; dispid 132;
    function GetStatus: Integer; dispid 76;
    function GetStatusPicture: Integer; dispid 235;
    function GetStatusPictureArray: Integer; dispid 225;
    function GetSumm: Integer; dispid 90;
    function GetSupportedMode: Integer; dispid 124;
    function GetUnitVersion: Integer; dispid 233;
    function GetValue: Integer; dispid 97;
    property Height: Integer dispid 197;
    property Hour: Integer dispid 40;
    property HostAddress: WideString dispid 501;
    property HideGUI: WordBool dispid 322;
    property ECRError: Integer readonly dispid 64;
    property ECRErrorDescription: WideString readonly dispid 65;
    function EKLZActivate: Integer; dispid 219;
    function EKLZCloseArchive: Integer; dispid 222;
    property EKLZFlags: Integer readonly dispid 236;
    function EKLZGetStatus: Integer; dispid 223;
    property EKLZKPKNumber: Integer dispid 216;
    property EnableCheckSumm: WordBool dispid 148;
    function EnableDeferredZReports: Integer; dispid 302;
    function EndAdd: Integer; dispid 150;
    property EndDay: Integer dispid 16;
    function EndDocument: Integer; dispid 247;
    function EndFiscDocument: Integer; dispid 262;
    property EndMonth: Integer dispid 17;
    function EndReport: Integer; dispid 113;
    property EndSession: Integer dispid 15;
    property EndYear: Integer dispid 18;
    property ENQTimeout: Integer dispid 187;
    function ExecSystemOperation: Integer; dispid 43978;
    property Factor: Integer dispid 143;
    property Field: Integer dispid 130;
    property FieldType: Integer dispid 131;
    property FileName: WideString dispid 228;
    property FirstRecord: Integer dispid 155;
    property FirstZone: Integer dispid 153;
    property Fiscal: WordBool readonly dispid 54;
    function Fiscalization: Integer; dispid 24;
    property FontBold: WordBool dispid 241;
    property FontDblHeight: WordBool dispid 245;
    property FontDblWidth: WordBool dispid 248;
    property FontItalic: WordBool dispid 242;
    property FontUnderline: WordBool dispid 243;
    property FontNegative: WordBool dispid 244;
    property Frequency: Integer dispid 190;
    function FullCut: Integer; dispid 138;
    property EntryNum: Integer dispid 401;
    property ErrorPosition: Integer readonly dispid 402;
    function FindIPDevices(Timeour: Integer): WideString; dispid 403;
    function EndItem: Integer; dispid 313;
    function EndComplexAttribute: Integer; dispid 320;
    property EndCheckNumber: Integer dispid 321;
    property ENVDMode: WordBool dispid 404;
    function CheckStatusSKNO: Integer; dispid 408;
    property FFDVer: Integer readonly dispid 324;
    property CacheReport: WordBool dispid 110;
    function CancelCheck: Integer; dispid 89;
    property Caption: WideString dispid 36;
    property CaptionPurpose: Integer dispid 68;
    property CaptionTable: Integer dispid 303;
    function CardGetType: Integer; dispid 291;
    function CardRead: Integer; dispid 289;
    function CardWrite: Integer; dispid 290;
    function CashIncome: Integer; dispid 78;
    function CashOutcome: Integer; dispid 79;
    property Change: Double readonly dispid 206;
    property CharLineLength: Integer readonly dispid 209;
    property CheckNumber: Integer dispid 57;
    property CheckPaperPresent: WordBool readonly dispid 174;
    property CheckState: Integer readonly dispid 59;
    property CheckType: Integer dispid 201;
    property ClearJrn: Integer dispid 296;
    function ClearOutput: Integer; dispid 163;
    function ClearPictureArray: Integer; dispid 212;
    function CloseCheck: Integer; dispid 81;
    property ComPortsDescriptions: WideString readonly dispid 426;
    property ControlPaperPresent: WordBool readonly dispid 175;
    property Count: Integer dispid 193;
    property CounterType: Integer dispid 307;
    property CoverOpened: WordBool readonly dispid 176;
    property CurrentDeviceName: WideString dispid 8;
    property CurrentDeviceNumber: Integer dispid 7;
    property CurrentDeviceIndex: Integer dispid 6;
    property Day: Integer dispid 37;
    property DefaultPassword: WideString dispid 295;
    function DeleteDevice: Integer; dispid 22;
    function DeleteLastPicture: Integer; dispid 237;
    function Delivery: Integer; dispid 82;
    function DemoPrint: Integer; dispid 239;
    property Department: Integer dispid 48;
    property Destination: Integer dispid 107;
    property DeviceEnabled: WordBool dispid 62;
    property DeviceCount: Integer readonly dispid 9;
    property DeviceDescription: WideString readonly dispid 11;
    property DeviceSettings: WideString dispid 286;
    property DevicesSettings: WideString dispid 284;
    property DisableParamWindow: WordBool dispid 14;
    property DisablePasswordSettings: WordBool dispid 167;
    property DiscountType: Integer dispid 293;
    property DiscountTypeNumber: Integer dispid 234;
    property DiscountValue: Double dispid 294;
    function DisplayDraw: Integer; dispid 73;
    function DisplayWrite: Integer; dispid 72;
    property DocNumber: Integer dispid 297;
    property DrawerOffTimeout: Integer dispid 179;
    property DrawerOnQuantity: Integer dispid 180;
    property DrawerOnTimeout: Integer dispid 178;
    property DrawerOpened: WordBool readonly dispid 162;
    property Duration: Integer dispid 191;
    property DialogFontName: WideString dispid 304;
    property DialogFontSize: Integer dispid 305;
    property DialogFontStyle: Integer dispid 306;
    function DeviceEnableEx: Integer; dispid 817;
    property DeviceEnableTimeout: Integer dispid 818;
    property CorrectionLevel: Integer dispid 65467;
    function PrintLastCheckCopy: Integer; dispid 65468;
    property BarcodeOptions: Integer dispid 1048320;
    property BarcodeRows: Integer dispid 1048321;
    property BarcodeColumns: Integer dispid 1048322;
    property BarcodeProportions: Integer dispid 1048323;
    property BarcodePixelProportions: Integer dispid 1048324;
    function OpenDirectory: Integer; dispid 1048325;
    property Directory: WideString dispid 1048326;
    property FileSize: Integer dispid 1048328;
    function ReadDirectory: Integer; dispid 1048329;
    property OpenFileParams: Byte dispid 1048336;
    function OpenFile: Integer; dispid 1048330;
    function CloseFile: Integer; dispid 1048331;
    function CloseDirectory: Integer; dispid 1048332;
    property FileOffset: Integer dispid 1048333;
    property FileReadLength: Integer dispid 1048334;
    function ReadFile: Integer; dispid 1048335;
    function DeleteFileFromSD: Integer; dispid 1048337;
    function WriteFileToSD: Integer; dispid 1048338;
    function PowerOff: Integer; dispid 1048339;
    property DrawerInvertState: WordBool dispid 2555;
    property BarcodeOptionsEx: Integer dispid 2556;
    property PortType: Integer dispid 2557;
    property PortFlags: Integer dispid 2558;
    property PortSubcommand: Integer dispid 2559;
    function PortPowerOn: Integer; dispid 2560;
    function PortPowerOff: Integer; dispid 2561;
    function PortSendData: Integer; dispid 2562;
    function PortSyncGetData: Integer; dispid 2563;
    function PortConfig: Integer; dispid 2564;
    function PortStatus: Integer; dispid 2565;
    function PrintBarcodeByNumber: Integer; dispid 2566;
    function ClearBarcodeArray: Integer; dispid 2567;
    function GetBarcodeArrayState: Integer; dispid 2568;
    function ReadBarcode: Integer; dispid 2569;
    function DeleteBarcode: Integer; dispid 2570;
    function EJState: Integer; dispid 2571;
    function WriteAttribute: Integer; dispid 2572;
    property AttrName: WideString dispid 2573;
    property AttrValue: WideString dispid 2574;
    property AttrNumber: Integer dispid 2575;
    function ReadAttribute: Integer; dispid 2576;
    property ShowModels: Integer dispid 2577;
    property OFDLastError: Integer dispid 2578;
    function ReadFNStatus: Integer; dispid 2579;
    property CheckMode: Integer dispid 2580;
    property AttrPrint: Integer dispid 2581;
    function ReadFNParam: Integer; dispid 2582;
    property FNFiscal: WordBool readonly dispid 2583;
    property FiscalSign: WideString readonly dispid 2585;
    property OperatorMessage: WordBool readonly dispid 2592;
    property LastCheckType: Integer readonly dispid 2593;
    property SessionExceedLimit: WordBool readonly dispid 2594;
    property FNFlags: Integer readonly dispid 2595;
    property Is54FZ: WordBool readonly dispid 2596;
    function Stub: Integer; dispid 2597;
    property CommandCode: Integer readonly dispid 314;
    function AboutBox: Integer; dispid 309;
    property AccessPassword: WideString dispid 165;
    property ACKTimeout: Integer dispid 186;
    function AddDevice: Integer; dispid 21;
    function AddField: Integer; dispid 240;
    function AddPictureFromFile: Integer; dispid 226;
    function AdvancedDisplayWrite: Integer; dispid 182;
    property AdvancedMode: Integer readonly dispid 109;
    function AdvancedOpenDrawer: Integer; dispid 177;
    property AdvancedRegistration: WordBool dispid 256;
    property Alignment: Integer dispid 250;
    function Annulate: Integer; dispid 88;
    property ApplicationHandle: Integer dispid 10;
    property AutoSize: WordBool dispid 251;
    property BadParam: Integer readonly dispid 33;
    property BadParamDescription: WideString readonly dispid 34;
    property Barcode: WideString dispid 12;
    property BarcodeControlCode: WordBool dispid 203;
    property BarcodeTextFont: Integer dispid 301;
    property BarcodeType: Integer dispid 215;
    property BatteryLow: WordBool readonly dispid 275;
    property BaudRate: Integer dispid 67;
    function Beep: Integer; dispid 100;
    function BeginAdd: Integer; dispid 149;
    function BeginDocument: Integer; dispid 246;
    function BeginFiscDocument: Integer; dispid 261;
    function BeginReport: Integer; dispid 112;
    property BufferingMode: WordBool dispid 281;
    function Buy: Integer; dispid 272;
    function BuyAnnulate: Integer; dispid 277;
    function BuyReturn: Integer; dispid 273;
    function BeginItem: Integer; dispid 312;
    function BeginComplexAttribute: Integer; dispid 315;
    property BarcodeVer: Integer dispid 323;
  end;

// *********************************************************************//
// Interface: IFprnMYZ
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8744B087-6CED-46CD-95DC-8315173CF3C7}
// *********************************************************************//
  IFprnMYZ = interface(IFprnMWX)
    ['{8744B087-6CED-46CD-95DC-8315173CF3C7}']
    function Get_Year: Integer; safecall;
    procedure Set_Year(Value: Integer); safecall;
    property Year: Integer read Get_Year write Set_Year;
  end;

// *********************************************************************//
// DispIntf:  IFprnMYZDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8744B087-6CED-46CD-95DC-8315173CF3C7}
// *********************************************************************//
  IFprnMYZDisp = dispinterface
    ['{8744B087-6CED-46CD-95DC-8315173CF3C7}']
    property Year: Integer dispid 39;
    property Width: Integer readonly dispid 224;
    property WorkShop: Integer dispid 253;
    property WriteLogFile: Integer dispid 263;
    function WriteSMLog(const str: WideString): Integer; dispid 311;
    property UBuild: Integer readonly dispid 116;
    property UCodePage: Integer readonly dispid 121;
    property UDescription: WideString readonly dispid 119;
    property UMajorVersion: Integer readonly dispid 104;
    property UMinorVersion: Integer readonly dispid 115;
    property UMode: Integer dispid 122;
    property UModel: Integer readonly dispid 118;
    property UnitType: Integer dispid 232;
    function UnlockKeyboard: Integer; dispid 75;
    property UProtocolVersion: Integer readonly dispid 120;
    property UseAccessPassword: WordBool dispid 166;
    property UType: Integer readonly dispid 117;
    property Value: Double dispid 66;
    property ValuePurpose: Integer dispid 69;
    property Version: WideString readonly dispid 3;
    function SaveDevicesSettings: Integer; dispid 282;
    property Scale: Double dispid 252;
    property ScaleVB: Double dispid 292;
    property Second: Integer dispid 42;
    property SerialNumber: WideString dispid 53;
    property ServerVersion: WideString readonly dispid 4;
    property Session: Integer dispid 58;
    property SessionOpened: WordBool readonly dispid 161;
    function SetCaption: Integer; dispid 98;
    function SetDate: Integer; dispid 91;
    function SetDateTime: Integer; dispid 407;
    function SetLicense: Integer; dispid 28;
    function SetMode: Integer; dispid 71;
    function SetPassword: Integer; dispid 173;
    function SetPointPosition: Integer; dispid 140;
    function SetRecord: Integer; dispid 93;
    function SetSerialNumber: Integer; dispid 26;
    function SetSettings: Integer; dispid 133;
    function SetTime: Integer; dispid 77;
    function SetValue: Integer; dispid 96;
    property ShowProgress: WordBool dispid 111;
    function ShowProperties: Integer; dispid 20;
    property SlipCharLineLength: Integer readonly dispid 259;
    property SlipDocCharLineLength: Integer dispid 264;
    property SlipDocCopyCountHorz: Integer dispid 265;
    property SlipDocCopyCountVert: Integer dispid 266;
    property SlipDocCopyShiftHorz: Integer dispid 267;
    property SlipDocCopyShiftVert: Integer dispid 268;
    property SlipDocLeftMargin: Integer dispid 270;
    property SlipDocOrientation: Integer dispid 269;
    property SlipDocTopMargin: Integer dispid 271;
    property SlipLineSpacing: Integer dispid 249;
    property SlipPixelLineLength: Integer readonly dispid 260;
    property SlotNumber: Integer readonly dispid 159;
    function Sound: Integer; dispid 192;
    function Storno: Integer; dispid 86;
    function StornoPayment: Integer; dispid 208;
    property StreamFormat: Integer dispid 188;
    function SubResult: Integer; dispid 85;
    property Summ: Double dispid 44;
    function SummCharge: Integer; dispid 106;
    function SummDiscount: Integer; dispid 105;
    function SummTax: Integer; dispid 298;
    property SystemOperationType: Integer dispid 409;
    property SystemOperationData: WideString dispid 410;
    property SystemOperationResult: WideString readonly dispid 411;
    property Table: Integer dispid 128;
    property Tax: Integer dispid 126;
    property TaxTypeNumber: Integer dispid 299;
    function TestDevice: Integer; dispid 101;
    property TestMode: WordBool dispid 125;
    property TextWrap: Integer dispid 254;
    property Timeout: Integer dispid 30;
    property TransactionType: Integer readonly dispid 114;
    property TypeClose: Integer dispid 50;
    property TaxMode: Integer dispid 318;
    property TaxSumm: Double dispid 319;
    property StoreReceipts: WordBool dispid 1101;
    property Quantity: Double dispid 47;
    property RateType: Integer dispid 152;
    property RcpCharLineLength: Integer readonly dispid 279;
    property RcpPixelLineLength: Integer readonly dispid 280;
    property RecFont: Integer dispid 195;
    property RecBrightness: Integer dispid 196;
    property RecFontHeight: Integer dispid 198;
    property RecLineSpacing: Integer dispid 199;
    property RecordType: Integer dispid 145;
    property RegisterNumber: Integer dispid 230;
    function Registration: Integer; dispid 80;
    property Remainder: Double readonly dispid 205;
    function Report: Integer; dispid 92;
    property ReportType: Integer dispid 63;
    function ResetChargeDiscount: Integer; dispid 147;
    function ResetMode: Integer; dispid 168;
    function ResetSettings: Integer; dispid 136;
    function ResetSummary: Integer; dispid 141;
    function ResetTax: Integer; dispid 300;
    property ResultCode: Integer readonly dispid 1;
    property ResultDescription: WideString readonly dispid 2;
    function Return: Integer; dispid 87;
    property ROMVersion: WideString readonly dispid 55;
    property RouteCode: Integer dispid 135;
    property RouteNumber: Integer dispid 151;
    property Row: Integer dispid 129;
    function RunCommand: Integer; dispid 171;
    property QuantityType: Integer dispid 405;
    function OpenCheck: Integer; dispid 202;
    function OpenDrawer: Integer; dispid 160;
    function OpenSession: Integer; dispid 204;
    property OperationType: Integer dispid 276;
    property Operator_: Integer readonly dispid 51;
    property OrderCode: WideString dispid 146;
    property OrderNumber: Integer dispid 144;
    property OutboundStream: WideString dispid 169;
    property OutOfPaper: WordBool readonly dispid 157;
    function PartialCut: Integer; dispid 139;
    property Password: WideString dispid 43;
    property PasswordEntered: WordBool readonly dispid 61;
    function Payment: Integer; dispid 207;
    property Percents: Double dispid 49;
    function PercentsCharge: Integer; dispid 84;
    function PercentsDiscount: Integer; dispid 83;
    property PictureNumber: Integer dispid 210;
    property PictureState: Integer readonly dispid 211;
    property PixelLineLength: Integer readonly dispid 229;
    property PLUNumber: Integer dispid 31;
    property PointPosition: Integer dispid 60;
    property PortNumber: Integer dispid 32;
    property Price: Double dispid 46;
    function PrintBarcode: Integer; dispid 189;
    property PrintBarcodeText: Integer dispid 238;
    function PrintBitMap: Integer; dispid 194;
    function PrintBitMapFromFile: Integer; dispid 227;
    property PrinterConnectionFailed: WordBool readonly dispid 158;
    property PrinterCutMechanismError: WordBool readonly dispid 287;
    property PrinterMechanismError: WordBool readonly dispid 185;
    property PrinterOverheatError: WordBool readonly dispid 288;
    function PrinterWrite: Integer; dispid 27;
    function PrintField: Integer; dispid 200;
    function PrintFooter: Integer; dispid 103;
    function PrintHeader: Integer; dispid 102;
    property PrintHeadTemperature: Integer readonly dispid 406;
    function PrintPicture: Integer; dispid 213;
    property PrintPurpose: Integer dispid 181;
    function PrintString: Integer; dispid 70;
    property Protocol: Integer dispid 184;
    property PowerSource: Integer dispid 43969;
    property PowerState: Integer dispid 43970;
    property PowerValue: Double dispid 43971;
    property OperatorName: WideString dispid 904;
    property OperatorCode: Integer dispid 905;
    property OperatorPassword: WideString dispid 906;
    property Parameters1CUI: WideString readonly dispid 43972;
    property ParametersDrv: WideString readonly dispid 43973;
    property SessionTaxByDepartment: Double dispid 43974;
    property SessionTaxSummByDepartment: Double dispid 43975;
    property DiscountSummBySession: Double dispid 43976;
    property IncreaseSummBySession: Double dispid 43977;
    property PaymentMode: Integer dispid 316;
    property ProductId: WideString dispid 2598;
    property MachineName: WideString dispid 5;
    property MachineNumber: WideString dispid 19;
    property MaxCaptionLength: Integer readonly dispid 255;
    property Minute: Integer dispid 41;
    property Mode: Integer dispid 35;
    property Model: Integer dispid 285;
    property Model_OLD: Integer readonly dispid 56;
    property ModelCheck: WordBool dispid 134;
    property Month: Integer dispid 38;
    property Name: WideString dispid 45;
    property NeedResult: Integer dispid 308;
    function NewDocument: Integer; dispid 278;
    property LastRecord: Integer dispid 156;
    property LastZone: Integer dispid 154;
    property LeftMargin: Integer dispid 214;
    property License: Integer dispid 29;
    property LineNumber: Integer dispid 183;
    function LoadDevicesSettings: Integer; dispid 283;
    property LockDevices: WordBool dispid 13;
    function LockKeyboard: Integer; dispid 74;
    property LogicalNumber: Integer readonly dispid 52;
    property InboundStream: WideString readonly dispid 170;
    function InitSettings: Integer; dispid 142;
    property INN: WideString dispid 23;
    function InputRoute: Integer; dispid 164;
    property IsDemo: WordBool readonly dispid 274;
    property IsFree: WordBool readonly dispid 310;
    property JrnBrightness: Integer dispid 218;
    property JrnCharLineLength: Integer readonly dispid 257;
    property JrnFont: Integer dispid 217;
    property JrnFontHeight: Integer dispid 220;
    property JrnLineSpacing: Integer dispid 221;
    property JrnPixelLineLength: Integer readonly dispid 258;
    property ItemType: Integer dispid 317;
    function GetCaption: Integer; dispid 99;
    function GetCurrentMode: Integer; dispid 137;
    function GetDeviceMetrics: Integer; dispid 123;
    function GetLastError: Integer; dispid 94;
    function GetLastSummary: Integer; dispid 127;
    function GetLicense: Integer; dispid 108;
    function GetPassword: Integer; dispid 172;
    function GetRange: Integer; dispid 25;
    function GetRecord: Integer; dispid 95;
    function GetRegister: Integer; dispid 231;
    function GetSettings: Integer; dispid 132;
    function GetStatus: Integer; dispid 76;
    function GetStatusPicture: Integer; dispid 235;
    function GetStatusPictureArray: Integer; dispid 225;
    function GetSumm: Integer; dispid 90;
    function GetSupportedMode: Integer; dispid 124;
    function GetUnitVersion: Integer; dispid 233;
    function GetValue: Integer; dispid 97;
    property Height: Integer dispid 197;
    property Hour: Integer dispid 40;
    property HostAddress: WideString dispid 501;
    property HideGUI: WordBool dispid 322;
    property ECRError: Integer readonly dispid 64;
    property ECRErrorDescription: WideString readonly dispid 65;
    function EKLZActivate: Integer; dispid 219;
    function EKLZCloseArchive: Integer; dispid 222;
    property EKLZFlags: Integer readonly dispid 236;
    function EKLZGetStatus: Integer; dispid 223;
    property EKLZKPKNumber: Integer dispid 216;
    property EnableCheckSumm: WordBool dispid 148;
    function EnableDeferredZReports: Integer; dispid 302;
    function EndAdd: Integer; dispid 150;
    property EndDay: Integer dispid 16;
    function EndDocument: Integer; dispid 247;
    function EndFiscDocument: Integer; dispid 262;
    property EndMonth: Integer dispid 17;
    function EndReport: Integer; dispid 113;
    property EndSession: Integer dispid 15;
    property EndYear: Integer dispid 18;
    property ENQTimeout: Integer dispid 187;
    function ExecSystemOperation: Integer; dispid 43978;
    property Factor: Integer dispid 143;
    property Field: Integer dispid 130;
    property FieldType: Integer dispid 131;
    property FileName: WideString dispid 228;
    property FirstRecord: Integer dispid 155;
    property FirstZone: Integer dispid 153;
    property Fiscal: WordBool readonly dispid 54;
    function Fiscalization: Integer; dispid 24;
    property FontBold: WordBool dispid 241;
    property FontDblHeight: WordBool dispid 245;
    property FontDblWidth: WordBool dispid 248;
    property FontItalic: WordBool dispid 242;
    property FontUnderline: WordBool dispid 243;
    property FontNegative: WordBool dispid 244;
    property Frequency: Integer dispid 190;
    function FullCut: Integer; dispid 138;
    property EntryNum: Integer dispid 401;
    property ErrorPosition: Integer readonly dispid 402;
    function FindIPDevices(Timeour: Integer): WideString; dispid 403;
    function EndItem: Integer; dispid 313;
    function EndComplexAttribute: Integer; dispid 320;
    property EndCheckNumber: Integer dispid 321;
    property ENVDMode: WordBool dispid 404;
    function CheckStatusSKNO: Integer; dispid 408;
    property FFDVer: Integer readonly dispid 324;
    property CacheReport: WordBool dispid 110;
    function CancelCheck: Integer; dispid 89;
    property Caption: WideString dispid 36;
    property CaptionPurpose: Integer dispid 68;
    property CaptionTable: Integer dispid 303;
    function CardGetType: Integer; dispid 291;
    function CardRead: Integer; dispid 289;
    function CardWrite: Integer; dispid 290;
    function CashIncome: Integer; dispid 78;
    function CashOutcome: Integer; dispid 79;
    property Change: Double readonly dispid 206;
    property CharLineLength: Integer readonly dispid 209;
    property CheckNumber: Integer dispid 57;
    property CheckPaperPresent: WordBool readonly dispid 174;
    property CheckState: Integer readonly dispid 59;
    property CheckType: Integer dispid 201;
    property ClearJrn: Integer dispid 296;
    function ClearOutput: Integer; dispid 163;
    function ClearPictureArray: Integer; dispid 212;
    function CloseCheck: Integer; dispid 81;
    property ComPortsDescriptions: WideString readonly dispid 426;
    property ControlPaperPresent: WordBool readonly dispid 175;
    property Count: Integer dispid 193;
    property CounterType: Integer dispid 307;
    property CoverOpened: WordBool readonly dispid 176;
    property CurrentDeviceName: WideString dispid 8;
    property CurrentDeviceNumber: Integer dispid 7;
    property CurrentDeviceIndex: Integer dispid 6;
    property Day: Integer dispid 37;
    property DefaultPassword: WideString dispid 295;
    function DeleteDevice: Integer; dispid 22;
    function DeleteLastPicture: Integer; dispid 237;
    function Delivery: Integer; dispid 82;
    function DemoPrint: Integer; dispid 239;
    property Department: Integer dispid 48;
    property Destination: Integer dispid 107;
    property DeviceEnabled: WordBool dispid 62;
    property DeviceCount: Integer readonly dispid 9;
    property DeviceDescription: WideString readonly dispid 11;
    property DeviceSettings: WideString dispid 286;
    property DevicesSettings: WideString dispid 284;
    property DisableParamWindow: WordBool dispid 14;
    property DisablePasswordSettings: WordBool dispid 167;
    property DiscountType: Integer dispid 293;
    property DiscountTypeNumber: Integer dispid 234;
    property DiscountValue: Double dispid 294;
    function DisplayDraw: Integer; dispid 73;
    function DisplayWrite: Integer; dispid 72;
    property DocNumber: Integer dispid 297;
    property DrawerOffTimeout: Integer dispid 179;
    property DrawerOnQuantity: Integer dispid 180;
    property DrawerOnTimeout: Integer dispid 178;
    property DrawerOpened: WordBool readonly dispid 162;
    property Duration: Integer dispid 191;
    property DialogFontName: WideString dispid 304;
    property DialogFontSize: Integer dispid 305;
    property DialogFontStyle: Integer dispid 306;
    function DeviceEnableEx: Integer; dispid 817;
    property DeviceEnableTimeout: Integer dispid 818;
    property CorrectionLevel: Integer dispid 65467;
    function PrintLastCheckCopy: Integer; dispid 65468;
    property BarcodeOptions: Integer dispid 1048320;
    property BarcodeRows: Integer dispid 1048321;
    property BarcodeColumns: Integer dispid 1048322;
    property BarcodeProportions: Integer dispid 1048323;
    property BarcodePixelProportions: Integer dispid 1048324;
    function OpenDirectory: Integer; dispid 1048325;
    property Directory: WideString dispid 1048326;
    property FileSize: Integer dispid 1048328;
    function ReadDirectory: Integer; dispid 1048329;
    property OpenFileParams: Byte dispid 1048336;
    function OpenFile: Integer; dispid 1048330;
    function CloseFile: Integer; dispid 1048331;
    function CloseDirectory: Integer; dispid 1048332;
    property FileOffset: Integer dispid 1048333;
    property FileReadLength: Integer dispid 1048334;
    function ReadFile: Integer; dispid 1048335;
    function DeleteFileFromSD: Integer; dispid 1048337;
    function WriteFileToSD: Integer; dispid 1048338;
    function PowerOff: Integer; dispid 1048339;
    property DrawerInvertState: WordBool dispid 2555;
    property BarcodeOptionsEx: Integer dispid 2556;
    property PortType: Integer dispid 2557;
    property PortFlags: Integer dispid 2558;
    property PortSubcommand: Integer dispid 2559;
    function PortPowerOn: Integer; dispid 2560;
    function PortPowerOff: Integer; dispid 2561;
    function PortSendData: Integer; dispid 2562;
    function PortSyncGetData: Integer; dispid 2563;
    function PortConfig: Integer; dispid 2564;
    function PortStatus: Integer; dispid 2565;
    function PrintBarcodeByNumber: Integer; dispid 2566;
    function ClearBarcodeArray: Integer; dispid 2567;
    function GetBarcodeArrayState: Integer; dispid 2568;
    function ReadBarcode: Integer; dispid 2569;
    function DeleteBarcode: Integer; dispid 2570;
    function EJState: Integer; dispid 2571;
    function WriteAttribute: Integer; dispid 2572;
    property AttrName: WideString dispid 2573;
    property AttrValue: WideString dispid 2574;
    property AttrNumber: Integer dispid 2575;
    function ReadAttribute: Integer; dispid 2576;
    property ShowModels: Integer dispid 2577;
    property OFDLastError: Integer dispid 2578;
    function ReadFNStatus: Integer; dispid 2579;
    property CheckMode: Integer dispid 2580;
    property AttrPrint: Integer dispid 2581;
    function ReadFNParam: Integer; dispid 2582;
    property FNFiscal: WordBool readonly dispid 2583;
    property FiscalSign: WideString readonly dispid 2585;
    property OperatorMessage: WordBool readonly dispid 2592;
    property LastCheckType: Integer readonly dispid 2593;
    property SessionExceedLimit: WordBool readonly dispid 2594;
    property FNFlags: Integer readonly dispid 2595;
    property Is54FZ: WordBool readonly dispid 2596;
    function Stub: Integer; dispid 2597;
    property CommandCode: Integer readonly dispid 314;
    function AboutBox: Integer; dispid 309;
    property AccessPassword: WideString dispid 165;
    property ACKTimeout: Integer dispid 186;
    function AddDevice: Integer; dispid 21;
    function AddField: Integer; dispid 240;
    function AddPictureFromFile: Integer; dispid 226;
    function AdvancedDisplayWrite: Integer; dispid 182;
    property AdvancedMode: Integer readonly dispid 109;
    function AdvancedOpenDrawer: Integer; dispid 177;
    property AdvancedRegistration: WordBool dispid 256;
    property Alignment: Integer dispid 250;
    function Annulate: Integer; dispid 88;
    property ApplicationHandle: Integer dispid 10;
    property AutoSize: WordBool dispid 251;
    property BadParam: Integer readonly dispid 33;
    property BadParamDescription: WideString readonly dispid 34;
    property Barcode: WideString dispid 12;
    property BarcodeControlCode: WordBool dispid 203;
    property BarcodeTextFont: Integer dispid 301;
    property BarcodeType: Integer dispid 215;
    property BatteryLow: WordBool readonly dispid 275;
    property BaudRate: Integer dispid 67;
    function Beep: Integer; dispid 100;
    function BeginAdd: Integer; dispid 149;
    function BeginDocument: Integer; dispid 246;
    function BeginFiscDocument: Integer; dispid 261;
    function BeginReport: Integer; dispid 112;
    property BufferingMode: WordBool dispid 281;
    function Buy: Integer; dispid 272;
    function BuyAnnulate: Integer; dispid 277;
    function BuyReturn: Integer; dispid 273;
    function BeginItem: Integer; dispid 312;
    function BeginComplexAttribute: Integer; dispid 315;
    property BarcodeVer: Integer dispid 323;
  end;

// *********************************************************************//
// Interface: IFprnM45
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E4795280-3564-11D4-8E97-0080C87C930A}
// *********************************************************************//
  IFprnM45 = interface(IFprnMYZ)
    ['{E4795280-3564-11D4-8E97-0080C87C930A}']
  end;

// *********************************************************************//
// DispIntf:  IFprnM45Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E4795280-3564-11D4-8E97-0080C87C930A}
// *********************************************************************//
  IFprnM45Disp = dispinterface
    ['{E4795280-3564-11D4-8E97-0080C87C930A}']
    property Year: Integer dispid 39;
    property Width: Integer readonly dispid 224;
    property WorkShop: Integer dispid 253;
    property WriteLogFile: Integer dispid 263;
    function WriteSMLog(const str: WideString): Integer; dispid 311;
    property UBuild: Integer readonly dispid 116;
    property UCodePage: Integer readonly dispid 121;
    property UDescription: WideString readonly dispid 119;
    property UMajorVersion: Integer readonly dispid 104;
    property UMinorVersion: Integer readonly dispid 115;
    property UMode: Integer dispid 122;
    property UModel: Integer readonly dispid 118;
    property UnitType: Integer dispid 232;
    function UnlockKeyboard: Integer; dispid 75;
    property UProtocolVersion: Integer readonly dispid 120;
    property UseAccessPassword: WordBool dispid 166;
    property UType: Integer readonly dispid 117;
    property Value: Double dispid 66;
    property ValuePurpose: Integer dispid 69;
    property Version: WideString readonly dispid 3;
    function SaveDevicesSettings: Integer; dispid 282;
    property Scale: Double dispid 252;
    property ScaleVB: Double dispid 292;
    property Second: Integer dispid 42;
    property SerialNumber: WideString dispid 53;
    property ServerVersion: WideString readonly dispid 4;
    property Session: Integer dispid 58;
    property SessionOpened: WordBool readonly dispid 161;
    function SetCaption: Integer; dispid 98;
    function SetDate: Integer; dispid 91;
    function SetDateTime: Integer; dispid 407;
    function SetLicense: Integer; dispid 28;
    function SetMode: Integer; dispid 71;
    function SetPassword: Integer; dispid 173;
    function SetPointPosition: Integer; dispid 140;
    function SetRecord: Integer; dispid 93;
    function SetSerialNumber: Integer; dispid 26;
    function SetSettings: Integer; dispid 133;
    function SetTime: Integer; dispid 77;
    function SetValue: Integer; dispid 96;
    property ShowProgress: WordBool dispid 111;
    function ShowProperties: Integer; dispid 20;
    property SlipCharLineLength: Integer readonly dispid 259;
    property SlipDocCharLineLength: Integer dispid 264;
    property SlipDocCopyCountHorz: Integer dispid 265;
    property SlipDocCopyCountVert: Integer dispid 266;
    property SlipDocCopyShiftHorz: Integer dispid 267;
    property SlipDocCopyShiftVert: Integer dispid 268;
    property SlipDocLeftMargin: Integer dispid 270;
    property SlipDocOrientation: Integer dispid 269;
    property SlipDocTopMargin: Integer dispid 271;
    property SlipLineSpacing: Integer dispid 249;
    property SlipPixelLineLength: Integer readonly dispid 260;
    property SlotNumber: Integer readonly dispid 159;
    function Sound: Integer; dispid 192;
    function Storno: Integer; dispid 86;
    function StornoPayment: Integer; dispid 208;
    property StreamFormat: Integer dispid 188;
    function SubResult: Integer; dispid 85;
    property Summ: Double dispid 44;
    function SummCharge: Integer; dispid 106;
    function SummDiscount: Integer; dispid 105;
    function SummTax: Integer; dispid 298;
    property SystemOperationType: Integer dispid 409;
    property SystemOperationData: WideString dispid 410;
    property SystemOperationResult: WideString readonly dispid 411;
    property Table: Integer dispid 128;
    property Tax: Integer dispid 126;
    property TaxTypeNumber: Integer dispid 299;
    function TestDevice: Integer; dispid 101;
    property TestMode: WordBool dispid 125;
    property TextWrap: Integer dispid 254;
    property Timeout: Integer dispid 30;
    property TransactionType: Integer readonly dispid 114;
    property TypeClose: Integer dispid 50;
    property TaxMode: Integer dispid 318;
    property TaxSumm: Double dispid 319;
    property StoreReceipts: WordBool dispid 1101;
    property Quantity: Double dispid 47;
    property RateType: Integer dispid 152;
    property RcpCharLineLength: Integer readonly dispid 279;
    property RcpPixelLineLength: Integer readonly dispid 280;
    property RecFont: Integer dispid 195;
    property RecBrightness: Integer dispid 196;
    property RecFontHeight: Integer dispid 198;
    property RecLineSpacing: Integer dispid 199;
    property RecordType: Integer dispid 145;
    property RegisterNumber: Integer dispid 230;
    function Registration: Integer; dispid 80;
    property Remainder: Double readonly dispid 205;
    function Report: Integer; dispid 92;
    property ReportType: Integer dispid 63;
    function ResetChargeDiscount: Integer; dispid 147;
    function ResetMode: Integer; dispid 168;
    function ResetSettings: Integer; dispid 136;
    function ResetSummary: Integer; dispid 141;
    function ResetTax: Integer; dispid 300;
    property ResultCode: Integer readonly dispid 1;
    property ResultDescription: WideString readonly dispid 2;
    function Return: Integer; dispid 87;
    property ROMVersion: WideString readonly dispid 55;
    property RouteCode: Integer dispid 135;
    property RouteNumber: Integer dispid 151;
    property Row: Integer dispid 129;
    function RunCommand: Integer; dispid 171;
    property QuantityType: Integer dispid 405;
    function OpenCheck: Integer; dispid 202;
    function OpenDrawer: Integer; dispid 160;
    function OpenSession: Integer; dispid 204;
    property OperationType: Integer dispid 276;
    property Operator_: Integer readonly dispid 51;
    property OrderCode: WideString dispid 146;
    property OrderNumber: Integer dispid 144;
    property OutboundStream: WideString dispid 169;
    property OutOfPaper: WordBool readonly dispid 157;
    function PartialCut: Integer; dispid 139;
    property Password: WideString dispid 43;
    property PasswordEntered: WordBool readonly dispid 61;
    function Payment: Integer; dispid 207;
    property Percents: Double dispid 49;
    function PercentsCharge: Integer; dispid 84;
    function PercentsDiscount: Integer; dispid 83;
    property PictureNumber: Integer dispid 210;
    property PictureState: Integer readonly dispid 211;
    property PixelLineLength: Integer readonly dispid 229;
    property PLUNumber: Integer dispid 31;
    property PointPosition: Integer dispid 60;
    property PortNumber: Integer dispid 32;
    property Price: Double dispid 46;
    function PrintBarcode: Integer; dispid 189;
    property PrintBarcodeText: Integer dispid 238;
    function PrintBitMap: Integer; dispid 194;
    function PrintBitMapFromFile: Integer; dispid 227;
    property PrinterConnectionFailed: WordBool readonly dispid 158;
    property PrinterCutMechanismError: WordBool readonly dispid 287;
    property PrinterMechanismError: WordBool readonly dispid 185;
    property PrinterOverheatError: WordBool readonly dispid 288;
    function PrinterWrite: Integer; dispid 27;
    function PrintField: Integer; dispid 200;
    function PrintFooter: Integer; dispid 103;
    function PrintHeader: Integer; dispid 102;
    property PrintHeadTemperature: Integer readonly dispid 406;
    function PrintPicture: Integer; dispid 213;
    property PrintPurpose: Integer dispid 181;
    function PrintString: Integer; dispid 70;
    property Protocol: Integer dispid 184;
    property PowerSource: Integer dispid 43969;
    property PowerState: Integer dispid 43970;
    property PowerValue: Double dispid 43971;
    property OperatorName: WideString dispid 904;
    property OperatorCode: Integer dispid 905;
    property OperatorPassword: WideString dispid 906;
    property Parameters1CUI: WideString readonly dispid 43972;
    property ParametersDrv: WideString readonly dispid 43973;
    property SessionTaxByDepartment: Double dispid 43974;
    property SessionTaxSummByDepartment: Double dispid 43975;
    property DiscountSummBySession: Double dispid 43976;
    property IncreaseSummBySession: Double dispid 43977;
    property PaymentMode: Integer dispid 316;
    property ProductId: WideString dispid 2598;
    property MachineName: WideString dispid 5;
    property MachineNumber: WideString dispid 19;
    property MaxCaptionLength: Integer readonly dispid 255;
    property Minute: Integer dispid 41;
    property Mode: Integer dispid 35;
    property Model: Integer dispid 285;
    property Model_OLD: Integer readonly dispid 56;
    property ModelCheck: WordBool dispid 134;
    property Month: Integer dispid 38;
    property Name: WideString dispid 45;
    property NeedResult: Integer dispid 308;
    function NewDocument: Integer; dispid 278;
    property LastRecord: Integer dispid 156;
    property LastZone: Integer dispid 154;
    property LeftMargin: Integer dispid 214;
    property License: Integer dispid 29;
    property LineNumber: Integer dispid 183;
    function LoadDevicesSettings: Integer; dispid 283;
    property LockDevices: WordBool dispid 13;
    function LockKeyboard: Integer; dispid 74;
    property LogicalNumber: Integer readonly dispid 52;
    property InboundStream: WideString readonly dispid 170;
    function InitSettings: Integer; dispid 142;
    property INN: WideString dispid 23;
    function InputRoute: Integer; dispid 164;
    property IsDemo: WordBool readonly dispid 274;
    property IsFree: WordBool readonly dispid 310;
    property JrnBrightness: Integer dispid 218;
    property JrnCharLineLength: Integer readonly dispid 257;
    property JrnFont: Integer dispid 217;
    property JrnFontHeight: Integer dispid 220;
    property JrnLineSpacing: Integer dispid 221;
    property JrnPixelLineLength: Integer readonly dispid 258;
    property ItemType: Integer dispid 317;
    function GetCaption: Integer; dispid 99;
    function GetCurrentMode: Integer; dispid 137;
    function GetDeviceMetrics: Integer; dispid 123;
    function GetLastError: Integer; dispid 94;
    function GetLastSummary: Integer; dispid 127;
    function GetLicense: Integer; dispid 108;
    function GetPassword: Integer; dispid 172;
    function GetRange: Integer; dispid 25;
    function GetRecord: Integer; dispid 95;
    function GetRegister: Integer; dispid 231;
    function GetSettings: Integer; dispid 132;
    function GetStatus: Integer; dispid 76;
    function GetStatusPicture: Integer; dispid 235;
    function GetStatusPictureArray: Integer; dispid 225;
    function GetSumm: Integer; dispid 90;
    function GetSupportedMode: Integer; dispid 124;
    function GetUnitVersion: Integer; dispid 233;
    function GetValue: Integer; dispid 97;
    property Height: Integer dispid 197;
    property Hour: Integer dispid 40;
    property HostAddress: WideString dispid 501;
    property HideGUI: WordBool dispid 322;
    property ECRError: Integer readonly dispid 64;
    property ECRErrorDescription: WideString readonly dispid 65;
    function EKLZActivate: Integer; dispid 219;
    function EKLZCloseArchive: Integer; dispid 222;
    property EKLZFlags: Integer readonly dispid 236;
    function EKLZGetStatus: Integer; dispid 223;
    property EKLZKPKNumber: Integer dispid 216;
    property EnableCheckSumm: WordBool dispid 148;
    function EnableDeferredZReports: Integer; dispid 302;
    function EndAdd: Integer; dispid 150;
    property EndDay: Integer dispid 16;
    function EndDocument: Integer; dispid 247;
    function EndFiscDocument: Integer; dispid 262;
    property EndMonth: Integer dispid 17;
    function EndReport: Integer; dispid 113;
    property EndSession: Integer dispid 15;
    property EndYear: Integer dispid 18;
    property ENQTimeout: Integer dispid 187;
    function ExecSystemOperation: Integer; dispid 43978;
    property Factor: Integer dispid 143;
    property Field: Integer dispid 130;
    property FieldType: Integer dispid 131;
    property FileName: WideString dispid 228;
    property FirstRecord: Integer dispid 155;
    property FirstZone: Integer dispid 153;
    property Fiscal: WordBool readonly dispid 54;
    function Fiscalization: Integer; dispid 24;
    property FontBold: WordBool dispid 241;
    property FontDblHeight: WordBool dispid 245;
    property FontDblWidth: WordBool dispid 248;
    property FontItalic: WordBool dispid 242;
    property FontUnderline: WordBool dispid 243;
    property FontNegative: WordBool dispid 244;
    property Frequency: Integer dispid 190;
    function FullCut: Integer; dispid 138;
    property EntryNum: Integer dispid 401;
    property ErrorPosition: Integer readonly dispid 402;
    function FindIPDevices(Timeour: Integer): WideString; dispid 403;
    function EndItem: Integer; dispid 313;
    function EndComplexAttribute: Integer; dispid 320;
    property EndCheckNumber: Integer dispid 321;
    property ENVDMode: WordBool dispid 404;
    function CheckStatusSKNO: Integer; dispid 408;
    property FFDVer: Integer readonly dispid 324;
    property CacheReport: WordBool dispid 110;
    function CancelCheck: Integer; dispid 89;
    property Caption: WideString dispid 36;
    property CaptionPurpose: Integer dispid 68;
    property CaptionTable: Integer dispid 303;
    function CardGetType: Integer; dispid 291;
    function CardRead: Integer; dispid 289;
    function CardWrite: Integer; dispid 290;
    function CashIncome: Integer; dispid 78;
    function CashOutcome: Integer; dispid 79;
    property Change: Double readonly dispid 206;
    property CharLineLength: Integer readonly dispid 209;
    property CheckNumber: Integer dispid 57;
    property CheckPaperPresent: WordBool readonly dispid 174;
    property CheckState: Integer readonly dispid 59;
    property CheckType: Integer dispid 201;
    property ClearJrn: Integer dispid 296;
    function ClearOutput: Integer; dispid 163;
    function ClearPictureArray: Integer; dispid 212;
    function CloseCheck: Integer; dispid 81;
    property ComPortsDescriptions: WideString readonly dispid 426;
    property ControlPaperPresent: WordBool readonly dispid 175;
    property Count: Integer dispid 193;
    property CounterType: Integer dispid 307;
    property CoverOpened: WordBool readonly dispid 176;
    property CurrentDeviceName: WideString dispid 8;
    property CurrentDeviceNumber: Integer dispid 7;
    property CurrentDeviceIndex: Integer dispid 6;
    property Day: Integer dispid 37;
    property DefaultPassword: WideString dispid 295;
    function DeleteDevice: Integer; dispid 22;
    function DeleteLastPicture: Integer; dispid 237;
    function Delivery: Integer; dispid 82;
    function DemoPrint: Integer; dispid 239;
    property Department: Integer dispid 48;
    property Destination: Integer dispid 107;
    property DeviceEnabled: WordBool dispid 62;
    property DeviceCount: Integer readonly dispid 9;
    property DeviceDescription: WideString readonly dispid 11;
    property DeviceSettings: WideString dispid 286;
    property DevicesSettings: WideString dispid 284;
    property DisableParamWindow: WordBool dispid 14;
    property DisablePasswordSettings: WordBool dispid 167;
    property DiscountType: Integer dispid 293;
    property DiscountTypeNumber: Integer dispid 234;
    property DiscountValue: Double dispid 294;
    function DisplayDraw: Integer; dispid 73;
    function DisplayWrite: Integer; dispid 72;
    property DocNumber: Integer dispid 297;
    property DrawerOffTimeout: Integer dispid 179;
    property DrawerOnQuantity: Integer dispid 180;
    property DrawerOnTimeout: Integer dispid 178;
    property DrawerOpened: WordBool readonly dispid 162;
    property Duration: Integer dispid 191;
    property DialogFontName: WideString dispid 304;
    property DialogFontSize: Integer dispid 305;
    property DialogFontStyle: Integer dispid 306;
    function DeviceEnableEx: Integer; dispid 817;
    property DeviceEnableTimeout: Integer dispid 818;
    property CorrectionLevel: Integer dispid 65467;
    function PrintLastCheckCopy: Integer; dispid 65468;
    property BarcodeOptions: Integer dispid 1048320;
    property BarcodeRows: Integer dispid 1048321;
    property BarcodeColumns: Integer dispid 1048322;
    property BarcodeProportions: Integer dispid 1048323;
    property BarcodePixelProportions: Integer dispid 1048324;
    function OpenDirectory: Integer; dispid 1048325;
    property Directory: WideString dispid 1048326;
    property FileSize: Integer dispid 1048328;
    function ReadDirectory: Integer; dispid 1048329;
    property OpenFileParams: Byte dispid 1048336;
    function OpenFile: Integer; dispid 1048330;
    function CloseFile: Integer; dispid 1048331;
    function CloseDirectory: Integer; dispid 1048332;
    property FileOffset: Integer dispid 1048333;
    property FileReadLength: Integer dispid 1048334;
    function ReadFile: Integer; dispid 1048335;
    function DeleteFileFromSD: Integer; dispid 1048337;
    function WriteFileToSD: Integer; dispid 1048338;
    function PowerOff: Integer; dispid 1048339;
    property DrawerInvertState: WordBool dispid 2555;
    property BarcodeOptionsEx: Integer dispid 2556;
    property PortType: Integer dispid 2557;
    property PortFlags: Integer dispid 2558;
    property PortSubcommand: Integer dispid 2559;
    function PortPowerOn: Integer; dispid 2560;
    function PortPowerOff: Integer; dispid 2561;
    function PortSendData: Integer; dispid 2562;
    function PortSyncGetData: Integer; dispid 2563;
    function PortConfig: Integer; dispid 2564;
    function PortStatus: Integer; dispid 2565;
    function PrintBarcodeByNumber: Integer; dispid 2566;
    function ClearBarcodeArray: Integer; dispid 2567;
    function GetBarcodeArrayState: Integer; dispid 2568;
    function ReadBarcode: Integer; dispid 2569;
    function DeleteBarcode: Integer; dispid 2570;
    function EJState: Integer; dispid 2571;
    function WriteAttribute: Integer; dispid 2572;
    property AttrName: WideString dispid 2573;
    property AttrValue: WideString dispid 2574;
    property AttrNumber: Integer dispid 2575;
    function ReadAttribute: Integer; dispid 2576;
    property ShowModels: Integer dispid 2577;
    property OFDLastError: Integer dispid 2578;
    function ReadFNStatus: Integer; dispid 2579;
    property CheckMode: Integer dispid 2580;
    property AttrPrint: Integer dispid 2581;
    function ReadFNParam: Integer; dispid 2582;
    property FNFiscal: WordBool readonly dispid 2583;
    property FiscalSign: WideString readonly dispid 2585;
    property OperatorMessage: WordBool readonly dispid 2592;
    property LastCheckType: Integer readonly dispid 2593;
    property SessionExceedLimit: WordBool readonly dispid 2594;
    property FNFlags: Integer readonly dispid 2595;
    property Is54FZ: WordBool readonly dispid 2596;
    function Stub: Integer; dispid 2597;
    property CommandCode: Integer readonly dispid 314;
    function AboutBox: Integer; dispid 309;
    property AccessPassword: WideString dispid 165;
    property ACKTimeout: Integer dispid 186;
    function AddDevice: Integer; dispid 21;
    function AddField: Integer; dispid 240;
    function AddPictureFromFile: Integer; dispid 226;
    function AdvancedDisplayWrite: Integer; dispid 182;
    property AdvancedMode: Integer readonly dispid 109;
    function AdvancedOpenDrawer: Integer; dispid 177;
    property AdvancedRegistration: WordBool dispid 256;
    property Alignment: Integer dispid 250;
    function Annulate: Integer; dispid 88;
    property ApplicationHandle: Integer dispid 10;
    property AutoSize: WordBool dispid 251;
    property BadParam: Integer readonly dispid 33;
    property BadParamDescription: WideString readonly dispid 34;
    property Barcode: WideString dispid 12;
    property BarcodeControlCode: WordBool dispid 203;
    property BarcodeTextFont: Integer dispid 301;
    property BarcodeType: Integer dispid 215;
    property BatteryLow: WordBool readonly dispid 275;
    property BaudRate: Integer dispid 67;
    function Beep: Integer; dispid 100;
    function BeginAdd: Integer; dispid 149;
    function BeginDocument: Integer; dispid 246;
    function BeginFiscDocument: Integer; dispid 261;
    function BeginReport: Integer; dispid 112;
    property BufferingMode: WordBool dispid 281;
    function Buy: Integer; dispid 272;
    function BuyAnnulate: Integer; dispid 277;
    function BuyReturn: Integer; dispid 273;
    function BeginItem: Integer; dispid 312;
    function BeginComplexAttribute: Integer; dispid 315;
    property BarcodeVer: Integer dispid 323;
  end;

// *********************************************************************//
// The Class CoATOL_Fptr provides a Create and CreateRemote method to          
// create instances of the default interface IATOL_Fptr exposed by              
// the CoClass ATOL_Fptr. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoATOL_Fptr = class
    class function Create: IATOL_Fptr;
    class function CreateRemote(const MachineName: string): IATOL_Fptr;
  end;

  TATOL_FptrDirectIOEvent = procedure(ASender: TObject; EventNumber: Integer; var pData: Integer; 
                                                        var pString: WideString) of object;
  TATOL_FptrErrorEvent = procedure(ASender: TObject; ResultCode: Integer; 
                                                     ResultCodeExtended: Integer; 
                                                     ErrorLocus: Integer; 
                                                     var pErrorResponse: Integer) of object;
  TATOL_FptrOutputCompleteEvent = procedure(ASender: TObject; OutputID: Integer) of object;
  TATOL_FptrStatusUpdateEvent = procedure(ASender: TObject; Data: Integer) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TATOL_Fptr
// Help String      : ATOL_Fptr Object
// Default Interface: IATOL_Fptr
// Def. Intf. DISP? : No
// Event   Interface: IATOL_OPOSEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TATOL_FptrProperties= class;
{$ENDIF}
  TATOL_Fptr = class(TOleServer)
  private
    FOnDirectIOEvent: TATOL_FptrDirectIOEvent;
    FOnErrorEvent: TATOL_FptrErrorEvent;
    FOnOutputCompleteEvent: TATOL_FptrOutputCompleteEvent;
    FOnStatusUpdateEvent: TATOL_FptrStatusUpdateEvent;
    FIntf: IATOL_Fptr;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TATOL_FptrProperties;
    function GetServerProperties: TATOL_FptrProperties;
{$ENDIF}
    function GetDefaultInterface: IATOL_Fptr;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IATOL_Fptr);
    procedure Disconnect; override;
    function Claim(Timeout: Integer): Integer;
    function UpdateFirmware(const FirmwareFileName: WideString): Integer;
    function CompareFirmwareVersion(const FirmwareFileName: WideString; out Result_: Integer): Integer;
    function UpdateStatistics(const StatisticsBuffer: WideString): Integer;
    function RetrieveStatistics(var StatisticsBuffer: WideString): Integer;
    function ResetStatistics(const StatisticsBuffer: WideString): Integer;
    function CloseService: Integer;
    function ClaimDevice(Timeout: Integer): Integer;
    function ReleaseDevice: Integer;
    function CheckHealth(Level: Integer): Integer;
    function OpenService(const DeviceClass: WideString; const DeviceName: WideString; 
                         const pDispatch: IDispatch): Integer;
    function GetPropertyNumber(PropIndex: Integer): Integer;
    procedure SetPropertyNumber(PropIndex: Integer; Number: Integer);
    function GetPropertyString(PropIndex: Integer): WideString;
    procedure SetPropertyString(PropIndex: Integer; const String_: WideString);
    function ClearOutput: Integer;
    function DirectIO(Command: Integer; var pData: Integer; var pString: WideString): Integer;
    function ClearInput: Integer;
    function COFreezeEvents(Freeze: Integer): Integer;
    function ClearInputProperties: Integer;
    function BeginFiscalDocument(DocumentAmount: Integer): Integer;
    function BeginFiscalReceipt(PrintHeader: WordBool): Integer;
    function BeginFixedOutput(Station: Integer; DocumentType: Integer): Integer;
    function BeginInsertion(Timeout: Integer): Integer;
    function BeginItemList(VatID: Integer): Integer;
    function BeginNonFiscal: Integer;
    function BeginRemoval(Timeout: Integer): Integer;
    function BeginTraining: Integer;
    function ClearError: Integer;
    function EndFiscalDocument: Integer;
    function EndFiscalReceipt(PrintHeader: WordBool): Integer;
    function EndFixedOutput: Integer;
    function EndInsertion: Integer;
    function EndItemList: Integer;
    function EndNonFiscal: Integer;
    function EndRemoval: Integer;
    function EndTraining: Integer;
    function GetData(DataItem: Integer; var OptArgs: Integer; var Data: WideString): Integer;
    function GetDate(var Date: WideString): Integer;
    function GetTotalizer(VatID: Integer; OptArgs: Integer; out Data: WideString): Integer;
    function GetVatEntry(VatID: Integer; OptArgs: Integer; out VatRate: Integer): Integer;
    function PrintDuplicateReceipt: Integer;
    function PrintFiscalDocumentLine(const DocumentLine: WideString): Integer;
    function PrintFixedOutput(DocumentType: Integer; LineNumber: Integer; const Data: WideString): Integer;
    function PrintNormal(Station: Integer; const Data: WideString): Integer;
    function PrintPeriodicTotalsReport(const Date1: WideString; const Date2: WideString): Integer;
    function PrintPowerLossReport: Integer;
    function PrintRecItem(const Description: WideString; Price: Currency; Quantity: Integer; 
                          VatInfo: Integer; UnitPrice: Currency; const UnitName: WideString): Integer;
    function PrintRecItemAdjustment(AdjustmentType: Integer; const Description: WideString; 
                                    Amount: Currency; VatInfo: Integer): Integer;
    function PrintRecMessage(const Message: WideString): Integer;
    function PrintRecNotPaid(const Description: WideString; Amount: Currency): Integer;
    function PrintRecRefund(const Description: WideString; Amount: Currency; VatInfo: Integer): Integer;
    function PrintRecSubtotal(Amount: Currency): Integer;
    function PrintRecSubtotalAdjustment(AdjustmentType: Integer; const Description: WideString; 
                                        Amount: Currency): Integer;
    function PrintRecTotal(Total: Currency; Payment: Currency; const Description: WideString): Integer;
    function PrintRecVoid(const Description: WideString): Integer;
    function PrintRecVoidItem(const Description: WideString; Amount: Currency; Quantity: Integer; 
                              AdjustmentType: Integer; Adjustment: Currency; VatInfo: Integer): Integer;
    function PrintReport(ReportType: Integer; const StartNum: WideString; const EndNum: WideString): Integer;
    function PrintXReport: Integer;
    function PrintZReport: Integer;
    function ResetPrinter: Integer;
    function SetDate(const Date: WideString): Integer;
    function SetHeaderLine(LineNumber: Integer; const Text: WideString; DoubleWidth: WordBool): Integer;
    function SetPOSID(const POSID: WideString; const CashierID: WideString): Integer;
    function SetStoreFiscalID(const ID: WideString): Integer;
    function SetTrailerLine(LineNumber: Integer; const Text: WideString; DoubleWidth: WordBool): Integer;
    function SetVatTable: Integer;
    function SetVatValue(VatID: Integer; const VatValue: WideString): Integer;
    function VerifyItem(const ItemName: WideString; VatID: Integer): Integer;
    function PrintRecCash(Amount: Currency): Integer;
    function PrintRecItemFuel(const Description: WideString; Price: Currency; Quantity: Integer; 
                              VatInfo: Integer; UnitPrice: Currency; const UnitName: WideString; 
                              SpecialTax: Currency; const SpecialTaxName: WideString): Integer;
    function PrintRecItemFuelVoid(const Description: WideString; Price: Currency; VatInfo: Integer; 
                                  SpecialTax: Currency): Integer;
    function PrintRecPackageAdjustment(AdjustmentType: Integer; const Description: WideString; 
                                       const VatAdjustment: WideString): Integer;
    function PrintRecPackageAdjustVoid(AdjustmentType: Integer; const VatAdjustment: WideString): Integer;
    function PrintRecRefundVoid(const Description: WideString; Amount: Currency; VatInfo: Integer): Integer;
    function PrintRecSubtotalAdjustVoid(AdjustmentType: Integer; Amount: Currency): Integer;
    function PrintRecTaxID(const TaxId: WideString): Integer;
    function SetCurrency(NewCurrency: Integer): Integer;
    function PrintRecItemVoid(const Description: WideString; Price: Currency; Quantity: Integer; 
                              VatInfo: Integer; UnitPrice: Currency; const UnitName: WideString): Integer;
    function PrintRecItemAdjustmentVoid(AdjustmentType: Integer; const Description: WideString; 
                                        Amount: Currency; VatInfo: Integer): Integer;
    function PrintRecItemRefund(const Description: WideString; Amount: Currency; Quantity: Integer; 
                                VatInfo: Integer; unitAmount: Currency; const UnitName: WideString): Integer;
    function PrintRecItemRefundVoid(const Description: WideString; Amount: Currency; 
                                    Quantity: Integer; VatInfo: Integer; unitAmount: Currency; 
                                    const UnitName: WideString): Integer;
    property DefaultInterface: IATOL_Fptr read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TATOL_FptrProperties read GetServerProperties;
{$ENDIF}
    property OnDirectIOEvent: TATOL_FptrDirectIOEvent read FOnDirectIOEvent write FOnDirectIOEvent;
    property OnErrorEvent: TATOL_FptrErrorEvent read FOnErrorEvent write FOnErrorEvent;
    property OnOutputCompleteEvent: TATOL_FptrOutputCompleteEvent read FOnOutputCompleteEvent write FOnOutputCompleteEvent;
    property OnStatusUpdateEvent: TATOL_FptrStatusUpdateEvent read FOnStatusUpdateEvent write FOnStatusUpdateEvent;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TATOL_Fptr
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TATOL_FptrProperties = class(TPersistent)
  private
    FServer:    TATOL_Fptr;
    function    GetDefaultInterface: IATOL_Fptr;
    constructor Create(AServer: TATOL_Fptr);
  protected
  public
    property DefaultInterface: IATOL_Fptr read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoATOL_Cash provides a Create and CreateRemote method to          
// create instances of the default interface IATOL_Cash exposed by              
// the CoClass ATOL_Cash. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoATOL_Cash = class
    class function Create: IATOL_Cash;
    class function CreateRemote(const MachineName: string): IATOL_Cash;
  end;

  TATOL_CashDirectIOEvent = procedure(ASender: TObject; EventNumber: Integer; var pData: Integer; 
                                                        var pString: WideString) of object;
  TATOL_CashErrorEvent = procedure(ASender: TObject; ResultCode: Integer; 
                                                     ResultCodeExtended: Integer; 
                                                     ErrorLocus: Integer; 
                                                     var pErrorResponse: Integer) of object;
  TATOL_CashOutputCompleteEvent = procedure(ASender: TObject; OutputID: Integer) of object;
  TATOL_CashStatusUpdateEvent = procedure(ASender: TObject; Data: Integer) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TATOL_Cash
// Help String      : ATOL_Cash Object
// Default Interface: IATOL_Cash
// Def. Intf. DISP? : No
// Event   Interface: IATOL_OPOSEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TATOL_CashProperties= class;
{$ENDIF}
  TATOL_Cash = class(TOleServer)
  private
    FOnDirectIOEvent: TATOL_CashDirectIOEvent;
    FOnErrorEvent: TATOL_CashErrorEvent;
    FOnOutputCompleteEvent: TATOL_CashOutputCompleteEvent;
    FOnStatusUpdateEvent: TATOL_CashStatusUpdateEvent;
    FIntf: IATOL_Cash;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TATOL_CashProperties;
    function GetServerProperties: TATOL_CashProperties;
{$ENDIF}
    function GetDefaultInterface: IATOL_Cash;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IATOL_Cash);
    procedure Disconnect; override;
    function Claim(Timeout: Integer): Integer;
    function UpdateFirmware(const FirmwareFileName: WideString): Integer;
    function CompareFirmwareVersion(const FirmwareFileName: WideString; out Result_: Integer): Integer;
    function UpdateStatistics(const StatisticsBuffer: WideString): Integer;
    function RetrieveStatistics(var StatisticsBuffer: WideString): Integer;
    function ResetStatistics(const StatisticsBuffer: WideString): Integer;
    function CloseService: Integer;
    function ClaimDevice(Timeout: Integer): Integer;
    function ReleaseDevice: Integer;
    function CheckHealth(Level: Integer): Integer;
    function OpenService(const DeviceClass: WideString; const DeviceName: WideString; 
                         const pDispatch: IDispatch): Integer;
    function GetPropertyNumber(PropIndex: Integer): Integer;
    procedure SetPropertyNumber(PropIndex: Integer; Number: Integer);
    function GetPropertyString(PropIndex: Integer): WideString;
    procedure SetPropertyString(PropIndex: Integer; const String_: WideString);
    function ClearOutput: Integer;
    function DirectIO(Command: Integer; var pData: Integer; var pString: WideString): Integer;
    function ClearInput: Integer;
    function COFreezeEvents(Freeze: Integer): Integer;
    function ClearInputProperties: Integer;
    function OpenDrawer: Integer;
    function WaitForDrawerClose(BeepTimeout: Integer; BeepFrequency: Integer; 
                                BeepDuration: Integer; BeepDelay: Integer): Integer;
    property DefaultInterface: IATOL_Cash read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TATOL_CashProperties read GetServerProperties;
{$ENDIF}
    property OnDirectIOEvent: TATOL_CashDirectIOEvent read FOnDirectIOEvent write FOnDirectIOEvent;
    property OnErrorEvent: TATOL_CashErrorEvent read FOnErrorEvent write FOnErrorEvent;
    property OnOutputCompleteEvent: TATOL_CashOutputCompleteEvent read FOnOutputCompleteEvent write FOnOutputCompleteEvent;
    property OnStatusUpdateEvent: TATOL_CashStatusUpdateEvent read FOnStatusUpdateEvent write FOnStatusUpdateEvent;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TATOL_Cash
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TATOL_CashProperties = class(TPersistent)
  private
    FServer:    TATOL_Cash;
    function    GetDefaultInterface: IATOL_Cash;
    constructor Create(AServer: TATOL_Cash);
  protected
  public
    property DefaultInterface: IATOL_Cash read GetDefaultInterface;
  published
  end;
{$ENDIF}



// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TATOL_KKM_1C
// Help String      : ATOL_KKM_1C_ Object
// Default Interface: IATOL_KKM_1C
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TATOL_KKM_1C = class(TOleControl)
  private
    FIntf: IATOL_KKM_1C;
    function  GetControlInterface: IATOL_KKM_1C;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    function GetVersion: WideString;
    function GetLastError(out ErrorDescription: WideString): Integer;
    function Open(const ValuesArray: IDispatch; out DeviceID: WideString): WordBool;
    function Close(const DeviceID: WideString): WordBool;
    function PrintXReport(const DeviceID: WideString): WordBool;
    function PrintZReport(const DeviceID: WideString): WordBool;
    function CashInOutcome(const DeviceID: WideString; Amount: Double): WordBool;
    function OpenCheck(const DeviceID: WideString; IsFiscalCheck: WordBool; 
                       IsReturnCheck: WordBool; CancelOpenedCheck: WordBool; 
                       out CheckNumber: Integer; out SessionNumber: Integer): WordBool;
    function PrintFiscalString(const DeviceID: WideString; const Name: WideString; 
                               Quantity: Double; Price: Double; Amount: Double; 
                               Department: Integer; Tax: Double): WordBool;
    function CloseCheck(const DeviceID: WideString; Cash: Double; Cashless: Double): WordBool;
    function CancelCheck(const DeviceID: WideString): WordBool;
    function PrintNonFiscalString(const DeviceID: WideString; const TextString: WideString): WordBool;
    function DeviceTest(const ValuesArray: IDispatch; out AdditionalDescription: WideString): WordBool;
    function OpenCashDrawer(const DeviceID: WideString): WordBool;
    property  ControlInterface: IATOL_KKM_1C read GetControlInterface;
    property  DefaultInterface: IATOL_KKM_1C read GetControlInterface;
  published
    property Anchors;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TFprnM45
// Help String      : ����: ������� ��� v.8 (����������� � v.6)
// Default Interface: IFprnM45
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TFprnM45 = class(TOleControl)
  private
    FIntf: IFprnM45;
    function  GetControlInterface: IFprnM45;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    function AboutBox: Integer;
    function AddDevice: Integer;
    function AddField: Integer;
    function AddPictureFromFile: Integer;
    function AdvancedDisplayWrite: Integer;
    function AdvancedOpenDrawer: Integer;
    function Annulate: Integer;
    function Beep: Integer;
    function BeginAdd: Integer;
    function BeginDocument: Integer;
    function BeginFiscDocument: Integer;
    function BeginReport: Integer;
    function Buy: Integer;
    function BuyAnnulate: Integer;
    function BuyReturn: Integer;
    function BeginItem: Integer;
    function BeginComplexAttribute: Integer;
    function CancelCheck: Integer;
    function CardGetType: Integer;
    function CardRead: Integer;
    function CardWrite: Integer;
    function CashIncome: Integer;
    function CashOutcome: Integer;
    function ClearOutput: Integer;
    function ClearPictureArray: Integer;
    function CloseCheck: Integer;
    function DeleteDevice: Integer;
    function DeleteLastPicture: Integer;
    function Delivery: Integer;
    function DemoPrint: Integer;
    function DisplayDraw: Integer;
    function DisplayWrite: Integer;
    function DeviceEnableEx: Integer;
    function PrintLastCheckCopy: Integer;
    function OpenDirectory: Integer;
    function ReadDirectory: Integer;
    function OpenFile: Integer;
    function CloseFile: Integer;
    function CloseDirectory: Integer;
    function ReadFile: Integer;
    function DeleteFileFromSD: Integer;
    function WriteFileToSD: Integer;
    function PowerOff: Integer;
    function PortPowerOn: Integer;
    function PortPowerOff: Integer;
    function PortSendData: Integer;
    function PortSyncGetData: Integer;
    function PortConfig: Integer;
    function PortStatus: Integer;
    function PrintBarcodeByNumber: Integer;
    function ClearBarcodeArray: Integer;
    function GetBarcodeArrayState: Integer;
    function ReadBarcode: Integer;
    function DeleteBarcode: Integer;
    function EJState: Integer;
    function WriteAttribute: Integer;
    function ReadAttribute: Integer;
    function ReadFNStatus: Integer;
    function ReadFNParam: Integer;
    function Stub: Integer;
    function EKLZActivate: Integer;
    function EKLZCloseArchive: Integer;
    function EKLZGetStatus: Integer;
    function EnableDeferredZReports: Integer;
    function EndAdd: Integer;
    function EndDocument: Integer;
    function EndFiscDocument: Integer;
    function EndReport: Integer;
    function ExecSystemOperation: Integer;
    function Fiscalization: Integer;
    function FullCut: Integer;
    function FindIPDevices(Timeour: Integer): WideString;
    function EndItem: Integer;
    function EndComplexAttribute: Integer;
    function CheckStatusSKNO: Integer;
    function GetCaption: Integer;
    function GetCurrentMode: Integer;
    function GetDeviceMetrics: Integer;
    function GetLastError: Integer;
    function GetLastSummary: Integer;
    function GetLicense: Integer;
    function GetPassword: Integer;
    function GetRange: Integer;
    function GetRecord: Integer;
    function GetRegister: Integer;
    function GetSettings: Integer;
    function GetStatus: Integer;
    function GetStatusPicture: Integer;
    function GetStatusPictureArray: Integer;
    function GetSumm: Integer;
    function GetSupportedMode: Integer;
    function GetUnitVersion: Integer;
    function GetValue: Integer;
    function InitSettings: Integer;
    function InputRoute: Integer;
    function LoadDevicesSettings: Integer;
    function LockKeyboard: Integer;
    function NewDocument: Integer;
    function OpenCheck: Integer;
    function OpenDrawer: Integer;
    function OpenSession: Integer;
    function PartialCut: Integer;
    function Payment: Integer;
    function PercentsCharge: Integer;
    function PercentsDiscount: Integer;
    function PrintBarcode: Integer;
    function PrintBitMap: Integer;
    function PrintBitMapFromFile: Integer;
    function PrinterWrite: Integer;
    function PrintField: Integer;
    function PrintFooter: Integer;
    function PrintHeader: Integer;
    function PrintPicture: Integer;
    function PrintString: Integer;
    function Registration: Integer;
    function Report: Integer;
    function ResetChargeDiscount: Integer;
    function ResetMode: Integer;
    function ResetSettings: Integer;
    function ResetSummary: Integer;
    function ResetTax: Integer;
    function Return: Integer;
    function RunCommand: Integer;
    function SaveDevicesSettings: Integer;
    function SetCaption: Integer;
    function SetDate: Integer;
    function SetDateTime: Integer;
    function SetLicense: Integer;
    function SetMode: Integer;
    function SetPassword: Integer;
    function SetPointPosition: Integer;
    function SetRecord: Integer;
    function SetSerialNumber: Integer;
    function SetSettings: Integer;
    function SetTime: Integer;
    function SetValue: Integer;
    function ShowProperties: Integer;
    function Sound: Integer;
    function Storno: Integer;
    function StornoPayment: Integer;
    function SubResult: Integer;
    function SummCharge: Integer;
    function SummDiscount: Integer;
    function SummTax: Integer;
    function TestDevice: Integer;
    function UnlockKeyboard: Integer;
    function WriteSMLog(const str: WideString): Integer;
    property  ControlInterface: IFprnM45 read GetControlInterface;
    property  DefaultInterface: IFprnM45 read GetControlInterface;
    property AdvancedMode: Integer index 109 read GetIntegerProp;
    property BadParam: Integer index 33 read GetIntegerProp;
    property BadParamDescription: WideString index 34 read GetWideStringProp;
    property BatteryLow: WordBool index 275 read GetWordBoolProp;
    property Change: Double index 206 read GetDoubleProp;
    property CharLineLength: Integer index 209 read GetIntegerProp;
    property CheckPaperPresent: WordBool index 174 read GetWordBoolProp;
    property CheckState: Integer index 59 read GetIntegerProp;
    property ComPortsDescriptions: WideString index 426 read GetWideStringProp;
    property ControlPaperPresent: WordBool index 175 read GetWordBoolProp;
    property CoverOpened: WordBool index 176 read GetWordBoolProp;
    property DeviceCount: Integer index 9 read GetIntegerProp;
    property DeviceDescription: WideString index 11 read GetWideStringProp;
    property DrawerOpened: WordBool index 162 read GetWordBoolProp;
    property FNFiscal: WordBool index 2583 read GetWordBoolProp;
    property FiscalSign: WideString index 2585 read GetWideStringProp;
    property OperatorMessage: WordBool index 2592 read GetWordBoolProp;
    property LastCheckType: Integer index 2593 read GetIntegerProp;
    property SessionExceedLimit: WordBool index 2594 read GetWordBoolProp;
    property FNFlags: Integer index 2595 read GetIntegerProp;
    property Is54FZ: WordBool index 2596 read GetWordBoolProp;
    property CommandCode: Integer index 314 read GetIntegerProp;
    property ECRError: Integer index 64 read GetIntegerProp;
    property ECRErrorDescription: WideString index 65 read GetWideStringProp;
    property EKLZFlags: Integer index 236 read GetIntegerProp;
    property Fiscal: WordBool index 54 read GetWordBoolProp;
    property ErrorPosition: Integer index 402 read GetIntegerProp;
    property FFDVer: Integer index 324 read GetIntegerProp;
    property InboundStream: WideString index 170 read GetWideStringProp;
    property IsDemo: WordBool index 274 read GetWordBoolProp;
    property IsFree: WordBool index 310 read GetWordBoolProp;
    property JrnCharLineLength: Integer index 257 read GetIntegerProp;
    property JrnPixelLineLength: Integer index 258 read GetIntegerProp;
    property LogicalNumber: Integer index 52 read GetIntegerProp;
    property MaxCaptionLength: Integer index 255 read GetIntegerProp;
    property Model_OLD: Integer index 56 read GetIntegerProp;
    property Operator_: Integer index 51 read GetIntegerProp;
    property OutOfPaper: WordBool index 157 read GetWordBoolProp;
    property PasswordEntered: WordBool index 61 read GetWordBoolProp;
    property PictureState: Integer index 211 read GetIntegerProp;
    property PixelLineLength: Integer index 229 read GetIntegerProp;
    property PrinterConnectionFailed: WordBool index 158 read GetWordBoolProp;
    property PrinterCutMechanismError: WordBool index 287 read GetWordBoolProp;
    property PrinterMechanismError: WordBool index 185 read GetWordBoolProp;
    property PrinterOverheatError: WordBool index 288 read GetWordBoolProp;
    property PrintHeadTemperature: Integer index 406 read GetIntegerProp;
    property Parameters1CUI: WideString index 43972 read GetWideStringProp;
    property ParametersDrv: WideString index 43973 read GetWideStringProp;
    property RcpCharLineLength: Integer index 279 read GetIntegerProp;
    property RcpPixelLineLength: Integer index 280 read GetIntegerProp;
    property Remainder: Double index 205 read GetDoubleProp;
    property ResultCode: Integer index 1 read GetIntegerProp;
    property ResultDescription: WideString index 2 read GetWideStringProp;
    property ROMVersion: WideString index 55 read GetWideStringProp;
    property ServerVersion: WideString index 4 read GetWideStringProp;
    property SessionOpened: WordBool index 161 read GetWordBoolProp;
    property SlipCharLineLength: Integer index 259 read GetIntegerProp;
    property SlipPixelLineLength: Integer index 260 read GetIntegerProp;
    property SlotNumber: Integer index 159 read GetIntegerProp;
    property SystemOperationResult: WideString index 411 read GetWideStringProp;
    property TransactionType: Integer index 114 read GetIntegerProp;
    property UBuild: Integer index 116 read GetIntegerProp;
    property UCodePage: Integer index 121 read GetIntegerProp;
    property UDescription: WideString index 119 read GetWideStringProp;
    property UMajorVersion: Integer index 104 read GetIntegerProp;
    property UMinorVersion: Integer index 115 read GetIntegerProp;
    property UModel: Integer index 118 read GetIntegerProp;
    property UProtocolVersion: Integer index 120 read GetIntegerProp;
    property UType: Integer index 117 read GetIntegerProp;
    property Version: WideString index 3 read GetWideStringProp;
  published
    property Anchors;
    property AccessPassword: WideString index 165 read GetWideStringProp write SetWideStringProp stored False;
    property ACKTimeout: Integer index 186 read GetIntegerProp write SetIntegerProp stored False;
    property AdvancedRegistration: WordBool index 256 read GetWordBoolProp write SetWordBoolProp stored False;
    property Alignment: Integer index 250 read GetIntegerProp write SetIntegerProp stored False;
    property ApplicationHandle: Integer index 10 read GetIntegerProp write SetIntegerProp stored False;
    property AutoSize: WordBool index 251 read GetWordBoolProp write SetWordBoolProp stored False;
    property Barcode: WideString index 12 read GetWideStringProp write SetWideStringProp stored False;
    property BarcodeControlCode: WordBool index 203 read GetWordBoolProp write SetWordBoolProp stored False;
    property BarcodeTextFont: Integer index 301 read GetIntegerProp write SetIntegerProp stored False;
    property BarcodeType: Integer index 215 read GetIntegerProp write SetIntegerProp stored False;
    property BaudRate: Integer index 67 read GetIntegerProp write SetIntegerProp stored False;
    property BufferingMode: WordBool index 281 read GetWordBoolProp write SetWordBoolProp stored False;
    property BarcodeVer: Integer index 323 read GetIntegerProp write SetIntegerProp stored False;
    property CacheReport: WordBool index 110 read GetWordBoolProp write SetWordBoolProp stored False;
    property Caption: WideString index 36 read GetWideStringProp write SetWideStringProp stored False;
    property CaptionPurpose: Integer index 68 read GetIntegerProp write SetIntegerProp stored False;
    property CaptionTable: Integer index 303 read GetIntegerProp write SetIntegerProp stored False;
    property CheckNumber: Integer index 57 read GetIntegerProp write SetIntegerProp stored False;
    property CheckType: Integer index 201 read GetIntegerProp write SetIntegerProp stored False;
    property ClearJrn: Integer index 296 read GetIntegerProp write SetIntegerProp stored False;
    property Count: Integer index 193 read GetIntegerProp write SetIntegerProp stored False;
    property CounterType: Integer index 307 read GetIntegerProp write SetIntegerProp stored False;
    property CurrentDeviceName: WideString index 8 read GetWideStringProp write SetWideStringProp stored False;
    property CurrentDeviceNumber: Integer index 7 read GetIntegerProp write SetIntegerProp stored False;
    property CurrentDeviceIndex: Integer index 6 read GetIntegerProp write SetIntegerProp stored False;
    property Day: Integer index 37 read GetIntegerProp write SetIntegerProp stored False;
    property DefaultPassword: WideString index 295 read GetWideStringProp write SetWideStringProp stored False;
    property Department: Integer index 48 read GetIntegerProp write SetIntegerProp stored False;
    property Destination: Integer index 107 read GetIntegerProp write SetIntegerProp stored False;
    property DeviceEnabled: WordBool index 62 read GetWordBoolProp write SetWordBoolProp stored False;
    property DeviceSettings: WideString index 286 read GetWideStringProp write SetWideStringProp stored False;
    property DevicesSettings: WideString index 284 read GetWideStringProp write SetWideStringProp stored False;
    property DisableParamWindow: WordBool index 14 read GetWordBoolProp write SetWordBoolProp stored False;
    property DisablePasswordSettings: WordBool index 167 read GetWordBoolProp write SetWordBoolProp stored False;
    property DiscountType: Integer index 293 read GetIntegerProp write SetIntegerProp stored False;
    property DiscountTypeNumber: Integer index 234 read GetIntegerProp write SetIntegerProp stored False;
    property DiscountValue: Double index 294 read GetDoubleProp write SetDoubleProp stored False;
    property DocNumber: Integer index 297 read GetIntegerProp write SetIntegerProp stored False;
    property DrawerOffTimeout: Integer index 179 read GetIntegerProp write SetIntegerProp stored False;
    property DrawerOnQuantity: Integer index 180 read GetIntegerProp write SetIntegerProp stored False;
    property DrawerOnTimeout: Integer index 178 read GetIntegerProp write SetIntegerProp stored False;
    property Duration: Integer index 191 read GetIntegerProp write SetIntegerProp stored False;
    property DialogFontName: WideString index 304 read GetWideStringProp write SetWideStringProp stored False;
    property DialogFontSize: Integer index 305 read GetIntegerProp write SetIntegerProp stored False;
    property DialogFontStyle: Integer index 306 read GetIntegerProp write SetIntegerProp stored False;
    property DeviceEnableTimeout: Integer index 818 read GetIntegerProp write SetIntegerProp stored False;
    property CorrectionLevel: Integer index 65467 read GetIntegerProp write SetIntegerProp stored False;
    property BarcodeOptions: Integer index 1048320 read GetIntegerProp write SetIntegerProp stored False;
    property BarcodeRows: Integer index 1048321 read GetIntegerProp write SetIntegerProp stored False;
    property BarcodeColumns: Integer index 1048322 read GetIntegerProp write SetIntegerProp stored False;
    property BarcodeProportions: Integer index 1048323 read GetIntegerProp write SetIntegerProp stored False;
    property BarcodePixelProportions: Integer index 1048324 read GetIntegerProp write SetIntegerProp stored False;
    property Directory: WideString index 1048326 read GetWideStringProp write SetWideStringProp stored False;
    property FileSize: Integer index 1048328 read GetIntegerProp write SetIntegerProp stored False;
    property OpenFileParams: Byte index 1048336 read GetByteProp write SetByteProp stored False;
    property FileOffset: Integer index 1048333 read GetIntegerProp write SetIntegerProp stored False;
    property FileReadLength: Integer index 1048334 read GetIntegerProp write SetIntegerProp stored False;
    property DrawerInvertState: WordBool index 2555 read GetWordBoolProp write SetWordBoolProp stored False;
    property BarcodeOptionsEx: Integer index 2556 read GetIntegerProp write SetIntegerProp stored False;
    property PortType: Integer index 2557 read GetIntegerProp write SetIntegerProp stored False;
    property PortFlags: Integer index 2558 read GetIntegerProp write SetIntegerProp stored False;
    property PortSubcommand: Integer index 2559 read GetIntegerProp write SetIntegerProp stored False;
    property AttrName: WideString index 2573 read GetWideStringProp write SetWideStringProp stored False;
    property AttrValue: WideString index 2574 read GetWideStringProp write SetWideStringProp stored False;
    property AttrNumber: Integer index 2575 read GetIntegerProp write SetIntegerProp stored False;
    property ShowModels: Integer index 2577 read GetIntegerProp write SetIntegerProp stored False;
    property OFDLastError: Integer index 2578 read GetIntegerProp write SetIntegerProp stored False;
    property CheckMode: Integer index 2580 read GetIntegerProp write SetIntegerProp stored False;
    property AttrPrint: Integer index 2581 read GetIntegerProp write SetIntegerProp stored False;
    property EKLZKPKNumber: Integer index 216 read GetIntegerProp write SetIntegerProp stored False;
    property EnableCheckSumm: WordBool index 148 read GetWordBoolProp write SetWordBoolProp stored False;
    property EndDay: Integer index 16 read GetIntegerProp write SetIntegerProp stored False;
    property EndMonth: Integer index 17 read GetIntegerProp write SetIntegerProp stored False;
    property EndSession: Integer index 15 read GetIntegerProp write SetIntegerProp stored False;
    property EndYear: Integer index 18 read GetIntegerProp write SetIntegerProp stored False;
    property ENQTimeout: Integer index 187 read GetIntegerProp write SetIntegerProp stored False;
    property Factor: Integer index 143 read GetIntegerProp write SetIntegerProp stored False;
    property Field: Integer index 130 read GetIntegerProp write SetIntegerProp stored False;
    property FieldType: Integer index 131 read GetIntegerProp write SetIntegerProp stored False;
    property FileName: WideString index 228 read GetWideStringProp write SetWideStringProp stored False;
    property FirstRecord: Integer index 155 read GetIntegerProp write SetIntegerProp stored False;
    property FirstZone: Integer index 153 read GetIntegerProp write SetIntegerProp stored False;
    property FontBold: WordBool index 241 read GetWordBoolProp write SetWordBoolProp stored False;
    property FontDblHeight: WordBool index 245 read GetWordBoolProp write SetWordBoolProp stored False;
    property FontDblWidth: WordBool index 248 read GetWordBoolProp write SetWordBoolProp stored False;
    property FontItalic: WordBool index 242 read GetWordBoolProp write SetWordBoolProp stored False;
    property FontUnderline: WordBool index 243 read GetWordBoolProp write SetWordBoolProp stored False;
    property FontNegative: WordBool index 244 read GetWordBoolProp write SetWordBoolProp stored False;
    property Frequency: Integer index 190 read GetIntegerProp write SetIntegerProp stored False;
    property EntryNum: Integer index 401 read GetIntegerProp write SetIntegerProp stored False;
    property EndCheckNumber: Integer index 321 read GetIntegerProp write SetIntegerProp stored False;
    property ENVDMode: WordBool index 404 read GetWordBoolProp write SetWordBoolProp stored False;
    property Hour: Integer index 40 read GetIntegerProp write SetIntegerProp stored False;
    property HostAddress: WideString index 501 read GetWideStringProp write SetWideStringProp stored False;
    property HideGUI: WordBool index 322 read GetWordBoolProp write SetWordBoolProp stored False;
    property INN: WideString index 23 read GetWideStringProp write SetWideStringProp stored False;
    property JrnBrightness: Integer index 218 read GetIntegerProp write SetIntegerProp stored False;
    property JrnFont: Integer index 217 read GetIntegerProp write SetIntegerProp stored False;
    property JrnFontHeight: Integer index 220 read GetIntegerProp write SetIntegerProp stored False;
    property JrnLineSpacing: Integer index 221 read GetIntegerProp write SetIntegerProp stored False;
    property ItemType: Integer index 317 read GetIntegerProp write SetIntegerProp stored False;
    property LastRecord: Integer index 156 read GetIntegerProp write SetIntegerProp stored False;
    property LastZone: Integer index 154 read GetIntegerProp write SetIntegerProp stored False;
    property LeftMargin: Integer index 214 read GetIntegerProp write SetIntegerProp stored False;
    property License: Integer index 29 read GetIntegerProp write SetIntegerProp stored False;
    property LineNumber: Integer index 183 read GetIntegerProp write SetIntegerProp stored False;
    property LockDevices: WordBool index 13 read GetWordBoolProp write SetWordBoolProp stored False;
    property MachineName: WideString index 5 read GetWideStringProp write SetWideStringProp stored False;
    property MachineNumber: WideString index 19 read GetWideStringProp write SetWideStringProp stored False;
    property Minute: Integer index 41 read GetIntegerProp write SetIntegerProp stored False;
    property Mode: Integer index 35 read GetIntegerProp write SetIntegerProp stored False;
    property Model: Integer index 285 read GetIntegerProp write SetIntegerProp stored False;
    property ModelCheck: WordBool index 134 read GetWordBoolProp write SetWordBoolProp stored False;
    property Month: Integer index 38 read GetIntegerProp write SetIntegerProp stored False;
    property Name: WideString index 45 read GetWideStringProp write SetWideStringProp stored False;
    property NeedResult: Integer index 308 read GetIntegerProp write SetIntegerProp stored False;
    property OperationType: Integer index 276 read GetIntegerProp write SetIntegerProp stored False;
    property OrderCode: WideString index 146 read GetWideStringProp write SetWideStringProp stored False;
    property OrderNumber: Integer index 144 read GetIntegerProp write SetIntegerProp stored False;
    property OutboundStream: WideString index 169 read GetWideStringProp write SetWideStringProp stored False;
    property Password: WideString index 43 read GetWideStringProp write SetWideStringProp stored False;
    property Percents: Double index 49 read GetDoubleProp write SetDoubleProp stored False;
    property PictureNumber: Integer index 210 read GetIntegerProp write SetIntegerProp stored False;
    property PLUNumber: Integer index 31 read GetIntegerProp write SetIntegerProp stored False;
    property PointPosition: Integer index 60 read GetIntegerProp write SetIntegerProp stored False;
    property PortNumber: Integer index 32 read GetIntegerProp write SetIntegerProp stored False;
    property Price: Double index 46 read GetDoubleProp write SetDoubleProp stored False;
    property PrintBarcodeText: Integer index 238 read GetIntegerProp write SetIntegerProp stored False;
    property PrintPurpose: Integer index 181 read GetIntegerProp write SetIntegerProp stored False;
    property Protocol: Integer index 184 read GetIntegerProp write SetIntegerProp stored False;
    property PowerSource: Integer index 43969 read GetIntegerProp write SetIntegerProp stored False;
    property PowerState: Integer index 43970 read GetIntegerProp write SetIntegerProp stored False;
    property PowerValue: Double index 43971 read GetDoubleProp write SetDoubleProp stored False;
    property OperatorName: WideString index 904 read GetWideStringProp write SetWideStringProp stored False;
    property OperatorCode: Integer index 905 read GetIntegerProp write SetIntegerProp stored False;
    property OperatorPassword: WideString index 906 read GetWideStringProp write SetWideStringProp stored False;
    property SessionTaxByDepartment: Double index 43974 read GetDoubleProp write SetDoubleProp stored False;
    property SessionTaxSummByDepartment: Double index 43975 read GetDoubleProp write SetDoubleProp stored False;
    property DiscountSummBySession: Double index 43976 read GetDoubleProp write SetDoubleProp stored False;
    property IncreaseSummBySession: Double index 43977 read GetDoubleProp write SetDoubleProp stored False;
    property PaymentMode: Integer index 316 read GetIntegerProp write SetIntegerProp stored False;
    property ProductId: WideString index 2598 read GetWideStringProp write SetWideStringProp stored False;
    property Quantity: Double index 47 read GetDoubleProp write SetDoubleProp stored False;
    property RateType: Integer index 152 read GetIntegerProp write SetIntegerProp stored False;
    property RecFont: Integer index 195 read GetIntegerProp write SetIntegerProp stored False;
    property RecBrightness: Integer index 196 read GetIntegerProp write SetIntegerProp stored False;
    property RecFontHeight: Integer index 198 read GetIntegerProp write SetIntegerProp stored False;
    property RecLineSpacing: Integer index 199 read GetIntegerProp write SetIntegerProp stored False;
    property RecordType: Integer index 145 read GetIntegerProp write SetIntegerProp stored False;
    property RegisterNumber: Integer index 230 read GetIntegerProp write SetIntegerProp stored False;
    property ReportType: Integer index 63 read GetIntegerProp write SetIntegerProp stored False;
    property RouteCode: Integer index 135 read GetIntegerProp write SetIntegerProp stored False;
    property RouteNumber: Integer index 151 read GetIntegerProp write SetIntegerProp stored False;
    property Row: Integer index 129 read GetIntegerProp write SetIntegerProp stored False;
    property QuantityType: Integer index 405 read GetIntegerProp write SetIntegerProp stored False;
    property Scale: Double index 252 read GetDoubleProp write SetDoubleProp stored False;
    property ScaleVB: Double index 292 read GetDoubleProp write SetDoubleProp stored False;
    property Second: Integer index 42 read GetIntegerProp write SetIntegerProp stored False;
    property SerialNumber: WideString index 53 read GetWideStringProp write SetWideStringProp stored False;
    property Session: Integer index 58 read GetIntegerProp write SetIntegerProp stored False;
    property ShowProgress: WordBool index 111 read GetWordBoolProp write SetWordBoolProp stored False;
    property SlipDocCharLineLength: Integer index 264 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocCopyCountHorz: Integer index 265 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocCopyCountVert: Integer index 266 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocCopyShiftHorz: Integer index 267 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocCopyShiftVert: Integer index 268 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocLeftMargin: Integer index 270 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocOrientation: Integer index 269 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocTopMargin: Integer index 271 read GetIntegerProp write SetIntegerProp stored False;
    property SlipLineSpacing: Integer index 249 read GetIntegerProp write SetIntegerProp stored False;
    property StreamFormat: Integer index 188 read GetIntegerProp write SetIntegerProp stored False;
    property Summ: Double index 44 read GetDoubleProp write SetDoubleProp stored False;
    property SystemOperationType: Integer index 409 read GetIntegerProp write SetIntegerProp stored False;
    property SystemOperationData: WideString index 410 read GetWideStringProp write SetWideStringProp stored False;
    property Table: Integer index 128 read GetIntegerProp write SetIntegerProp stored False;
    property Tax: Integer index 126 read GetIntegerProp write SetIntegerProp stored False;
    property TaxTypeNumber: Integer index 299 read GetIntegerProp write SetIntegerProp stored False;
    property TestMode: WordBool index 125 read GetWordBoolProp write SetWordBoolProp stored False;
    property TextWrap: Integer index 254 read GetIntegerProp write SetIntegerProp stored False;
    property Timeout: Integer index 30 read GetIntegerProp write SetIntegerProp stored False;
    property TypeClose: Integer index 50 read GetIntegerProp write SetIntegerProp stored False;
    property TaxMode: Integer index 318 read GetIntegerProp write SetIntegerProp stored False;
    property TaxSumm: Double index 319 read GetDoubleProp write SetDoubleProp stored False;
    property StoreReceipts: WordBool index 1101 read GetWordBoolProp write SetWordBoolProp stored False;
    property UMode: Integer index 122 read GetIntegerProp write SetIntegerProp stored False;
    property UnitType: Integer index 232 read GetIntegerProp write SetIntegerProp stored False;
    property UseAccessPassword: WordBool index 166 read GetWordBoolProp write SetWordBoolProp stored False;
    property Value: Double index 66 read GetDoubleProp write SetDoubleProp stored False;
    property ValuePurpose: Integer index 69 read GetIntegerProp write SetIntegerProp stored False;
    property WorkShop: Integer index 253 read GetIntegerProp write SetIntegerProp stored False;
    property WriteLogFile: Integer index 263 read GetIntegerProp write SetIntegerProp stored False;
    property Year: Integer index 39 read GetIntegerProp write SetIntegerProp stored False;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TFprnM8
// Help String      : ����: ������� ��� v.8
// Default Interface: IFprnM45
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (34) CanCreate Control
// *********************************************************************//
  TFprnM8 = class(TOleControl)
  private
    FIntf: IFprnM45;
    function  GetControlInterface: IFprnM45;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    function AboutBox: Integer;
    function AddDevice: Integer;
    function AddField: Integer;
    function AddPictureFromFile: Integer;
    function AdvancedDisplayWrite: Integer;
    function AdvancedOpenDrawer: Integer;
    function Annulate: Integer;
    function Beep: Integer;
    function BeginAdd: Integer;
    function BeginDocument: Integer;
    function BeginFiscDocument: Integer;
    function BeginReport: Integer;
    function Buy: Integer;
    function BuyAnnulate: Integer;
    function BuyReturn: Integer;
    function BeginItem: Integer;
    function BeginComplexAttribute: Integer;
    function CancelCheck: Integer;
    function CardGetType: Integer;
    function CardRead: Integer;
    function CardWrite: Integer;
    function CashIncome: Integer;
    function CashOutcome: Integer;
    function ClearOutput: Integer;
    function ClearPictureArray: Integer;
    function CloseCheck: Integer;
    function DeleteDevice: Integer;
    function DeleteLastPicture: Integer;
    function Delivery: Integer;
    function DemoPrint: Integer;
    function DisplayDraw: Integer;
    function DisplayWrite: Integer;
    function DeviceEnableEx: Integer;
    function PrintLastCheckCopy: Integer;
    function OpenDirectory: Integer;
    function ReadDirectory: Integer;
    function OpenFile: Integer;
    function CloseFile: Integer;
    function CloseDirectory: Integer;
    function ReadFile: Integer;
    function DeleteFileFromSD: Integer;
    function WriteFileToSD: Integer;
    function PowerOff: Integer;
    function PortPowerOn: Integer;
    function PortPowerOff: Integer;
    function PortSendData: Integer;
    function PortSyncGetData: Integer;
    function PortConfig: Integer;
    function PortStatus: Integer;
    function PrintBarcodeByNumber: Integer;
    function ClearBarcodeArray: Integer;
    function GetBarcodeArrayState: Integer;
    function ReadBarcode: Integer;
    function DeleteBarcode: Integer;
    function EJState: Integer;
    function WriteAttribute: Integer;
    function ReadAttribute: Integer;
    function ReadFNStatus: Integer;
    function ReadFNParam: Integer;
    function Stub: Integer;
    function EKLZActivate: Integer;
    function EKLZCloseArchive: Integer;
    function EKLZGetStatus: Integer;
    function EnableDeferredZReports: Integer;
    function EndAdd: Integer;
    function EndDocument: Integer;
    function EndFiscDocument: Integer;
    function EndReport: Integer;
    function ExecSystemOperation: Integer;
    function Fiscalization: Integer;
    function FullCut: Integer;
    function FindIPDevices(Timeour: Integer): WideString;
    function EndItem: Integer;
    function EndComplexAttribute: Integer;
    function CheckStatusSKNO: Integer;
    function GetCaption: Integer;
    function GetCurrentMode: Integer;
    function GetDeviceMetrics: Integer;
    function GetLastError: Integer;
    function GetLastSummary: Integer;
    function GetLicense: Integer;
    function GetPassword: Integer;
    function GetRange: Integer;
    function GetRecord: Integer;
    function GetRegister: Integer;
    function GetSettings: Integer;
    function GetStatus: Integer;
    function GetStatusPicture: Integer;
    function GetStatusPictureArray: Integer;
    function GetSumm: Integer;
    function GetSupportedMode: Integer;
    function GetUnitVersion: Integer;
    function GetValue: Integer;
    function InitSettings: Integer;
    function InputRoute: Integer;
    function LoadDevicesSettings: Integer;
    function LockKeyboard: Integer;
    function NewDocument: Integer;
    function OpenCheck: Integer;
    function OpenDrawer: Integer;
    function OpenSession: Integer;
    function PartialCut: Integer;
    function Payment: Integer;
    function PercentsCharge: Integer;
    function PercentsDiscount: Integer;
    function PrintBarcode: Integer;
    function PrintBitMap: Integer;
    function PrintBitMapFromFile: Integer;
    function PrinterWrite: Integer;
    function PrintField: Integer;
    function PrintFooter: Integer;
    function PrintHeader: Integer;
    function PrintPicture: Integer;
    function PrintString: Integer;
    function Registration: Integer;
    function Report: Integer;
    function ResetChargeDiscount: Integer;
    function ResetMode: Integer;
    function ResetSettings: Integer;
    function ResetSummary: Integer;
    function ResetTax: Integer;
    function Return: Integer;
    function RunCommand: Integer;
    function SaveDevicesSettings: Integer;
    function SetCaption: Integer;
    function SetDate: Integer;
    function SetDateTime: Integer;
    function SetLicense: Integer;
    function SetMode: Integer;
    function SetPassword: Integer;
    function SetPointPosition: Integer;
    function SetRecord: Integer;
    function SetSerialNumber: Integer;
    function SetSettings: Integer;
    function SetTime: Integer;
    function SetValue: Integer;
    function ShowProperties: Integer;
    function Sound: Integer;
    function Storno: Integer;
    function StornoPayment: Integer;
    function SubResult: Integer;
    function SummCharge: Integer;
    function SummDiscount: Integer;
    function SummTax: Integer;
    function TestDevice: Integer;
    function UnlockKeyboard: Integer;
    function WriteSMLog(const str: WideString): Integer;
    property  ControlInterface: IFprnM45 read GetControlInterface;
    property  DefaultInterface: IFprnM45 read GetControlInterface;
    property AdvancedMode: Integer index 109 read GetIntegerProp;
    property BadParam: Integer index 33 read GetIntegerProp;
    property BadParamDescription: WideString index 34 read GetWideStringProp;
    property BatteryLow: WordBool index 275 read GetWordBoolProp;
    property Change: Double index 206 read GetDoubleProp;
    property CharLineLength: Integer index 209 read GetIntegerProp;
    property CheckPaperPresent: WordBool index 174 read GetWordBoolProp;
    property CheckState: Integer index 59 read GetIntegerProp;
    property ComPortsDescriptions: WideString index 426 read GetWideStringProp;
    property ControlPaperPresent: WordBool index 175 read GetWordBoolProp;
    property CoverOpened: WordBool index 176 read GetWordBoolProp;
    property DeviceCount: Integer index 9 read GetIntegerProp;
    property DeviceDescription: WideString index 11 read GetWideStringProp;
    property DrawerOpened: WordBool index 162 read GetWordBoolProp;
    property FNFiscal: WordBool index 2583 read GetWordBoolProp;
    property FiscalSign: WideString index 2585 read GetWideStringProp;
    property OperatorMessage: WordBool index 2592 read GetWordBoolProp;
    property LastCheckType: Integer index 2593 read GetIntegerProp;
    property SessionExceedLimit: WordBool index 2594 read GetWordBoolProp;
    property FNFlags: Integer index 2595 read GetIntegerProp;
    property Is54FZ: WordBool index 2596 read GetWordBoolProp;
    property CommandCode: Integer index 314 read GetIntegerProp;
    property ECRError: Integer index 64 read GetIntegerProp;
    property ECRErrorDescription: WideString index 65 read GetWideStringProp;
    property EKLZFlags: Integer index 236 read GetIntegerProp;
    property Fiscal: WordBool index 54 read GetWordBoolProp;
    property ErrorPosition: Integer index 402 read GetIntegerProp;
    property FFDVer: Integer index 324 read GetIntegerProp;
    property InboundStream: WideString index 170 read GetWideStringProp;
    property IsDemo: WordBool index 274 read GetWordBoolProp;
    property IsFree: WordBool index 310 read GetWordBoolProp;
    property JrnCharLineLength: Integer index 257 read GetIntegerProp;
    property JrnPixelLineLength: Integer index 258 read GetIntegerProp;
    property LogicalNumber: Integer index 52 read GetIntegerProp;
    property MaxCaptionLength: Integer index 255 read GetIntegerProp;
    property Model_OLD: Integer index 56 read GetIntegerProp;
    property Operator_: Integer index 51 read GetIntegerProp;
    property OutOfPaper: WordBool index 157 read GetWordBoolProp;
    property PasswordEntered: WordBool index 61 read GetWordBoolProp;
    property PictureState: Integer index 211 read GetIntegerProp;
    property PixelLineLength: Integer index 229 read GetIntegerProp;
    property PrinterConnectionFailed: WordBool index 158 read GetWordBoolProp;
    property PrinterCutMechanismError: WordBool index 287 read GetWordBoolProp;
    property PrinterMechanismError: WordBool index 185 read GetWordBoolProp;
    property PrinterOverheatError: WordBool index 288 read GetWordBoolProp;
    property PrintHeadTemperature: Integer index 406 read GetIntegerProp;
    property Parameters1CUI: WideString index 43972 read GetWideStringProp;
    property ParametersDrv: WideString index 43973 read GetWideStringProp;
    property RcpCharLineLength: Integer index 279 read GetIntegerProp;
    property RcpPixelLineLength: Integer index 280 read GetIntegerProp;
    property Remainder: Double index 205 read GetDoubleProp;
    property ResultCode: Integer index 1 read GetIntegerProp;
    property ResultDescription: WideString index 2 read GetWideStringProp;
    property ROMVersion: WideString index 55 read GetWideStringProp;
    property ServerVersion: WideString index 4 read GetWideStringProp;
    property SessionOpened: WordBool index 161 read GetWordBoolProp;
    property SlipCharLineLength: Integer index 259 read GetIntegerProp;
    property SlipPixelLineLength: Integer index 260 read GetIntegerProp;
    property SlotNumber: Integer index 159 read GetIntegerProp;
    property SystemOperationResult: WideString index 411 read GetWideStringProp;
    property TransactionType: Integer index 114 read GetIntegerProp;
    property UBuild: Integer index 116 read GetIntegerProp;
    property UCodePage: Integer index 121 read GetIntegerProp;
    property UDescription: WideString index 119 read GetWideStringProp;
    property UMajorVersion: Integer index 104 read GetIntegerProp;
    property UMinorVersion: Integer index 115 read GetIntegerProp;
    property UModel: Integer index 118 read GetIntegerProp;
    property UProtocolVersion: Integer index 120 read GetIntegerProp;
    property UType: Integer index 117 read GetIntegerProp;
    property Version: WideString index 3 read GetWideStringProp;
  published
    property Anchors;
    property AccessPassword: WideString index 165 read GetWideStringProp write SetWideStringProp stored False;
    property ACKTimeout: Integer index 186 read GetIntegerProp write SetIntegerProp stored False;
    property AdvancedRegistration: WordBool index 256 read GetWordBoolProp write SetWordBoolProp stored False;
    property Alignment: Integer index 250 read GetIntegerProp write SetIntegerProp stored False;
    property ApplicationHandle: Integer index 10 read GetIntegerProp write SetIntegerProp stored False;
    property AutoSize: WordBool index 251 read GetWordBoolProp write SetWordBoolProp stored False;
    property Barcode: WideString index 12 read GetWideStringProp write SetWideStringProp stored False;
    property BarcodeControlCode: WordBool index 203 read GetWordBoolProp write SetWordBoolProp stored False;
    property BarcodeTextFont: Integer index 301 read GetIntegerProp write SetIntegerProp stored False;
    property BarcodeType: Integer index 215 read GetIntegerProp write SetIntegerProp stored False;
    property BaudRate: Integer index 67 read GetIntegerProp write SetIntegerProp stored False;
    property BufferingMode: WordBool index 281 read GetWordBoolProp write SetWordBoolProp stored False;
    property BarcodeVer: Integer index 323 read GetIntegerProp write SetIntegerProp stored False;
    property CacheReport: WordBool index 110 read GetWordBoolProp write SetWordBoolProp stored False;
    property Caption: WideString index 36 read GetWideStringProp write SetWideStringProp stored False;
    property CaptionPurpose: Integer index 68 read GetIntegerProp write SetIntegerProp stored False;
    property CaptionTable: Integer index 303 read GetIntegerProp write SetIntegerProp stored False;
    property CheckNumber: Integer index 57 read GetIntegerProp write SetIntegerProp stored False;
    property CheckType: Integer index 201 read GetIntegerProp write SetIntegerProp stored False;
    property ClearJrn: Integer index 296 read GetIntegerProp write SetIntegerProp stored False;
    property Count: Integer index 193 read GetIntegerProp write SetIntegerProp stored False;
    property CounterType: Integer index 307 read GetIntegerProp write SetIntegerProp stored False;
    property CurrentDeviceName: WideString index 8 read GetWideStringProp write SetWideStringProp stored False;
    property CurrentDeviceNumber: Integer index 7 read GetIntegerProp write SetIntegerProp stored False;
    property CurrentDeviceIndex: Integer index 6 read GetIntegerProp write SetIntegerProp stored False;
    property Day: Integer index 37 read GetIntegerProp write SetIntegerProp stored False;
    property DefaultPassword: WideString index 295 read GetWideStringProp write SetWideStringProp stored False;
    property Department: Integer index 48 read GetIntegerProp write SetIntegerProp stored False;
    property Destination: Integer index 107 read GetIntegerProp write SetIntegerProp stored False;
    property DeviceEnabled: WordBool index 62 read GetWordBoolProp write SetWordBoolProp stored False;
    property DeviceSettings: WideString index 286 read GetWideStringProp write SetWideStringProp stored False;
    property DevicesSettings: WideString index 284 read GetWideStringProp write SetWideStringProp stored False;
    property DisableParamWindow: WordBool index 14 read GetWordBoolProp write SetWordBoolProp stored False;
    property DisablePasswordSettings: WordBool index 167 read GetWordBoolProp write SetWordBoolProp stored False;
    property DiscountType: Integer index 293 read GetIntegerProp write SetIntegerProp stored False;
    property DiscountTypeNumber: Integer index 234 read GetIntegerProp write SetIntegerProp stored False;
    property DiscountValue: Double index 294 read GetDoubleProp write SetDoubleProp stored False;
    property DocNumber: Integer index 297 read GetIntegerProp write SetIntegerProp stored False;
    property DrawerOffTimeout: Integer index 179 read GetIntegerProp write SetIntegerProp stored False;
    property DrawerOnQuantity: Integer index 180 read GetIntegerProp write SetIntegerProp stored False;
    property DrawerOnTimeout: Integer index 178 read GetIntegerProp write SetIntegerProp stored False;
    property Duration: Integer index 191 read GetIntegerProp write SetIntegerProp stored False;
    property DialogFontName: WideString index 304 read GetWideStringProp write SetWideStringProp stored False;
    property DialogFontSize: Integer index 305 read GetIntegerProp write SetIntegerProp stored False;
    property DialogFontStyle: Integer index 306 read GetIntegerProp write SetIntegerProp stored False;
    property DeviceEnableTimeout: Integer index 818 read GetIntegerProp write SetIntegerProp stored False;
    property CorrectionLevel: Integer index 65467 read GetIntegerProp write SetIntegerProp stored False;
    property BarcodeOptions: Integer index 1048320 read GetIntegerProp write SetIntegerProp stored False;
    property BarcodeRows: Integer index 1048321 read GetIntegerProp write SetIntegerProp stored False;
    property BarcodeColumns: Integer index 1048322 read GetIntegerProp write SetIntegerProp stored False;
    property BarcodeProportions: Integer index 1048323 read GetIntegerProp write SetIntegerProp stored False;
    property BarcodePixelProportions: Integer index 1048324 read GetIntegerProp write SetIntegerProp stored False;
    property Directory: WideString index 1048326 read GetWideStringProp write SetWideStringProp stored False;
    property FileSize: Integer index 1048328 read GetIntegerProp write SetIntegerProp stored False;
    property OpenFileParams: Byte index 1048336 read GetByteProp write SetByteProp stored False;
    property FileOffset: Integer index 1048333 read GetIntegerProp write SetIntegerProp stored False;
    property FileReadLength: Integer index 1048334 read GetIntegerProp write SetIntegerProp stored False;
    property DrawerInvertState: WordBool index 2555 read GetWordBoolProp write SetWordBoolProp stored False;
    property BarcodeOptionsEx: Integer index 2556 read GetIntegerProp write SetIntegerProp stored False;
    property PortType: Integer index 2557 read GetIntegerProp write SetIntegerProp stored False;
    property PortFlags: Integer index 2558 read GetIntegerProp write SetIntegerProp stored False;
    property PortSubcommand: Integer index 2559 read GetIntegerProp write SetIntegerProp stored False;
    property AttrName: WideString index 2573 read GetWideStringProp write SetWideStringProp stored False;
    property AttrValue: WideString index 2574 read GetWideStringProp write SetWideStringProp stored False;
    property AttrNumber: Integer index 2575 read GetIntegerProp write SetIntegerProp stored False;
    property ShowModels: Integer index 2577 read GetIntegerProp write SetIntegerProp stored False;
    property OFDLastError: Integer index 2578 read GetIntegerProp write SetIntegerProp stored False;
    property CheckMode: Integer index 2580 read GetIntegerProp write SetIntegerProp stored False;
    property AttrPrint: Integer index 2581 read GetIntegerProp write SetIntegerProp stored False;
    property EKLZKPKNumber: Integer index 216 read GetIntegerProp write SetIntegerProp stored False;
    property EnableCheckSumm: WordBool index 148 read GetWordBoolProp write SetWordBoolProp stored False;
    property EndDay: Integer index 16 read GetIntegerProp write SetIntegerProp stored False;
    property EndMonth: Integer index 17 read GetIntegerProp write SetIntegerProp stored False;
    property EndSession: Integer index 15 read GetIntegerProp write SetIntegerProp stored False;
    property EndYear: Integer index 18 read GetIntegerProp write SetIntegerProp stored False;
    property ENQTimeout: Integer index 187 read GetIntegerProp write SetIntegerProp stored False;
    property Factor: Integer index 143 read GetIntegerProp write SetIntegerProp stored False;
    property Field: Integer index 130 read GetIntegerProp write SetIntegerProp stored False;
    property FieldType: Integer index 131 read GetIntegerProp write SetIntegerProp stored False;
    property FileName: WideString index 228 read GetWideStringProp write SetWideStringProp stored False;
    property FirstRecord: Integer index 155 read GetIntegerProp write SetIntegerProp stored False;
    property FirstZone: Integer index 153 read GetIntegerProp write SetIntegerProp stored False;
    property FontBold: WordBool index 241 read GetWordBoolProp write SetWordBoolProp stored False;
    property FontDblHeight: WordBool index 245 read GetWordBoolProp write SetWordBoolProp stored False;
    property FontDblWidth: WordBool index 248 read GetWordBoolProp write SetWordBoolProp stored False;
    property FontItalic: WordBool index 242 read GetWordBoolProp write SetWordBoolProp stored False;
    property FontUnderline: WordBool index 243 read GetWordBoolProp write SetWordBoolProp stored False;
    property FontNegative: WordBool index 244 read GetWordBoolProp write SetWordBoolProp stored False;
    property Frequency: Integer index 190 read GetIntegerProp write SetIntegerProp stored False;
    property EntryNum: Integer index 401 read GetIntegerProp write SetIntegerProp stored False;
    property EndCheckNumber: Integer index 321 read GetIntegerProp write SetIntegerProp stored False;
    property ENVDMode: WordBool index 404 read GetWordBoolProp write SetWordBoolProp stored False;
    property Hour: Integer index 40 read GetIntegerProp write SetIntegerProp stored False;
    property HostAddress: WideString index 501 read GetWideStringProp write SetWideStringProp stored False;
    property HideGUI: WordBool index 322 read GetWordBoolProp write SetWordBoolProp stored False;
    property INN: WideString index 23 read GetWideStringProp write SetWideStringProp stored False;
    property JrnBrightness: Integer index 218 read GetIntegerProp write SetIntegerProp stored False;
    property JrnFont: Integer index 217 read GetIntegerProp write SetIntegerProp stored False;
    property JrnFontHeight: Integer index 220 read GetIntegerProp write SetIntegerProp stored False;
    property JrnLineSpacing: Integer index 221 read GetIntegerProp write SetIntegerProp stored False;
    property ItemType: Integer index 317 read GetIntegerProp write SetIntegerProp stored False;
    property LastRecord: Integer index 156 read GetIntegerProp write SetIntegerProp stored False;
    property LastZone: Integer index 154 read GetIntegerProp write SetIntegerProp stored False;
    property LeftMargin: Integer index 214 read GetIntegerProp write SetIntegerProp stored False;
    property License: Integer index 29 read GetIntegerProp write SetIntegerProp stored False;
    property LineNumber: Integer index 183 read GetIntegerProp write SetIntegerProp stored False;
    property LockDevices: WordBool index 13 read GetWordBoolProp write SetWordBoolProp stored False;
    property MachineName: WideString index 5 read GetWideStringProp write SetWideStringProp stored False;
    property MachineNumber: WideString index 19 read GetWideStringProp write SetWideStringProp stored False;
    property Minute: Integer index 41 read GetIntegerProp write SetIntegerProp stored False;
    property Mode: Integer index 35 read GetIntegerProp write SetIntegerProp stored False;
    property Model: Integer index 285 read GetIntegerProp write SetIntegerProp stored False;
    property ModelCheck: WordBool index 134 read GetWordBoolProp write SetWordBoolProp stored False;
    property Month: Integer index 38 read GetIntegerProp write SetIntegerProp stored False;
    property Name: WideString index 45 read GetWideStringProp write SetWideStringProp stored False;
    property NeedResult: Integer index 308 read GetIntegerProp write SetIntegerProp stored False;
    property OperationType: Integer index 276 read GetIntegerProp write SetIntegerProp stored False;
    property OrderCode: WideString index 146 read GetWideStringProp write SetWideStringProp stored False;
    property OrderNumber: Integer index 144 read GetIntegerProp write SetIntegerProp stored False;
    property OutboundStream: WideString index 169 read GetWideStringProp write SetWideStringProp stored False;
    property Password: WideString index 43 read GetWideStringProp write SetWideStringProp stored False;
    property Percents: Double index 49 read GetDoubleProp write SetDoubleProp stored False;
    property PictureNumber: Integer index 210 read GetIntegerProp write SetIntegerProp stored False;
    property PLUNumber: Integer index 31 read GetIntegerProp write SetIntegerProp stored False;
    property PointPosition: Integer index 60 read GetIntegerProp write SetIntegerProp stored False;
    property PortNumber: Integer index 32 read GetIntegerProp write SetIntegerProp stored False;
    property Price: Double index 46 read GetDoubleProp write SetDoubleProp stored False;
    property PrintBarcodeText: Integer index 238 read GetIntegerProp write SetIntegerProp stored False;
    property PrintPurpose: Integer index 181 read GetIntegerProp write SetIntegerProp stored False;
    property Protocol: Integer index 184 read GetIntegerProp write SetIntegerProp stored False;
    property PowerSource: Integer index 43969 read GetIntegerProp write SetIntegerProp stored False;
    property PowerState: Integer index 43970 read GetIntegerProp write SetIntegerProp stored False;
    property PowerValue: Double index 43971 read GetDoubleProp write SetDoubleProp stored False;
    property OperatorName: WideString index 904 read GetWideStringProp write SetWideStringProp stored False;
    property OperatorCode: Integer index 905 read GetIntegerProp write SetIntegerProp stored False;
    property OperatorPassword: WideString index 906 read GetWideStringProp write SetWideStringProp stored False;
    property SessionTaxByDepartment: Double index 43974 read GetDoubleProp write SetDoubleProp stored False;
    property SessionTaxSummByDepartment: Double index 43975 read GetDoubleProp write SetDoubleProp stored False;
    property DiscountSummBySession: Double index 43976 read GetDoubleProp write SetDoubleProp stored False;
    property IncreaseSummBySession: Double index 43977 read GetDoubleProp write SetDoubleProp stored False;
    property PaymentMode: Integer index 316 read GetIntegerProp write SetIntegerProp stored False;
    property ProductId: WideString index 2598 read GetWideStringProp write SetWideStringProp stored False;
    property Quantity: Double index 47 read GetDoubleProp write SetDoubleProp stored False;
    property RateType: Integer index 152 read GetIntegerProp write SetIntegerProp stored False;
    property RecFont: Integer index 195 read GetIntegerProp write SetIntegerProp stored False;
    property RecBrightness: Integer index 196 read GetIntegerProp write SetIntegerProp stored False;
    property RecFontHeight: Integer index 198 read GetIntegerProp write SetIntegerProp stored False;
    property RecLineSpacing: Integer index 199 read GetIntegerProp write SetIntegerProp stored False;
    property RecordType: Integer index 145 read GetIntegerProp write SetIntegerProp stored False;
    property RegisterNumber: Integer index 230 read GetIntegerProp write SetIntegerProp stored False;
    property ReportType: Integer index 63 read GetIntegerProp write SetIntegerProp stored False;
    property RouteCode: Integer index 135 read GetIntegerProp write SetIntegerProp stored False;
    property RouteNumber: Integer index 151 read GetIntegerProp write SetIntegerProp stored False;
    property Row: Integer index 129 read GetIntegerProp write SetIntegerProp stored False;
    property QuantityType: Integer index 405 read GetIntegerProp write SetIntegerProp stored False;
    property Scale: Double index 252 read GetDoubleProp write SetDoubleProp stored False;
    property ScaleVB: Double index 292 read GetDoubleProp write SetDoubleProp stored False;
    property Second: Integer index 42 read GetIntegerProp write SetIntegerProp stored False;
    property SerialNumber: WideString index 53 read GetWideStringProp write SetWideStringProp stored False;
    property Session: Integer index 58 read GetIntegerProp write SetIntegerProp stored False;
    property ShowProgress: WordBool index 111 read GetWordBoolProp write SetWordBoolProp stored False;
    property SlipDocCharLineLength: Integer index 264 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocCopyCountHorz: Integer index 265 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocCopyCountVert: Integer index 266 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocCopyShiftHorz: Integer index 267 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocCopyShiftVert: Integer index 268 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocLeftMargin: Integer index 270 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocOrientation: Integer index 269 read GetIntegerProp write SetIntegerProp stored False;
    property SlipDocTopMargin: Integer index 271 read GetIntegerProp write SetIntegerProp stored False;
    property SlipLineSpacing: Integer index 249 read GetIntegerProp write SetIntegerProp stored False;
    property StreamFormat: Integer index 188 read GetIntegerProp write SetIntegerProp stored False;
    property Summ: Double index 44 read GetDoubleProp write SetDoubleProp stored False;
    property SystemOperationType: Integer index 409 read GetIntegerProp write SetIntegerProp stored False;
    property SystemOperationData: WideString index 410 read GetWideStringProp write SetWideStringProp stored False;
    property Table: Integer index 128 read GetIntegerProp write SetIntegerProp stored False;
    property Tax: Integer index 126 read GetIntegerProp write SetIntegerProp stored False;
    property TaxTypeNumber: Integer index 299 read GetIntegerProp write SetIntegerProp stored False;
    property TestMode: WordBool index 125 read GetWordBoolProp write SetWordBoolProp stored False;
    property TextWrap: Integer index 254 read GetIntegerProp write SetIntegerProp stored False;
    property Timeout: Integer index 30 read GetIntegerProp write SetIntegerProp stored False;
    property TypeClose: Integer index 50 read GetIntegerProp write SetIntegerProp stored False;
    property TaxMode: Integer index 318 read GetIntegerProp write SetIntegerProp stored False;
    property TaxSumm: Double index 319 read GetDoubleProp write SetDoubleProp stored False;
    property StoreReceipts: WordBool index 1101 read GetWordBoolProp write SetWordBoolProp stored False;
    property UMode: Integer index 122 read GetIntegerProp write SetIntegerProp stored False;
    property UnitType: Integer index 232 read GetIntegerProp write SetIntegerProp stored False;
    property UseAccessPassword: WordBool index 166 read GetWordBoolProp write SetWordBoolProp stored False;
    property Value: Double index 66 read GetDoubleProp write SetDoubleProp stored False;
    property ValuePurpose: Integer index 69 read GetIntegerProp write SetIntegerProp stored False;
    property WorkShop: Integer index 253 read GetIntegerProp write SetIntegerProp stored False;
    property WriteLogFile: Integer index 263 read GetIntegerProp write SetIntegerProp stored False;
    property Year: Integer index 39 read GetIntegerProp write SetIntegerProp stored False;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'Samples';

  dtlOcxPage = 'Samples';

implementation

uses ComObj;

class function CoATOL_Fptr.Create: IATOL_Fptr;
begin
  Result := CreateComObject(CLASS_ATOL_Fptr) as IATOL_Fptr;
end;

class function CoATOL_Fptr.CreateRemote(const MachineName: string): IATOL_Fptr;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ATOL_Fptr) as IATOL_Fptr;
end;

procedure TATOL_Fptr.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{8D1BDF4B-FB5F-4FF0-BBB5-16EED5EA853E}';
    IntfIID:   '{B19C47FB-540B-4CB2-B630-9815310540D8}';
    EventIID:  '{08049332-DBBB-4670-A3F4-8876A7012A18}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TATOL_Fptr.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IATOL_Fptr;
  end;
end;

procedure TATOL_Fptr.ConnectTo(svrIntf: IATOL_Fptr);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TATOL_Fptr.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TATOL_Fptr.GetDefaultInterface: IATOL_Fptr;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TATOL_Fptr.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TATOL_FptrProperties.Create(Self);
{$ENDIF}
end;

destructor TATOL_Fptr.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TATOL_Fptr.GetServerProperties: TATOL_FptrProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TATOL_Fptr.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    2: if Assigned(FOnDirectIOEvent) then
         FOnDirectIOEvent(Self,
                          Params[0] {Integer},
                          Integer((TVarData(Params[1]).VPointer)^) {var Integer},
                          WideString((TVarData(Params[2]).VPointer)^) {var WideString});
    3: if Assigned(FOnErrorEvent) then
         FOnErrorEvent(Self,
                       Params[0] {Integer},
                       Params[1] {Integer},
                       Params[2] {Integer},
                       Integer((TVarData(Params[3]).VPointer)^) {var Integer});
    4: if Assigned(FOnOutputCompleteEvent) then
         FOnOutputCompleteEvent(Self, Params[0] {Integer});
    5: if Assigned(FOnStatusUpdateEvent) then
         FOnStatusUpdateEvent(Self, Params[0] {Integer});
  end; {case DispID}
end;

function TATOL_Fptr.Claim(Timeout: Integer): Integer;
begin
  Result := DefaultInterface.Claim(Timeout);
end;

function TATOL_Fptr.UpdateFirmware(const FirmwareFileName: WideString): Integer;
begin
  Result := DefaultInterface.UpdateFirmware(FirmwareFileName);
end;

function TATOL_Fptr.CompareFirmwareVersion(const FirmwareFileName: WideString; out Result_: Integer): Integer;
begin
  Result := DefaultInterface.CompareFirmwareVersion(FirmwareFileName, Result_);
end;

function TATOL_Fptr.UpdateStatistics(const StatisticsBuffer: WideString): Integer;
begin
  Result := DefaultInterface.UpdateStatistics(StatisticsBuffer);
end;

function TATOL_Fptr.RetrieveStatistics(var StatisticsBuffer: WideString): Integer;
begin
  Result := DefaultInterface.RetrieveStatistics(StatisticsBuffer);
end;

function TATOL_Fptr.ResetStatistics(const StatisticsBuffer: WideString): Integer;
begin
  Result := DefaultInterface.ResetStatistics(StatisticsBuffer);
end;

function TATOL_Fptr.CloseService: Integer;
begin
  Result := DefaultInterface.CloseService;
end;

function TATOL_Fptr.ClaimDevice(Timeout: Integer): Integer;
begin
  Result := DefaultInterface.ClaimDevice(Timeout);
end;

function TATOL_Fptr.ReleaseDevice: Integer;
begin
  Result := DefaultInterface.ReleaseDevice;
end;

function TATOL_Fptr.CheckHealth(Level: Integer): Integer;
begin
  Result := DefaultInterface.CheckHealth(Level);
end;

function TATOL_Fptr.OpenService(const DeviceClass: WideString; const DeviceName: WideString; 
                                const pDispatch: IDispatch): Integer;
begin
  Result := DefaultInterface.OpenService(DeviceClass, DeviceName, pDispatch);
end;

function TATOL_Fptr.GetPropertyNumber(PropIndex: Integer): Integer;
begin
  Result := DefaultInterface.GetPropertyNumber(PropIndex);
end;

procedure TATOL_Fptr.SetPropertyNumber(PropIndex: Integer; Number: Integer);
begin
  DefaultInterface.SetPropertyNumber(PropIndex, Number);
end;

function TATOL_Fptr.GetPropertyString(PropIndex: Integer): WideString;
begin
  Result := DefaultInterface.GetPropertyString(PropIndex);
end;

procedure TATOL_Fptr.SetPropertyString(PropIndex: Integer; const String_: WideString);
begin
  DefaultInterface.SetPropertyString(PropIndex, String_);
end;

function TATOL_Fptr.ClearOutput: Integer;
begin
  Result := DefaultInterface.ClearOutput;
end;

function TATOL_Fptr.DirectIO(Command: Integer; var pData: Integer; var pString: WideString): Integer;
begin
  Result := DefaultInterface.DirectIO(Command, pData, pString);
end;

function TATOL_Fptr.ClearInput: Integer;
begin
  Result := DefaultInterface.ClearInput;
end;

function TATOL_Fptr.COFreezeEvents(Freeze: Integer): Integer;
begin
  Result := DefaultInterface.COFreezeEvents(Freeze);
end;

function TATOL_Fptr.ClearInputProperties: Integer;
begin
  Result := DefaultInterface.ClearInputProperties;
end;

function TATOL_Fptr.BeginFiscalDocument(DocumentAmount: Integer): Integer;
begin
  Result := DefaultInterface.BeginFiscalDocument(DocumentAmount);
end;

function TATOL_Fptr.BeginFiscalReceipt(PrintHeader: WordBool): Integer;
begin
  Result := DefaultInterface.BeginFiscalReceipt(PrintHeader);
end;

function TATOL_Fptr.BeginFixedOutput(Station: Integer; DocumentType: Integer): Integer;
begin
  Result := DefaultInterface.BeginFixedOutput(Station, DocumentType);
end;

function TATOL_Fptr.BeginInsertion(Timeout: Integer): Integer;
begin
  Result := DefaultInterface.BeginInsertion(Timeout);
end;

function TATOL_Fptr.BeginItemList(VatID: Integer): Integer;
begin
  Result := DefaultInterface.BeginItemList(VatID);
end;

function TATOL_Fptr.BeginNonFiscal: Integer;
begin
  Result := DefaultInterface.BeginNonFiscal;
end;

function TATOL_Fptr.BeginRemoval(Timeout: Integer): Integer;
begin
  Result := DefaultInterface.BeginRemoval(Timeout);
end;

function TATOL_Fptr.BeginTraining: Integer;
begin
  Result := DefaultInterface.BeginTraining;
end;

function TATOL_Fptr.ClearError: Integer;
begin
  Result := DefaultInterface.ClearError;
end;

function TATOL_Fptr.EndFiscalDocument: Integer;
begin
  Result := DefaultInterface.EndFiscalDocument;
end;

function TATOL_Fptr.EndFiscalReceipt(PrintHeader: WordBool): Integer;
begin
  Result := DefaultInterface.EndFiscalReceipt(PrintHeader);
end;

function TATOL_Fptr.EndFixedOutput: Integer;
begin
  Result := DefaultInterface.EndFixedOutput;
end;

function TATOL_Fptr.EndInsertion: Integer;
begin
  Result := DefaultInterface.EndInsertion;
end;

function TATOL_Fptr.EndItemList: Integer;
begin
  Result := DefaultInterface.EndItemList;
end;

function TATOL_Fptr.EndNonFiscal: Integer;
begin
  Result := DefaultInterface.EndNonFiscal;
end;

function TATOL_Fptr.EndRemoval: Integer;
begin
  Result := DefaultInterface.EndRemoval;
end;

function TATOL_Fptr.EndTraining: Integer;
begin
  Result := DefaultInterface.EndTraining;
end;

function TATOL_Fptr.GetData(DataItem: Integer; var OptArgs: Integer; var Data: WideString): Integer;
begin
  Result := DefaultInterface.GetData(DataItem, OptArgs, Data);
end;

function TATOL_Fptr.GetDate(var Date: WideString): Integer;
begin
  Result := DefaultInterface.GetDate(Date);
end;

function TATOL_Fptr.GetTotalizer(VatID: Integer; OptArgs: Integer; out Data: WideString): Integer;
begin
  Result := DefaultInterface.GetTotalizer(VatID, OptArgs, Data);
end;

function TATOL_Fptr.GetVatEntry(VatID: Integer; OptArgs: Integer; out VatRate: Integer): Integer;
begin
  Result := DefaultInterface.GetVatEntry(VatID, OptArgs, VatRate);
end;

function TATOL_Fptr.PrintDuplicateReceipt: Integer;
begin
  Result := DefaultInterface.PrintDuplicateReceipt;
end;

function TATOL_Fptr.PrintFiscalDocumentLine(const DocumentLine: WideString): Integer;
begin
  Result := DefaultInterface.PrintFiscalDocumentLine(DocumentLine);
end;

function TATOL_Fptr.PrintFixedOutput(DocumentType: Integer; LineNumber: Integer; 
                                     const Data: WideString): Integer;
begin
  Result := DefaultInterface.PrintFixedOutput(DocumentType, LineNumber, Data);
end;

function TATOL_Fptr.PrintNormal(Station: Integer; const Data: WideString): Integer;
begin
  Result := DefaultInterface.PrintNormal(Station, Data);
end;

function TATOL_Fptr.PrintPeriodicTotalsReport(const Date1: WideString; const Date2: WideString): Integer;
begin
  Result := DefaultInterface.PrintPeriodicTotalsReport(Date1, Date2);
end;

function TATOL_Fptr.PrintPowerLossReport: Integer;
begin
  Result := DefaultInterface.PrintPowerLossReport;
end;

function TATOL_Fptr.PrintRecItem(const Description: WideString; Price: Currency; Quantity: Integer; 
                                 VatInfo: Integer; UnitPrice: Currency; const UnitName: WideString): Integer;
begin
  Result := DefaultInterface.PrintRecItem(Description, Price, Quantity, VatInfo, UnitPrice, UnitName);
end;

function TATOL_Fptr.PrintRecItemAdjustment(AdjustmentType: Integer; const Description: WideString; 
                                           Amount: Currency; VatInfo: Integer): Integer;
begin
  Result := DefaultInterface.PrintRecItemAdjustment(AdjustmentType, Description, Amount, VatInfo);
end;

function TATOL_Fptr.PrintRecMessage(const Message: WideString): Integer;
begin
  Result := DefaultInterface.PrintRecMessage(Message);
end;

function TATOL_Fptr.PrintRecNotPaid(const Description: WideString; Amount: Currency): Integer;
begin
  Result := DefaultInterface.PrintRecNotPaid(Description, Amount);
end;

function TATOL_Fptr.PrintRecRefund(const Description: WideString; Amount: Currency; VatInfo: Integer): Integer;
begin
  Result := DefaultInterface.PrintRecRefund(Description, Amount, VatInfo);
end;

function TATOL_Fptr.PrintRecSubtotal(Amount: Currency): Integer;
begin
  Result := DefaultInterface.PrintRecSubtotal(Amount);
end;

function TATOL_Fptr.PrintRecSubtotalAdjustment(AdjustmentType: Integer; 
                                               const Description: WideString; Amount: Currency): Integer;
begin
  Result := DefaultInterface.PrintRecSubtotalAdjustment(AdjustmentType, Description, Amount);
end;

function TATOL_Fptr.PrintRecTotal(Total: Currency; Payment: Currency; const Description: WideString): Integer;
begin
  Result := DefaultInterface.PrintRecTotal(Total, Payment, Description);
end;

function TATOL_Fptr.PrintRecVoid(const Description: WideString): Integer;
begin
  Result := DefaultInterface.PrintRecVoid(Description);
end;

function TATOL_Fptr.PrintRecVoidItem(const Description: WideString; Amount: Currency; 
                                     Quantity: Integer; AdjustmentType: Integer; 
                                     Adjustment: Currency; VatInfo: Integer): Integer;
begin
  Result := DefaultInterface.PrintRecVoidItem(Description, Amount, Quantity, AdjustmentType, 
                                              Adjustment, VatInfo);
end;

function TATOL_Fptr.PrintReport(ReportType: Integer; const StartNum: WideString; 
                                const EndNum: WideString): Integer;
begin
  Result := DefaultInterface.PrintReport(ReportType, StartNum, EndNum);
end;

function TATOL_Fptr.PrintXReport: Integer;
begin
  Result := DefaultInterface.PrintXReport;
end;

function TATOL_Fptr.PrintZReport: Integer;
begin
  Result := DefaultInterface.PrintZReport;
end;

function TATOL_Fptr.ResetPrinter: Integer;
begin
  Result := DefaultInterface.ResetPrinter;
end;

function TATOL_Fptr.SetDate(const Date: WideString): Integer;
begin
  Result := DefaultInterface.SetDate(Date);
end;

function TATOL_Fptr.SetHeaderLine(LineNumber: Integer; const Text: WideString; DoubleWidth: WordBool): Integer;
begin
  Result := DefaultInterface.SetHeaderLine(LineNumber, Text, DoubleWidth);
end;

function TATOL_Fptr.SetPOSID(const POSID: WideString; const CashierID: WideString): Integer;
begin
  Result := DefaultInterface.SetPOSID(POSID, CashierID);
end;

function TATOL_Fptr.SetStoreFiscalID(const ID: WideString): Integer;
begin
  Result := DefaultInterface.SetStoreFiscalID(ID);
end;

function TATOL_Fptr.SetTrailerLine(LineNumber: Integer; const Text: WideString; 
                                   DoubleWidth: WordBool): Integer;
begin
  Result := DefaultInterface.SetTrailerLine(LineNumber, Text, DoubleWidth);
end;

function TATOL_Fptr.SetVatTable: Integer;
begin
  Result := DefaultInterface.SetVatTable;
end;

function TATOL_Fptr.SetVatValue(VatID: Integer; const VatValue: WideString): Integer;
begin
  Result := DefaultInterface.SetVatValue(VatID, VatValue);
end;

function TATOL_Fptr.VerifyItem(const ItemName: WideString; VatID: Integer): Integer;
begin
  Result := DefaultInterface.VerifyItem(ItemName, VatID);
end;

function TATOL_Fptr.PrintRecCash(Amount: Currency): Integer;
begin
  Result := DefaultInterface.PrintRecCash(Amount);
end;

function TATOL_Fptr.PrintRecItemFuel(const Description: WideString; Price: Currency; 
                                     Quantity: Integer; VatInfo: Integer; UnitPrice: Currency; 
                                     const UnitName: WideString; SpecialTax: Currency; 
                                     const SpecialTaxName: WideString): Integer;
begin
  Result := DefaultInterface.PrintRecItemFuel(Description, Price, Quantity, VatInfo, UnitPrice, 
                                              UnitName, SpecialTax, SpecialTaxName);
end;

function TATOL_Fptr.PrintRecItemFuelVoid(const Description: WideString; Price: Currency; 
                                         VatInfo: Integer; SpecialTax: Currency): Integer;
begin
  Result := DefaultInterface.PrintRecItemFuelVoid(Description, Price, VatInfo, SpecialTax);
end;

function TATOL_Fptr.PrintRecPackageAdjustment(AdjustmentType: Integer; 
                                              const Description: WideString; 
                                              const VatAdjustment: WideString): Integer;
begin
  Result := DefaultInterface.PrintRecPackageAdjustment(AdjustmentType, Description, VatAdjustment);
end;

function TATOL_Fptr.PrintRecPackageAdjustVoid(AdjustmentType: Integer; 
                                              const VatAdjustment: WideString): Integer;
begin
  Result := DefaultInterface.PrintRecPackageAdjustVoid(AdjustmentType, VatAdjustment);
end;

function TATOL_Fptr.PrintRecRefundVoid(const Description: WideString; Amount: Currency; 
                                       VatInfo: Integer): Integer;
begin
  Result := DefaultInterface.PrintRecRefundVoid(Description, Amount, VatInfo);
end;

function TATOL_Fptr.PrintRecSubtotalAdjustVoid(AdjustmentType: Integer; Amount: Currency): Integer;
begin
  Result := DefaultInterface.PrintRecSubtotalAdjustVoid(AdjustmentType, Amount);
end;

function TATOL_Fptr.PrintRecTaxID(const TaxId: WideString): Integer;
begin
  Result := DefaultInterface.PrintRecTaxID(TaxId);
end;

function TATOL_Fptr.SetCurrency(NewCurrency: Integer): Integer;
begin
  Result := DefaultInterface.SetCurrency(NewCurrency);
end;

function TATOL_Fptr.PrintRecItemVoid(const Description: WideString; Price: Currency; 
                                     Quantity: Integer; VatInfo: Integer; UnitPrice: Currency; 
                                     const UnitName: WideString): Integer;
begin
  Result := DefaultInterface.PrintRecItemVoid(Description, Price, Quantity, VatInfo, UnitPrice, 
                                              UnitName);
end;

function TATOL_Fptr.PrintRecItemAdjustmentVoid(AdjustmentType: Integer; 
                                               const Description: WideString; Amount: Currency; 
                                               VatInfo: Integer): Integer;
begin
  Result := DefaultInterface.PrintRecItemAdjustmentVoid(AdjustmentType, Description, Amount, VatInfo);
end;

function TATOL_Fptr.PrintRecItemRefund(const Description: WideString; Amount: Currency; 
                                       Quantity: Integer; VatInfo: Integer; unitAmount: Currency; 
                                       const UnitName: WideString): Integer;
begin
  Result := DefaultInterface.PrintRecItemRefund(Description, Amount, Quantity, VatInfo, unitAmount, 
                                                UnitName);
end;

function TATOL_Fptr.PrintRecItemRefundVoid(const Description: WideString; Amount: Currency; 
                                           Quantity: Integer; VatInfo: Integer; 
                                           unitAmount: Currency; const UnitName: WideString): Integer;
begin
  Result := DefaultInterface.PrintRecItemRefundVoid(Description, Amount, Quantity, VatInfo, 
                                                    unitAmount, UnitName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TATOL_FptrProperties.Create(AServer: TATOL_Fptr);
begin
  inherited Create;
  FServer := AServer;
end;

function TATOL_FptrProperties.GetDefaultInterface: IATOL_Fptr;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoATOL_Cash.Create: IATOL_Cash;
begin
  Result := CreateComObject(CLASS_ATOL_Cash) as IATOL_Cash;
end;

class function CoATOL_Cash.CreateRemote(const MachineName: string): IATOL_Cash;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ATOL_Cash) as IATOL_Cash;
end;

procedure TATOL_Cash.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A1021070-2229-46D6-B70D-1F1993734CFF}';
    IntfIID:   '{231239FF-5C8E-4504-BFEA-54117B5686EB}';
    EventIID:  '{08049332-DBBB-4670-A3F4-8876A7012A18}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TATOL_Cash.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IATOL_Cash;
  end;
end;

procedure TATOL_Cash.ConnectTo(svrIntf: IATOL_Cash);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TATOL_Cash.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TATOL_Cash.GetDefaultInterface: IATOL_Cash;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TATOL_Cash.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TATOL_CashProperties.Create(Self);
{$ENDIF}
end;

destructor TATOL_Cash.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TATOL_Cash.GetServerProperties: TATOL_CashProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TATOL_Cash.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    2: if Assigned(FOnDirectIOEvent) then
         FOnDirectIOEvent(Self,
                          Params[0] {Integer},
                          Integer((TVarData(Params[1]).VPointer)^) {var Integer},
                          WideString((TVarData(Params[2]).VPointer)^) {var WideString});
    3: if Assigned(FOnErrorEvent) then
         FOnErrorEvent(Self,
                       Params[0] {Integer},
                       Params[1] {Integer},
                       Params[2] {Integer},
                       Integer((TVarData(Params[3]).VPointer)^) {var Integer});
    4: if Assigned(FOnOutputCompleteEvent) then
         FOnOutputCompleteEvent(Self, Params[0] {Integer});
    5: if Assigned(FOnStatusUpdateEvent) then
         FOnStatusUpdateEvent(Self, Params[0] {Integer});
  end; {case DispID}
end;

function TATOL_Cash.Claim(Timeout: Integer): Integer;
begin
  Result := DefaultInterface.Claim(Timeout);
end;

function TATOL_Cash.UpdateFirmware(const FirmwareFileName: WideString): Integer;
begin
  Result := DefaultInterface.UpdateFirmware(FirmwareFileName);
end;

function TATOL_Cash.CompareFirmwareVersion(const FirmwareFileName: WideString; out Result_: Integer): Integer;
begin
  Result := DefaultInterface.CompareFirmwareVersion(FirmwareFileName, Result_);
end;

function TATOL_Cash.UpdateStatistics(const StatisticsBuffer: WideString): Integer;
begin
  Result := DefaultInterface.UpdateStatistics(StatisticsBuffer);
end;

function TATOL_Cash.RetrieveStatistics(var StatisticsBuffer: WideString): Integer;
begin
  Result := DefaultInterface.RetrieveStatistics(StatisticsBuffer);
end;

function TATOL_Cash.ResetStatistics(const StatisticsBuffer: WideString): Integer;
begin
  Result := DefaultInterface.ResetStatistics(StatisticsBuffer);
end;

function TATOL_Cash.CloseService: Integer;
begin
  Result := DefaultInterface.CloseService;
end;

function TATOL_Cash.ClaimDevice(Timeout: Integer): Integer;
begin
  Result := DefaultInterface.ClaimDevice(Timeout);
end;

function TATOL_Cash.ReleaseDevice: Integer;
begin
  Result := DefaultInterface.ReleaseDevice;
end;

function TATOL_Cash.CheckHealth(Level: Integer): Integer;
begin
  Result := DefaultInterface.CheckHealth(Level);
end;

function TATOL_Cash.OpenService(const DeviceClass: WideString; const DeviceName: WideString; 
                                const pDispatch: IDispatch): Integer;
begin
  Result := DefaultInterface.OpenService(DeviceClass, DeviceName, pDispatch);
end;

function TATOL_Cash.GetPropertyNumber(PropIndex: Integer): Integer;
begin
  Result := DefaultInterface.GetPropertyNumber(PropIndex);
end;

procedure TATOL_Cash.SetPropertyNumber(PropIndex: Integer; Number: Integer);
begin
  DefaultInterface.SetPropertyNumber(PropIndex, Number);
end;

function TATOL_Cash.GetPropertyString(PropIndex: Integer): WideString;
begin
  Result := DefaultInterface.GetPropertyString(PropIndex);
end;

procedure TATOL_Cash.SetPropertyString(PropIndex: Integer; const String_: WideString);
begin
  DefaultInterface.SetPropertyString(PropIndex, String_);
end;

function TATOL_Cash.ClearOutput: Integer;
begin
  Result := DefaultInterface.ClearOutput;
end;

function TATOL_Cash.DirectIO(Command: Integer; var pData: Integer; var pString: WideString): Integer;
begin
  Result := DefaultInterface.DirectIO(Command, pData, pString);
end;

function TATOL_Cash.ClearInput: Integer;
begin
  Result := DefaultInterface.ClearInput;
end;

function TATOL_Cash.COFreezeEvents(Freeze: Integer): Integer;
begin
  Result := DefaultInterface.COFreezeEvents(Freeze);
end;

function TATOL_Cash.ClearInputProperties: Integer;
begin
  Result := DefaultInterface.ClearInputProperties;
end;

function TATOL_Cash.OpenDrawer: Integer;
begin
  Result := DefaultInterface.OpenDrawer;
end;

function TATOL_Cash.WaitForDrawerClose(BeepTimeout: Integer; BeepFrequency: Integer; 
                                       BeepDuration: Integer; BeepDelay: Integer): Integer;
begin
  Result := DefaultInterface.WaitForDrawerClose(BeepTimeout, BeepFrequency, BeepDuration, BeepDelay);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TATOL_CashProperties.Create(AServer: TATOL_Cash);
begin
  inherited Create;
  FServer := AServer;
end;

function TATOL_CashProperties.GetDefaultInterface: IATOL_Cash;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

procedure TATOL_KKM_1C.InitControlData;
const
  CLicenseKey: array[0..38] of Word = ( $007B, $0042, $0034, $0037, $0032, $0033, $0038, $0046, $0039, $002D, $0041
    , $0030, $0036, $0038, $002D, $0034, $0039, $0042, $0044, $002D, $0041
    , $0038, $0038, $0031, $002D, $0042, $0042, $0044, $0038, $0037, $0036
    , $0045, $0044, $0046, $0042, $0039, $0031, $007D, $0000);
  CControlData: TControlData2 = (
    ClassID: '{94327594-E4CF-4780-8CBE-AC34ECF749A2}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: @CLicenseKey;
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TATOL_KKM_1C.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IATOL_KKM_1C;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TATOL_KKM_1C.GetControlInterface: IATOL_KKM_1C;
begin
  CreateControl;
  Result := FIntf;
end;

function TATOL_KKM_1C.GetVersion: WideString;
begin
  Result := DefaultInterface.GetVersion;
end;

function TATOL_KKM_1C.GetLastError(out ErrorDescription: WideString): Integer;
begin
  Result := DefaultInterface.GetLastError(ErrorDescription);
end;

function TATOL_KKM_1C.Open(const ValuesArray: IDispatch; out DeviceID: WideString): WordBool;
begin
  Result := DefaultInterface.Open(ValuesArray, DeviceID);
end;

function TATOL_KKM_1C.Close(const DeviceID: WideString): WordBool;
begin
  Result := DefaultInterface.Close(DeviceID);
end;

function TATOL_KKM_1C.PrintXReport(const DeviceID: WideString): WordBool;
begin
  Result := DefaultInterface.PrintXReport(DeviceID);
end;

function TATOL_KKM_1C.PrintZReport(const DeviceID: WideString): WordBool;
begin
  Result := DefaultInterface.PrintZReport(DeviceID);
end;

function TATOL_KKM_1C.CashInOutcome(const DeviceID: WideString; Amount: Double): WordBool;
begin
  Result := DefaultInterface.CashInOutcome(DeviceID, Amount);
end;

function TATOL_KKM_1C.OpenCheck(const DeviceID: WideString; IsFiscalCheck: WordBool; 
                                IsReturnCheck: WordBool; CancelOpenedCheck: WordBool; 
                                out CheckNumber: Integer; out SessionNumber: Integer): WordBool;
begin
  Result := DefaultInterface.OpenCheck(DeviceID, IsFiscalCheck, IsReturnCheck, CancelOpenedCheck, 
                                       CheckNumber, SessionNumber);
end;

function TATOL_KKM_1C.PrintFiscalString(const DeviceID: WideString; const Name: WideString; 
                                        Quantity: Double; Price: Double; Amount: Double; 
                                        Department: Integer; Tax: Double): WordBool;
begin
  Result := DefaultInterface.PrintFiscalString(DeviceID, Name, Quantity, Price, Amount, Department, 
                                               Tax);
end;

function TATOL_KKM_1C.CloseCheck(const DeviceID: WideString; Cash: Double; Cashless: Double): WordBool;
begin
  Result := DefaultInterface.CloseCheck(DeviceID, Cash, Cashless);
end;

function TATOL_KKM_1C.CancelCheck(const DeviceID: WideString): WordBool;
begin
  Result := DefaultInterface.CancelCheck(DeviceID);
end;

function TATOL_KKM_1C.PrintNonFiscalString(const DeviceID: WideString; const TextString: WideString): WordBool;
begin
  Result := DefaultInterface.PrintNonFiscalString(DeviceID, TextString);
end;

function TATOL_KKM_1C.DeviceTest(const ValuesArray: IDispatch; out AdditionalDescription: WideString): WordBool;
begin
  Result := DefaultInterface.DeviceTest(ValuesArray, AdditionalDescription);
end;

function TATOL_KKM_1C.OpenCashDrawer(const DeviceID: WideString): WordBool;
begin
  Result := DefaultInterface.OpenCashDrawer(DeviceID);
end;

procedure TFprnM45.InitControlData;
const
  CLicenseKey: array[0..38] of Word = ( $007B, $0042, $0034, $0037, $0032, $0033, $0038, $0046, $0039, $002D, $0041
    , $0030, $0036, $0038, $002D, $0034, $0039, $0042, $0044, $002D, $0041
    , $0038, $0038, $0031, $002D, $0042, $0042, $0044, $0038, $0037, $0036
    , $0045, $0044, $0046, $0042, $0039, $0031, $007D, $0000);
  CControlData: TControlData2 = (
    ClassID: '{E4795281-3564-11D4-8E97-0080C87C930A}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: @CLicenseKey;
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TFprnM45.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IFprnM45;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TFprnM45.GetControlInterface: IFprnM45;
begin
  CreateControl;
  Result := FIntf;
end;

function TFprnM45.AboutBox: Integer;
begin
  Result := DefaultInterface.AboutBox;
end;

function TFprnM45.AddDevice: Integer;
begin
  Result := DefaultInterface.AddDevice;
end;

function TFprnM45.AddField: Integer;
begin
  Result := DefaultInterface.AddField;
end;

function TFprnM45.AddPictureFromFile: Integer;
begin
  Result := DefaultInterface.AddPictureFromFile;
end;

function TFprnM45.AdvancedDisplayWrite: Integer;
begin
  Result := DefaultInterface.AdvancedDisplayWrite;
end;

function TFprnM45.AdvancedOpenDrawer: Integer;
begin
  Result := DefaultInterface.AdvancedOpenDrawer;
end;

function TFprnM45.Annulate: Integer;
begin
  Result := DefaultInterface.Annulate;
end;

function TFprnM45.Beep: Integer;
begin
  Result := DefaultInterface.Beep;
end;

function TFprnM45.BeginAdd: Integer;
begin
  Result := DefaultInterface.BeginAdd;
end;

function TFprnM45.BeginDocument: Integer;
begin
  Result := DefaultInterface.BeginDocument;
end;

function TFprnM45.BeginFiscDocument: Integer;
begin
  Result := DefaultInterface.BeginFiscDocument;
end;

function TFprnM45.BeginReport: Integer;
begin
  Result := DefaultInterface.BeginReport;
end;

function TFprnM45.Buy: Integer;
begin
  Result := DefaultInterface.Buy;
end;

function TFprnM45.BuyAnnulate: Integer;
begin
  Result := DefaultInterface.BuyAnnulate;
end;

function TFprnM45.BuyReturn: Integer;
begin
  Result := DefaultInterface.BuyReturn;
end;

function TFprnM45.BeginItem: Integer;
begin
  Result := DefaultInterface.BeginItem;
end;

function TFprnM45.BeginComplexAttribute: Integer;
begin
  Result := DefaultInterface.BeginComplexAttribute;
end;

function TFprnM45.CancelCheck: Integer;
begin
  Result := DefaultInterface.CancelCheck;
end;

function TFprnM45.CardGetType: Integer;
begin
  Result := DefaultInterface.CardGetType;
end;

function TFprnM45.CardRead: Integer;
begin
  Result := DefaultInterface.CardRead;
end;

function TFprnM45.CardWrite: Integer;
begin
  Result := DefaultInterface.CardWrite;
end;

function TFprnM45.CashIncome: Integer;
begin
  Result := DefaultInterface.CashIncome;
end;

function TFprnM45.CashOutcome: Integer;
begin
  Result := DefaultInterface.CashOutcome;
end;

function TFprnM45.ClearOutput: Integer;
begin
  Result := DefaultInterface.ClearOutput;
end;

function TFprnM45.ClearPictureArray: Integer;
begin
  Result := DefaultInterface.ClearPictureArray;
end;

function TFprnM45.CloseCheck: Integer;
begin
  Result := DefaultInterface.CloseCheck;
end;

function TFprnM45.DeleteDevice: Integer;
begin
  Result := DefaultInterface.DeleteDevice;
end;

function TFprnM45.DeleteLastPicture: Integer;
begin
  Result := DefaultInterface.DeleteLastPicture;
end;

function TFprnM45.Delivery: Integer;
begin
  Result := DefaultInterface.Delivery;
end;

function TFprnM45.DemoPrint: Integer;
begin
  Result := DefaultInterface.DemoPrint;
end;

function TFprnM45.DisplayDraw: Integer;
begin
  Result := DefaultInterface.DisplayDraw;
end;

function TFprnM45.DisplayWrite: Integer;
begin
  Result := DefaultInterface.DisplayWrite;
end;

function TFprnM45.DeviceEnableEx: Integer;
begin
  Result := DefaultInterface.DeviceEnableEx;
end;

function TFprnM45.PrintLastCheckCopy: Integer;
begin
  Result := DefaultInterface.PrintLastCheckCopy;
end;

function TFprnM45.OpenDirectory: Integer;
begin
  Result := DefaultInterface.OpenDirectory;
end;

function TFprnM45.ReadDirectory: Integer;
begin
  Result := DefaultInterface.ReadDirectory;
end;

function TFprnM45.OpenFile: Integer;
begin
  Result := DefaultInterface.OpenFile;
end;

function TFprnM45.CloseFile: Integer;
begin
  Result := DefaultInterface.CloseFile;
end;

function TFprnM45.CloseDirectory: Integer;
begin
  Result := DefaultInterface.CloseDirectory;
end;

function TFprnM45.ReadFile: Integer;
begin
  Result := DefaultInterface.ReadFile;
end;

function TFprnM45.DeleteFileFromSD: Integer;
begin
  Result := DefaultInterface.DeleteFileFromSD;
end;

function TFprnM45.WriteFileToSD: Integer;
begin
  Result := DefaultInterface.WriteFileToSD;
end;

function TFprnM45.PowerOff: Integer;
begin
  Result := DefaultInterface.PowerOff;
end;

function TFprnM45.PortPowerOn: Integer;
begin
  Result := DefaultInterface.PortPowerOn;
end;

function TFprnM45.PortPowerOff: Integer;
begin
  Result := DefaultInterface.PortPowerOff;
end;

function TFprnM45.PortSendData: Integer;
begin
  Result := DefaultInterface.PortSendData;
end;

function TFprnM45.PortSyncGetData: Integer;
begin
  Result := DefaultInterface.PortSyncGetData;
end;

function TFprnM45.PortConfig: Integer;
begin
  Result := DefaultInterface.PortConfig;
end;

function TFprnM45.PortStatus: Integer;
begin
  Result := DefaultInterface.PortStatus;
end;

function TFprnM45.PrintBarcodeByNumber: Integer;
begin
  Result := DefaultInterface.PrintBarcodeByNumber;
end;

function TFprnM45.ClearBarcodeArray: Integer;
begin
  Result := DefaultInterface.ClearBarcodeArray;
end;

function TFprnM45.GetBarcodeArrayState: Integer;
begin
  Result := DefaultInterface.GetBarcodeArrayState;
end;

function TFprnM45.ReadBarcode: Integer;
begin
  Result := DefaultInterface.ReadBarcode;
end;

function TFprnM45.DeleteBarcode: Integer;
begin
  Result := DefaultInterface.DeleteBarcode;
end;

function TFprnM45.EJState: Integer;
begin
  Result := DefaultInterface.EJState;
end;

function TFprnM45.WriteAttribute: Integer;
begin
  Result := DefaultInterface.WriteAttribute;
end;

function TFprnM45.ReadAttribute: Integer;
begin
  Result := DefaultInterface.ReadAttribute;
end;

function TFprnM45.ReadFNStatus: Integer;
begin
  Result := DefaultInterface.ReadFNStatus;
end;

function TFprnM45.ReadFNParam: Integer;
begin
  Result := DefaultInterface.ReadFNParam;
end;

function TFprnM45.Stub: Integer;
begin
  Result := DefaultInterface.Stub;
end;

function TFprnM45.EKLZActivate: Integer;
begin
  Result := DefaultInterface.EKLZActivate;
end;

function TFprnM45.EKLZCloseArchive: Integer;
begin
  Result := DefaultInterface.EKLZCloseArchive;
end;

function TFprnM45.EKLZGetStatus: Integer;
begin
  Result := DefaultInterface.EKLZGetStatus;
end;

function TFprnM45.EnableDeferredZReports: Integer;
begin
  Result := DefaultInterface.EnableDeferredZReports;
end;

function TFprnM45.EndAdd: Integer;
begin
  Result := DefaultInterface.EndAdd;
end;

function TFprnM45.EndDocument: Integer;
begin
  Result := DefaultInterface.EndDocument;
end;

function TFprnM45.EndFiscDocument: Integer;
begin
  Result := DefaultInterface.EndFiscDocument;
end;

function TFprnM45.EndReport: Integer;
begin
  Result := DefaultInterface.EndReport;
end;

function TFprnM45.ExecSystemOperation: Integer;
begin
  Result := DefaultInterface.ExecSystemOperation;
end;

function TFprnM45.Fiscalization: Integer;
begin
  Result := DefaultInterface.Fiscalization;
end;

function TFprnM45.FullCut: Integer;
begin
  Result := DefaultInterface.FullCut;
end;

function TFprnM45.FindIPDevices(Timeour: Integer): WideString;
begin
  Result := DefaultInterface.FindIPDevices(Timeour);
end;

function TFprnM45.EndItem: Integer;
begin
  Result := DefaultInterface.EndItem;
end;

function TFprnM45.EndComplexAttribute: Integer;
begin
  Result := DefaultInterface.EndComplexAttribute;
end;

function TFprnM45.CheckStatusSKNO: Integer;
begin
  Result := DefaultInterface.CheckStatusSKNO;
end;

function TFprnM45.GetCaption: Integer;
begin
  Result := DefaultInterface.GetCaption;
end;

function TFprnM45.GetCurrentMode: Integer;
begin
  Result := DefaultInterface.GetCurrentMode;
end;

function TFprnM45.GetDeviceMetrics: Integer;
begin
  Result := DefaultInterface.GetDeviceMetrics;
end;

function TFprnM45.GetLastError: Integer;
begin
  Result := DefaultInterface.GetLastError;
end;

function TFprnM45.GetLastSummary: Integer;
begin
  Result := DefaultInterface.GetLastSummary;
end;

function TFprnM45.GetLicense: Integer;
begin
  Result := DefaultInterface.GetLicense;
end;

function TFprnM45.GetPassword: Integer;
begin
  Result := DefaultInterface.GetPassword;
end;

function TFprnM45.GetRange: Integer;
begin
  Result := DefaultInterface.GetRange;
end;

function TFprnM45.GetRecord: Integer;
begin
  Result := DefaultInterface.GetRecord;
end;

function TFprnM45.GetRegister: Integer;
begin
  Result := DefaultInterface.GetRegister;
end;

function TFprnM45.GetSettings: Integer;
begin
  Result := DefaultInterface.GetSettings;
end;

function TFprnM45.GetStatus: Integer;
begin
  Result := DefaultInterface.GetStatus;
end;

function TFprnM45.GetStatusPicture: Integer;
begin
  Result := DefaultInterface.GetStatusPicture;
end;

function TFprnM45.GetStatusPictureArray: Integer;
begin
  Result := DefaultInterface.GetStatusPictureArray;
end;

function TFprnM45.GetSumm: Integer;
begin
  Result := DefaultInterface.GetSumm;
end;

function TFprnM45.GetSupportedMode: Integer;
begin
  Result := DefaultInterface.GetSupportedMode;
end;

function TFprnM45.GetUnitVersion: Integer;
begin
  Result := DefaultInterface.GetUnitVersion;
end;

function TFprnM45.GetValue: Integer;
begin
  Result := DefaultInterface.GetValue;
end;

function TFprnM45.InitSettings: Integer;
begin
  Result := DefaultInterface.InitSettings;
end;

function TFprnM45.InputRoute: Integer;
begin
  Result := DefaultInterface.InputRoute;
end;

function TFprnM45.LoadDevicesSettings: Integer;
begin
  Result := DefaultInterface.LoadDevicesSettings;
end;

function TFprnM45.LockKeyboard: Integer;
begin
  Result := DefaultInterface.LockKeyboard;
end;

function TFprnM45.NewDocument: Integer;
begin
  Result := DefaultInterface.NewDocument;
end;

function TFprnM45.OpenCheck: Integer;
begin
  Result := DefaultInterface.OpenCheck;
end;

function TFprnM45.OpenDrawer: Integer;
begin
  Result := DefaultInterface.OpenDrawer;
end;

function TFprnM45.OpenSession: Integer;
begin
  Result := DefaultInterface.OpenSession;
end;

function TFprnM45.PartialCut: Integer;
begin
  Result := DefaultInterface.PartialCut;
end;

function TFprnM45.Payment: Integer;
begin
  Result := DefaultInterface.Payment;
end;

function TFprnM45.PercentsCharge: Integer;
begin
  Result := DefaultInterface.PercentsCharge;
end;

function TFprnM45.PercentsDiscount: Integer;
begin
  Result := DefaultInterface.PercentsDiscount;
end;

function TFprnM45.PrintBarcode: Integer;
begin
  Result := DefaultInterface.PrintBarcode;
end;

function TFprnM45.PrintBitMap: Integer;
begin
  Result := DefaultInterface.PrintBitMap;
end;

function TFprnM45.PrintBitMapFromFile: Integer;
begin
  Result := DefaultInterface.PrintBitMapFromFile;
end;

function TFprnM45.PrinterWrite: Integer;
begin
  Result := DefaultInterface.PrinterWrite;
end;

function TFprnM45.PrintField: Integer;
begin
  Result := DefaultInterface.PrintField;
end;

function TFprnM45.PrintFooter: Integer;
begin
  Result := DefaultInterface.PrintFooter;
end;

function TFprnM45.PrintHeader: Integer;
begin
  Result := DefaultInterface.PrintHeader;
end;

function TFprnM45.PrintPicture: Integer;
begin
  Result := DefaultInterface.PrintPicture;
end;

function TFprnM45.PrintString: Integer;
begin
  Result := DefaultInterface.PrintString;
end;

function TFprnM45.Registration: Integer;
begin
  Result := DefaultInterface.Registration;
end;

function TFprnM45.Report: Integer;
begin
  Result := DefaultInterface.Report;
end;

function TFprnM45.ResetChargeDiscount: Integer;
begin
  Result := DefaultInterface.ResetChargeDiscount;
end;

function TFprnM45.ResetMode: Integer;
begin
  Result := DefaultInterface.ResetMode;
end;

function TFprnM45.ResetSettings: Integer;
begin
  Result := DefaultInterface.ResetSettings;
end;

function TFprnM45.ResetSummary: Integer;
begin
  Result := DefaultInterface.ResetSummary;
end;

function TFprnM45.ResetTax: Integer;
begin
  Result := DefaultInterface.ResetTax;
end;

function TFprnM45.Return: Integer;
begin
  Result := DefaultInterface.Return;
end;

function TFprnM45.RunCommand: Integer;
begin
  Result := DefaultInterface.RunCommand;
end;

function TFprnM45.SaveDevicesSettings: Integer;
begin
  Result := DefaultInterface.SaveDevicesSettings;
end;

function TFprnM45.SetCaption: Integer;
begin
  Result := DefaultInterface.SetCaption;
end;

function TFprnM45.SetDate: Integer;
begin
  Result := DefaultInterface.SetDate;
end;

function TFprnM45.SetDateTime: Integer;
begin
  Result := DefaultInterface.SetDateTime;
end;

function TFprnM45.SetLicense: Integer;
begin
  Result := DefaultInterface.SetLicense;
end;

function TFprnM45.SetMode: Integer;
begin
  Result := DefaultInterface.SetMode;
end;

function TFprnM45.SetPassword: Integer;
begin
  Result := DefaultInterface.SetPassword;
end;

function TFprnM45.SetPointPosition: Integer;
begin
  Result := DefaultInterface.SetPointPosition;
end;

function TFprnM45.SetRecord: Integer;
begin
  Result := DefaultInterface.SetRecord;
end;

function TFprnM45.SetSerialNumber: Integer;
begin
  Result := DefaultInterface.SetSerialNumber;
end;

function TFprnM45.SetSettings: Integer;
begin
  Result := DefaultInterface.SetSettings;
end;

function TFprnM45.SetTime: Integer;
begin
  Result := DefaultInterface.SetTime;
end;

function TFprnM45.SetValue: Integer;
begin
  Result := DefaultInterface.SetValue;
end;

function TFprnM45.ShowProperties: Integer;
begin
  Result := DefaultInterface.ShowProperties;
end;

function TFprnM45.Sound: Integer;
begin
  Result := DefaultInterface.Sound;
end;

function TFprnM45.Storno: Integer;
begin
  Result := DefaultInterface.Storno;
end;

function TFprnM45.StornoPayment: Integer;
begin
  Result := DefaultInterface.StornoPayment;
end;

function TFprnM45.SubResult: Integer;
begin
  Result := DefaultInterface.SubResult;
end;

function TFprnM45.SummCharge: Integer;
begin
  Result := DefaultInterface.SummCharge;
end;

function TFprnM45.SummDiscount: Integer;
begin
  Result := DefaultInterface.SummDiscount;
end;

function TFprnM45.SummTax: Integer;
begin
  Result := DefaultInterface.SummTax;
end;

function TFprnM45.TestDevice: Integer;
begin
  Result := DefaultInterface.TestDevice;
end;

function TFprnM45.UnlockKeyboard: Integer;
begin
  Result := DefaultInterface.UnlockKeyboard;
end;

function TFprnM45.WriteSMLog(const str: WideString): Integer;
begin
  Result := DefaultInterface.WriteSMLog(str);
end;

procedure TFprnM8.InitControlData;
const
  CLicenseKey: array[0..38] of Word = ( $007B, $0042, $0034, $0037, $0032, $0033, $0038, $0046, $0039, $002D, $0041
    , $0030, $0036, $0038, $002D, $0034, $0039, $0042, $0044, $002D, $0041
    , $0038, $0038, $0031, $002D, $0042, $0042, $0044, $0038, $0037, $0036
    , $0045, $0044, $0046, $0042, $0039, $0031, $007D, $0000);
  CControlData: TControlData2 = (
    ClassID: '{D2E5F71A-3DC8-4657-A093-D535A8021090}';
    EventIID: '';
    EventCount: 0;
    EventDispIDs: nil;
    LicenseKey: @CLicenseKey;
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
end;

procedure TFprnM8.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IFprnM45;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TFprnM8.GetControlInterface: IFprnM45;
begin
  CreateControl;
  Result := FIntf;
end;

function TFprnM8.AboutBox: Integer;
begin
  Result := DefaultInterface.AboutBox;
end;

function TFprnM8.AddDevice: Integer;
begin
  Result := DefaultInterface.AddDevice;
end;

function TFprnM8.AddField: Integer;
begin
  Result := DefaultInterface.AddField;
end;

function TFprnM8.AddPictureFromFile: Integer;
begin
  Result := DefaultInterface.AddPictureFromFile;
end;

function TFprnM8.AdvancedDisplayWrite: Integer;
begin
  Result := DefaultInterface.AdvancedDisplayWrite;
end;

function TFprnM8.AdvancedOpenDrawer: Integer;
begin
  Result := DefaultInterface.AdvancedOpenDrawer;
end;

function TFprnM8.Annulate: Integer;
begin
  Result := DefaultInterface.Annulate;
end;

function TFprnM8.Beep: Integer;
begin
  Result := DefaultInterface.Beep;
end;

function TFprnM8.BeginAdd: Integer;
begin
  Result := DefaultInterface.BeginAdd;
end;

function TFprnM8.BeginDocument: Integer;
begin
  Result := DefaultInterface.BeginDocument;
end;

function TFprnM8.BeginFiscDocument: Integer;
begin
  Result := DefaultInterface.BeginFiscDocument;
end;

function TFprnM8.BeginReport: Integer;
begin
  Result := DefaultInterface.BeginReport;
end;

function TFprnM8.Buy: Integer;
begin
  Result := DefaultInterface.Buy;
end;

function TFprnM8.BuyAnnulate: Integer;
begin
  Result := DefaultInterface.BuyAnnulate;
end;

function TFprnM8.BuyReturn: Integer;
begin
  Result := DefaultInterface.BuyReturn;
end;

function TFprnM8.BeginItem: Integer;
begin
  Result := DefaultInterface.BeginItem;
end;

function TFprnM8.BeginComplexAttribute: Integer;
begin
  Result := DefaultInterface.BeginComplexAttribute;
end;

function TFprnM8.CancelCheck: Integer;
begin
  Result := DefaultInterface.CancelCheck;
end;

function TFprnM8.CardGetType: Integer;
begin
  Result := DefaultInterface.CardGetType;
end;

function TFprnM8.CardRead: Integer;
begin
  Result := DefaultInterface.CardRead;
end;

function TFprnM8.CardWrite: Integer;
begin
  Result := DefaultInterface.CardWrite;
end;

function TFprnM8.CashIncome: Integer;
begin
  Result := DefaultInterface.CashIncome;
end;

function TFprnM8.CashOutcome: Integer;
begin
  Result := DefaultInterface.CashOutcome;
end;

function TFprnM8.ClearOutput: Integer;
begin
  Result := DefaultInterface.ClearOutput;
end;

function TFprnM8.ClearPictureArray: Integer;
begin
  Result := DefaultInterface.ClearPictureArray;
end;

function TFprnM8.CloseCheck: Integer;
begin
  Result := DefaultInterface.CloseCheck;
end;

function TFprnM8.DeleteDevice: Integer;
begin
  Result := DefaultInterface.DeleteDevice;
end;

function TFprnM8.DeleteLastPicture: Integer;
begin
  Result := DefaultInterface.DeleteLastPicture;
end;

function TFprnM8.Delivery: Integer;
begin
  Result := DefaultInterface.Delivery;
end;

function TFprnM8.DemoPrint: Integer;
begin
  Result := DefaultInterface.DemoPrint;
end;

function TFprnM8.DisplayDraw: Integer;
begin
  Result := DefaultInterface.DisplayDraw;
end;

function TFprnM8.DisplayWrite: Integer;
begin
  Result := DefaultInterface.DisplayWrite;
end;

function TFprnM8.DeviceEnableEx: Integer;
begin
  Result := DefaultInterface.DeviceEnableEx;
end;

function TFprnM8.PrintLastCheckCopy: Integer;
begin
  Result := DefaultInterface.PrintLastCheckCopy;
end;

function TFprnM8.OpenDirectory: Integer;
begin
  Result := DefaultInterface.OpenDirectory;
end;

function TFprnM8.ReadDirectory: Integer;
begin
  Result := DefaultInterface.ReadDirectory;
end;

function TFprnM8.OpenFile: Integer;
begin
  Result := DefaultInterface.OpenFile;
end;

function TFprnM8.CloseFile: Integer;
begin
  Result := DefaultInterface.CloseFile;
end;

function TFprnM8.CloseDirectory: Integer;
begin
  Result := DefaultInterface.CloseDirectory;
end;

function TFprnM8.ReadFile: Integer;
begin
  Result := DefaultInterface.ReadFile;
end;

function TFprnM8.DeleteFileFromSD: Integer;
begin
  Result := DefaultInterface.DeleteFileFromSD;
end;

function TFprnM8.WriteFileToSD: Integer;
begin
  Result := DefaultInterface.WriteFileToSD;
end;

function TFprnM8.PowerOff: Integer;
begin
  Result := DefaultInterface.PowerOff;
end;

function TFprnM8.PortPowerOn: Integer;
begin
  Result := DefaultInterface.PortPowerOn;
end;

function TFprnM8.PortPowerOff: Integer;
begin
  Result := DefaultInterface.PortPowerOff;
end;

function TFprnM8.PortSendData: Integer;
begin
  Result := DefaultInterface.PortSendData;
end;

function TFprnM8.PortSyncGetData: Integer;
begin
  Result := DefaultInterface.PortSyncGetData;
end;

function TFprnM8.PortConfig: Integer;
begin
  Result := DefaultInterface.PortConfig;
end;

function TFprnM8.PortStatus: Integer;
begin
  Result := DefaultInterface.PortStatus;
end;

function TFprnM8.PrintBarcodeByNumber: Integer;
begin
  Result := DefaultInterface.PrintBarcodeByNumber;
end;

function TFprnM8.ClearBarcodeArray: Integer;
begin
  Result := DefaultInterface.ClearBarcodeArray;
end;

function TFprnM8.GetBarcodeArrayState: Integer;
begin
  Result := DefaultInterface.GetBarcodeArrayState;
end;

function TFprnM8.ReadBarcode: Integer;
begin
  Result := DefaultInterface.ReadBarcode;
end;

function TFprnM8.DeleteBarcode: Integer;
begin
  Result := DefaultInterface.DeleteBarcode;
end;

function TFprnM8.EJState: Integer;
begin
  Result := DefaultInterface.EJState;
end;

function TFprnM8.WriteAttribute: Integer;
begin
  Result := DefaultInterface.WriteAttribute;
end;

function TFprnM8.ReadAttribute: Integer;
begin
  Result := DefaultInterface.ReadAttribute;
end;

function TFprnM8.ReadFNStatus: Integer;
begin
  Result := DefaultInterface.ReadFNStatus;
end;

function TFprnM8.ReadFNParam: Integer;
begin
  Result := DefaultInterface.ReadFNParam;
end;

function TFprnM8.Stub: Integer;
begin
  Result := DefaultInterface.Stub;
end;

function TFprnM8.EKLZActivate: Integer;
begin
  Result := DefaultInterface.EKLZActivate;
end;

function TFprnM8.EKLZCloseArchive: Integer;
begin
  Result := DefaultInterface.EKLZCloseArchive;
end;

function TFprnM8.EKLZGetStatus: Integer;
begin
  Result := DefaultInterface.EKLZGetStatus;
end;

function TFprnM8.EnableDeferredZReports: Integer;
begin
  Result := DefaultInterface.EnableDeferredZReports;
end;

function TFprnM8.EndAdd: Integer;
begin
  Result := DefaultInterface.EndAdd;
end;

function TFprnM8.EndDocument: Integer;
begin
  Result := DefaultInterface.EndDocument;
end;

function TFprnM8.EndFiscDocument: Integer;
begin
  Result := DefaultInterface.EndFiscDocument;
end;

function TFprnM8.EndReport: Integer;
begin
  Result := DefaultInterface.EndReport;
end;

function TFprnM8.ExecSystemOperation: Integer;
begin
  Result := DefaultInterface.ExecSystemOperation;
end;

function TFprnM8.Fiscalization: Integer;
begin
  Result := DefaultInterface.Fiscalization;
end;

function TFprnM8.FullCut: Integer;
begin
  Result := DefaultInterface.FullCut;
end;

function TFprnM8.FindIPDevices(Timeour: Integer): WideString;
begin
  Result := DefaultInterface.FindIPDevices(Timeour);
end;

function TFprnM8.EndItem: Integer;
begin
  Result := DefaultInterface.EndItem;
end;

function TFprnM8.EndComplexAttribute: Integer;
begin
  Result := DefaultInterface.EndComplexAttribute;
end;

function TFprnM8.CheckStatusSKNO: Integer;
begin
  Result := DefaultInterface.CheckStatusSKNO;
end;

function TFprnM8.GetCaption: Integer;
begin
  Result := DefaultInterface.GetCaption;
end;

function TFprnM8.GetCurrentMode: Integer;
begin
  Result := DefaultInterface.GetCurrentMode;
end;

function TFprnM8.GetDeviceMetrics: Integer;
begin
  Result := DefaultInterface.GetDeviceMetrics;
end;

function TFprnM8.GetLastError: Integer;
begin
  Result := DefaultInterface.GetLastError;
end;

function TFprnM8.GetLastSummary: Integer;
begin
  Result := DefaultInterface.GetLastSummary;
end;

function TFprnM8.GetLicense: Integer;
begin
  Result := DefaultInterface.GetLicense;
end;

function TFprnM8.GetPassword: Integer;
begin
  Result := DefaultInterface.GetPassword;
end;

function TFprnM8.GetRange: Integer;
begin
  Result := DefaultInterface.GetRange;
end;

function TFprnM8.GetRecord: Integer;
begin
  Result := DefaultInterface.GetRecord;
end;

function TFprnM8.GetRegister: Integer;
begin
  Result := DefaultInterface.GetRegister;
end;

function TFprnM8.GetSettings: Integer;
begin
  Result := DefaultInterface.GetSettings;
end;

function TFprnM8.GetStatus: Integer;
begin
  Result := DefaultInterface.GetStatus;
end;

function TFprnM8.GetStatusPicture: Integer;
begin
  Result := DefaultInterface.GetStatusPicture;
end;

function TFprnM8.GetStatusPictureArray: Integer;
begin
  Result := DefaultInterface.GetStatusPictureArray;
end;

function TFprnM8.GetSumm: Integer;
begin
  Result := DefaultInterface.GetSumm;
end;

function TFprnM8.GetSupportedMode: Integer;
begin
  Result := DefaultInterface.GetSupportedMode;
end;

function TFprnM8.GetUnitVersion: Integer;
begin
  Result := DefaultInterface.GetUnitVersion;
end;

function TFprnM8.GetValue: Integer;
begin
  Result := DefaultInterface.GetValue;
end;

function TFprnM8.InitSettings: Integer;
begin
  Result := DefaultInterface.InitSettings;
end;

function TFprnM8.InputRoute: Integer;
begin
  Result := DefaultInterface.InputRoute;
end;

function TFprnM8.LoadDevicesSettings: Integer;
begin
  Result := DefaultInterface.LoadDevicesSettings;
end;

function TFprnM8.LockKeyboard: Integer;
begin
  Result := DefaultInterface.LockKeyboard;
end;

function TFprnM8.NewDocument: Integer;
begin
  Result := DefaultInterface.NewDocument;
end;

function TFprnM8.OpenCheck: Integer;
begin
  Result := DefaultInterface.OpenCheck;
end;

function TFprnM8.OpenDrawer: Integer;
begin
  Result := DefaultInterface.OpenDrawer;
end;

function TFprnM8.OpenSession: Integer;
begin
  Result := DefaultInterface.OpenSession;
end;

function TFprnM8.PartialCut: Integer;
begin
  Result := DefaultInterface.PartialCut;
end;

function TFprnM8.Payment: Integer;
begin
  Result := DefaultInterface.Payment;
end;

function TFprnM8.PercentsCharge: Integer;
begin
  Result := DefaultInterface.PercentsCharge;
end;

function TFprnM8.PercentsDiscount: Integer;
begin
  Result := DefaultInterface.PercentsDiscount;
end;

function TFprnM8.PrintBarcode: Integer;
begin
  Result := DefaultInterface.PrintBarcode;
end;

function TFprnM8.PrintBitMap: Integer;
begin
  Result := DefaultInterface.PrintBitMap;
end;

function TFprnM8.PrintBitMapFromFile: Integer;
begin
  Result := DefaultInterface.PrintBitMapFromFile;
end;

function TFprnM8.PrinterWrite: Integer;
begin
  Result := DefaultInterface.PrinterWrite;
end;

function TFprnM8.PrintField: Integer;
begin
  Result := DefaultInterface.PrintField;
end;

function TFprnM8.PrintFooter: Integer;
begin
  Result := DefaultInterface.PrintFooter;
end;

function TFprnM8.PrintHeader: Integer;
begin
  Result := DefaultInterface.PrintHeader;
end;

function TFprnM8.PrintPicture: Integer;
begin
  Result := DefaultInterface.PrintPicture;
end;

function TFprnM8.PrintString: Integer;
begin
  Result := DefaultInterface.PrintString;
end;

function TFprnM8.Registration: Integer;
begin
  Result := DefaultInterface.Registration;
end;

function TFprnM8.Report: Integer;
begin
  Result := DefaultInterface.Report;
end;

function TFprnM8.ResetChargeDiscount: Integer;
begin
  Result := DefaultInterface.ResetChargeDiscount;
end;

function TFprnM8.ResetMode: Integer;
begin
  Result := DefaultInterface.ResetMode;
end;

function TFprnM8.ResetSettings: Integer;
begin
  Result := DefaultInterface.ResetSettings;
end;

function TFprnM8.ResetSummary: Integer;
begin
  Result := DefaultInterface.ResetSummary;
end;

function TFprnM8.ResetTax: Integer;
begin
  Result := DefaultInterface.ResetTax;
end;

function TFprnM8.Return: Integer;
begin
  Result := DefaultInterface.Return;
end;

function TFprnM8.RunCommand: Integer;
begin
  Result := DefaultInterface.RunCommand;
end;

function TFprnM8.SaveDevicesSettings: Integer;
begin
  Result := DefaultInterface.SaveDevicesSettings;
end;

function TFprnM8.SetCaption: Integer;
begin
  Result := DefaultInterface.SetCaption;
end;

function TFprnM8.SetDate: Integer;
begin
  Result := DefaultInterface.SetDate;
end;

function TFprnM8.SetDateTime: Integer;
begin
  Result := DefaultInterface.SetDateTime;
end;

function TFprnM8.SetLicense: Integer;
begin
  Result := DefaultInterface.SetLicense;
end;

function TFprnM8.SetMode: Integer;
begin
  Result := DefaultInterface.SetMode;
end;

function TFprnM8.SetPassword: Integer;
begin
  Result := DefaultInterface.SetPassword;
end;

function TFprnM8.SetPointPosition: Integer;
begin
  Result := DefaultInterface.SetPointPosition;
end;

function TFprnM8.SetRecord: Integer;
begin
  Result := DefaultInterface.SetRecord;
end;

function TFprnM8.SetSerialNumber: Integer;
begin
  Result := DefaultInterface.SetSerialNumber;
end;

function TFprnM8.SetSettings: Integer;
begin
  Result := DefaultInterface.SetSettings;
end;

function TFprnM8.SetTime: Integer;
begin
  Result := DefaultInterface.SetTime;
end;

function TFprnM8.SetValue: Integer;
begin
  Result := DefaultInterface.SetValue;
end;

function TFprnM8.ShowProperties: Integer;
begin
  Result := DefaultInterface.ShowProperties;
end;

function TFprnM8.Sound: Integer;
begin
  Result := DefaultInterface.Sound;
end;

function TFprnM8.Storno: Integer;
begin
  Result := DefaultInterface.Storno;
end;

function TFprnM8.StornoPayment: Integer;
begin
  Result := DefaultInterface.StornoPayment;
end;

function TFprnM8.SubResult: Integer;
begin
  Result := DefaultInterface.SubResult;
end;

function TFprnM8.SummCharge: Integer;
begin
  Result := DefaultInterface.SummCharge;
end;

function TFprnM8.SummDiscount: Integer;
begin
  Result := DefaultInterface.SummDiscount;
end;

function TFprnM8.SummTax: Integer;
begin
  Result := DefaultInterface.SummTax;
end;

function TFprnM8.TestDevice: Integer;
begin
  Result := DefaultInterface.TestDevice;
end;

function TFprnM8.UnlockKeyboard: Integer;
begin
  Result := DefaultInterface.UnlockKeyboard;
end;

function TFprnM8.WriteSMLog(const str: WideString): Integer;
begin
  Result := DefaultInterface.WriteSMLog(str);
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TATOL_KKM_1C, TFprnM45, TFprnM8]);
  RegisterComponents(dtlServerPage, [TATOL_Fptr, TATOL_Cash]);
end;

end.
