unit uConst;

interface

uses
  DB, Graphics, Winapi.Windows;

const
  POS_X1 = 6;
  POS_Y1 = 86;
  BTN_WIDTH = 104;
  BTN_HEIGHT = 24;
  CMD_INDEX = 2;
  FOLDER_ANNOTATION = 'Annotations';
  FOLDER_IMAGESET = 'ImageSets';
  FOLDER_JPEGIMAGE = 'JPEGImages';

type
  TTagInfo = (tiDamage, tiDent);
  TJsonProperty = (jpInit, jpFrame, jpBoxes, jpMinX, jpMinY, jpMaxX, jpMaxY, jpIDNum, jpWidth, jpHeight, jpTagList, jpName, jpInputTags, jpVisitedFrames, jpTagColors);
  TClearArea = (caAll, caAction, caLog, caImage, caUpload);
  TActFunction = (afCount, afPreCount, afMoveFile, afResize, afResizeAll,
                  afRenameOnly, afSeperate, afPackage, afUploadImage, afDevide,
                  afCompWH, afProgressCount, afLoadImage);

type
  TColumnInfo = record
    colName: string;
    colType: TFieldType;
    colLength: Integer;
    blobFinish: Boolean;
  end;

  TInfoTable = record
    tableName: string;
    colInfo: array of TColumnInfo;
    colCount: Integer;
    blobCount: Integer;
  end;

  TConfigInfo = record
    OverlayMode: Boolean;
    Animation: Boolean;
    CompactWidth: Integer;
    SkinComboIndex: Integer;
    Maximize: Boolean;
    Sizable: Boolean;
    StayOnTop: Boolean;
  end;

  TObjectColor = record
    ObjName: string;
    ObjColor: TColor;
  end;
  TObjectColorArray = array of TObjectColor;

  TObjInfo = record
    Seq: Integer;
    ClassName: string;
    ClassAccuracy: Integer;
    Xmin: Double;
    Xmax: Double;
    Ymin: Double;
    Ymax: Double;
    Score: Double;
    BoxVisible: Boolean;
    ObjProp: TObjectColor;
    IsNewObj: Boolean;
  end;
  TObjInfoArray = array of TObjInfo;

  TEvaluation = record
    Index: Integer;
    FileName: string;
    TP: Integer;
    FP: Integer;
    FN: Integer;
    TN: Integer;
    Precision: Double;
    Recall: Double;
    Accuracy: Double;
    FScore: Double;
  end;
  TEvalArray = array of TEvaluation;

  TBoxInfo = record
    hobj: Integer;
    BeginPoint: TPoint;
    EndPoint: TPoint;
    TagList: string;
  end;
  TBoxInfoArray = array of TBoxInfo;

  TSavedPicture = record
    iFrame: Integer;
    PictureFilePath: string;
    BoxInfo: TBoxInfoArray;
    Width: Integer;
    Height: Integer;
  end;
  TSavedPictureArray = array of TSavedPicture;

var
  FObjColorArray: TObjectColorArray;
  FObjInfoArray: TObjInfoArray;
  FEvalArray: TEvalArray;

implementation

end.
