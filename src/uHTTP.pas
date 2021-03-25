{*******************************************************}
{                                                       }
{                BorderContrroller                      }
{                                                       }
{           Copyright (C) 2017 G-An Tech                }
{                                                       }
{   Copyright and license exceptions noted in source    }
{                                                       }
{*******************************************************}

unit uHTTP;

interface

uses
  Windows, SysUtils, HTTPApp, IdHTTP, XMLDoc, XMLIntf, ActiveX, Classes, Dialogs,
  System.Net.URLClient, System.Generics.Collections, Soap.EncdDecd, Forms,
  IdMultipartFormData, SHDocVw, jpeg;

const
  SERVER_ADDRESS = 'http://192.168.3.142:8050'; // °³¹ß¼­

function HTTPGet(ServerAddress, sPage, sParam : string) : string; overload;
function HTTPGet(ServerAddress, sPage : string; slParam : TStringList) : IXMLDocument; overload;
function HTTPGet(ServerAddress: string; var AStream: TMemoryStream) : Int64; overload;
function HTTPGet(ServerAddress: string) : string; overload;
function HTTPBlob(ServerAddress, sPage, sParam : string) : string;
function HTTPJson(ServerAddress, sPage : string; ReqJson : TStringStream) : string; overload;
function HTTPJson(ServerAddress, sPage : string; ReqJson : string) : string; overload;
function HTTPUploadFile(ServerAddress, sPage : string; ReqJson : string) : string; overload;
function HTTPUploadFile(ServerAddress : string; ReqStream : TIdMultiPartFormDataStream) : string; overload;

implementation

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//  Procedure: HTTPGet                                                        //
//  Author:    Seungryong Kim @ G-An Tech                                     //
//  DateTime:  2017.08.25                                                     //
//  Arguments: ServerAddress, sPage, sParam : string                          //
//  Result:    string                                                         //
//  Purpose:                                                                  //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function HTTPGet(ServerAddress, sPage, sParam : string) : string;
var
  HTTP: TIdHTTP;
  Query: String;
  Buffer: String;
  Doc: IXMLDocument;
  Node: IXMLNode;
begin
  Result := '';
  try
    HTTP := TIdHTTP.Create;

    // Build query
    // For more information, see http://www.mediawiki.org/wiki/API:Query
    Query := ServerAddress + sPage + '?' + sParam;

    // HTTP GET request
    Buffer := HTTP.Get(Query);

    // Create XML document
    Doc := TXMLDocument.Create(nil);

    // Build XML document from HTTP response
    Doc.LoadFromXML(Buffer);

    // Display document content
//    Writeln(Doc.XML.Text);
    Result := Doc.XML.Text;

    // Get main node
    Node := Doc.ChildNodes.FindNode('resultFingerSpecData');

    // Process XML data
    // ...
    Result := Node.ChildNodes.FindNode('gid').Text;

    HTTP.Destroy;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//  Procedure: HTTPGet                                                        //
//  Author:    Seungryong Kim @ G-An Tech                                     //
//  DateTime:  2017.08.25                                                     //
//  Arguments: ServerAddress, sPage : string; slParam : TStringList           //
//  Result:    IXMLDocument                                                   //
//  Purpose:                                                                  //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function HTTPGet(ServerAddress, sPage : string; slParam : TStringList) : IXMLDocument;
var
  HTTP: TIdHTTP;
  Query: String;
  Buffer: String;
  Doc: IXMLDocument;
  Node: IXMLNode;
  i : Integer;
begin
  Result := nil;
  try
    HTTP := TIdHTTP.Create;

    // Build query
    // For more information, see http://www.mediawiki.org/wiki/API:Query
//    Query := ServerAddress + '/w' + '/api.php?' +
//      'action=query&prop=revisions&rvprop=content&format=xml&titles=' +
//      String(HTTPEncode('Main Page'));
//    Query := 'http://192.168.3.28:8080/map/info.xml?gid=1&content=Result&title=Marshalling';
    Query := ServerAddress + sPage + '?';

    for i := 0 to slParam.Count - 1 do
    begin
      Query := Query + slParam[i];
      if (i < slParam.Count - 1) then Query := Query + '&';
    end;

    // HTTP GET request
    Buffer := HTTP.Get(Query);

    // Create XML document
    Doc := TXMLDocument.Create(nil);

    // Build XML document from HTTP response
    Doc.LoadFromXML(Buffer);

    // Display document content
//    Writeln(Doc.XML.Text);
    Result := Doc;

    HTTP.Destroy;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

function HTTPGet(ServerAddress: string; var AStream: TMemoryStream) : Int64;
var
  HTTP: TIdHTTP;
//  jpg: TJPEGImage;
  Stream: TMemoryStream;
begin
  Result := -1;

  Stream := TMemoryStream.Create;
  try
//    jpg := TJPEGImage.Create;
    try
      HTTP := TIdHTTP.Create;
      Stream.Clear;
      try
        HTTP.Get(ServerAddress, Stream);
        HTTP.Destroy;
      except
        on E: Exception do
          Writeln(E.ClassName, ': ', E.Message);
      end;
      Stream.Position := 0;
      AStream.Clear;
      AStream.CopyFrom(Stream, Stream.Size);
      Result := AStream.Size;
//      jpg.LoadFromStream(Stream);

    finally
//      jpg.Free;
    end;
  finally
    Stream.Free;
  end;
end;

function HTTPGet(ServerAddress: string) : string;
var
  HTTP: TIdHTTP;
begin
  Result := '';

  HTTP := TIdHTTP.Create;
  try
    Result := HTTP.Get(ServerAddress);
    HTTP.Destroy;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//  Procedure: HTTPBlob                                                       //
//  Author:    Seungryong Kim @ G-An Tech                                     //
//  DateTime:  2017.08.25                                                     //
//  Arguments: ServerAddress, sPage, sParam : string                          //
//  Result:    string                                                         //
//  Purpose:                                                                  //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function HTTPBlob(ServerAddress, sPage, sParam : string) : string;
var
  HTTP: TIdHTTP;
  Query: String;
  Buffer: String;
  Doc: IXMLDocument;
  Node: IXMLNode;
begin
  Result := '';
  try
    HTTP := TIdHTTP.Create;

    // Build query
    // For more information, see http://www.mediawiki.org/wiki/API:Query
//    Query := 'http://192.168.3.28:8080/mrp/passno.xml?PassNo=M32782095';
    Query := SERVER_ADDRESS + '/face/regno.xml?RegNo=KORGAN1700000001';

    // HTTP GET request
    Buffer := HTTP.Get(Query);

    // Create XML document
    Doc := TXMLDocument.Create(nil);

    // Build XML document from HTTP response
    Doc.LoadFromXML(Buffer);

    // Display document content
//    Writeln(Doc.XML.Text);
//    Result := Doc.XML.Text;

    // Get main node
    Node := Doc.ChildNodes.FindNode('SelectFaceImg');

    // Process XML data
    // ...
    Result := Node.ChildNodes.FindNode('faceImg').Text;

    HTTP.Destroy;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//  Procedure: HTTPJson                                                       //
//  Author:    Seungryong Kim @ G-An Tech                                     //
//  DateTime:  2017.08.25                                                     //
//  Arguments: ServerAddress, sPage : string; ReqJson : TStringStream         //
//  Result:    string                                                         //
//  Purpose:                                                                  //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function HTTPJson(ServerAddress, sPage : string; ReqJson : TStringStream) : string;
var
  HTTP: TIdHTTP;
begin
  Result := '';

  HTTP := TIdHTTP.Create;
  HTTP.HandleRedirects := True;
  HTTP.Request.Accept := 'application/json';
  HTTP.Request.ContentType := 'application/json';

  // HTTP POST request
  Result := HTTP.Post(ServerAddress + sPage, ReqJson);

  HTTP.Destroy;
end;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//  Procedure: HTTPJson                                                       //
//  Author:    Seungryong Kim @ G-An Tech                                     //
//  DateTime:  2017.08.25                                                     //
//  Arguments: ServerAddress, sPage : string; ReqJson : string                //
//  Result:    string                                                         //
//  Purpose:                                                                  //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function HTTPJson(ServerAddress, sPage : string; ReqJson : string) : string;
var
  HTTP: TIdHTTP;
begin
  Result := '';

  HTTP := TIdHTTP.Create;
  HTTP.HandleRedirects := True;
  HTTP.Request.ContentType := 'application/json';
  HTTP.Request.ContentEncoding := 'UTF-8';

  // HTTP POST request
  Result := HTTP.Post(ServerAddress + sPage, ReqJson);

  HTTP.Destroy;
end;

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//  Procedure: HTTPUploadFile                                                 //
//  Author:    Seungryong Kim @ G-An Tech                                     //
//  DateTime:  2018.10.10                                                     //
//  Arguments: ServerAddress, sPage : string; ReqJson : string                //
//  Result:    string                                                         //
//  Purpose:                                                                  //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
function HTTPUploadFile(ServerAddress, sPage : string; ReqJson : string) : string;
var
  HTTP: TIdHTTP;
  PostStream: TIdMultiPartFormDataStream;
  ResponseStream: TMemoryStream;
begin
  Result := '';

  HTTP := TIdHTTP.Create;
  PostStream := TIdMultiPartFormDataStream.Create;
  ResponseStream := TMemoryStream.Create;

  try
    HTTP.Request.ContentType := PostStream.RequestContentType;
    PostStream.AddFile('file',ReqJson,sContentTypeFormData);
    Result := HTTP.Post(ServerAddress, PostStream);
  finally
    PostStream.Free;
    ResponseStream.Free;
    HTTP.Destroy;
  end;
end;

function HTTPUploadFile(ServerAddress : string; ReqStream : TIdMultiPartFormDataStream) : string;
var
  HTTP: TIdHTTP;
begin
  Result := '';
  HTTP := TIdHTTP.Create;

  try
    HTTP.Request.ContentType := ReqStream.RequestContentType;
    Result := HTTP.Post(ServerAddress, ReqStream);
  finally
    HTTP.Destroy;
  end;
end;

end.
