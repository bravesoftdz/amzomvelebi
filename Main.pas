﻿unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.MultiView, FMX.StdCtrls, System.Actions,
  FMX.ActnList, FMX.Objects, FMX.Layouts, FMX.Ani, FMX.Effects,
  FMX.Filter.Effects, System.ImageList, FMX.ImgList, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  Data.Bind.Components, Data.Bind.ObjectScope, System.JSON, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter, REST.Client, Data.Bind.DBScope,
  System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, FMX.TabControl, FMX.Gestures, System.Threading,
  System.PushNotification,
  System.Notification,
  FMX.ScrollBox, FMX.Memo,
  DW.PushClient, IdURI, System.IOUtils,
  Inifiles, FMX.Header, User2ListFR,
  FMX.LoadingIndicator
{$IFDEF ANDROID}
    , // System.Android.Service,
  FMX.PushNotification.Android,
  Androidapi.JNI.App,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Os,
  Androidapi.Helpers,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  // Androidapi.JNI.PlayServices,
  Androidapi.JNI.Net,
  Androidapi.JNI.Telephony,
  Androidapi.JNI.Provider
{$ENDIF ANDROID}
{$IFDEF IOS}
    , FMX.PushNotification.IOS
{$ENDIF};

type
  TMainForm = class(TForm)
    ActionList1: TActionList;
    AuthAction: TAction;
    RectangleNonAuth: TRectangle;
    ButtonAuthReg: TButton;
    RectangleProfile: TRectangle;
    ButtonUserNotifications: TButton;
    ActionAppAdding: TAction;
    ActionUserArea: TAction;
    RESTRequestVersioning: TRESTRequest;
    RESTResponseVersioning: TRESTResponse;
    TimerVersioning: TTimer;
    BindingsList1: TBindingsList;
    TabControl1: TTabControl;
    TabItemMain: TTabItem;
    TabItemUserArea: TTabItem;
    TabControl2: TTabControl;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    Rectangle4: TRectangle;
    GestureManager1: TGestureManager;
    ActiontabSliderRight: TAction;
    ActiontabSliderLeft: TAction;
    FloatAnimation1: TFloatAnimation;
    ChangeTabActionRight: TChangeTabAction;
    ChangeTabActionLeft: TChangeTabAction;
    StyleBook1: TStyleBook;
    ButtonSettings: TButton;
    Rectangle3: TRectangle;
    RectangleApps: TRectangle;
    Circle1: TCircle;
    LabelTotalAppsCount: TLabel;
    ButtonSignOut: TButton;
    ActionSignOut: TAction;
    RESTRequestSignOut: TRESTRequest;
    RESTResponseSignOut: TRESTResponse;
    Rectangle5: TRectangle;
    Rectangle9: TRectangle;
    Text1: TText;
    RESTResponseDataSetAdapterInit: TRESTResponseDataSetAdapter;
    FDMemTableInit: TFDMemTable;
    PreloaderRectangle: TRectangle;
    RESTResponseDataSetAdapterPages: TRESTResponseDataSetAdapter;
    FDMemTablePages: TFDMemTable;
    FDMemTablePagesid: TWideStringField;
    FDMemTablePagesgroup_id: TWideStringField;
    FDMemTablePageslang_id: TWideStringField;
    FDMemTablePagestitle: TWideStringField;
    FDMemTablePagescontent: TWideStringField;
    FDMemTablePagesmeta_keywords: TWideStringField;
    FDMemTablePagesmeta_description: TWideStringField;
    FDMemTablePagescreate_date: TWideStringField;
    FDMemTablePagesmodify_date: TWideStringField;
    BindSourceDB1: TBindSourceDB;
    LinkPropertyToFieldText: TLinkPropertyToField;
    Circle2: TCircle;
    LabelWeekApps: TLabel;
    Rectangle1: TRectangle;
    ImageList1: TImageList;
    ButtonRegAmzomveli: TButton;
    RectangleMainHeader: TRectangle;
    ButtonMasterView: TButton;
    ActionRegAmzomveli: TAction;
    ButtonLocationsConfig: TButton;
    ActionUserNotifications: TAction;
    Label1: TLabel;
    BindSourceDB2: TBindSourceDB;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    LabelApps: TLabel;
    ButtonServiceTypes: TButton;
    ActionServiceTypes: TAction;
    ActionLocationsConfig: TAction;
    MultiView1: TMultiView;
    RESTRequestDeviceToken: TRESTRequest;
    NotificationCenter1: TNotificationCenter;
    RESTResponseDataSetAdapterAuth: TRESTResponseDataSetAdapter;
    FDMemTableAuth: TFDMemTable;
    FDMemTableAuthid: TWideStringField;
    FDMemTableAuthuser_type_id: TWideStringField;
    FDMemTableAuthuser_status_id: TWideStringField;
    FDMemTableAuthfname: TWideStringField;
    FDMemTableAuthlname: TWideStringField;
    FDMemTableAuthphone: TWideStringField;
    FDMemTableAuthemail: TWideStringField;
    FDMemTableAuthcreate_date: TWideStringField;
    FDMemTableAuthmodify_date: TWideStringField;
    FDMemTableAuthregipaddr: TWideStringField;
    FDMemTableAuthsesskey: TWideStringField;
    FDMemTableAuthloginstatus: TWideStringField;
    FDMemTableAuthisSetLocations: TWideStringField;
    ActionRegGanmcxadebeli: TAction;
    LabelFullName: TLabel;
    FMXLoadingIndicator1: TFMXLoadingIndicator;
    TabItemAmzomvelebi: TTabItem;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    ButtonAmzReg: TButton;
    ButtonAuth: TButton;
    Image1: TImage;
    User2ListFrame1: TUser2ListFrame;
    Label2: TLabel;
    FDMemTableInitaction: TWideStringField;
    FDMemTableInittotal_apps_count: TWideStringField;
    FDMemTableInitweek_apps_count: TWideStringField;
    FDMemTableInitusers2count: TWideStringField;
    FDMemTableInitmsg: TWideStringField;
    FDMemTableInitpages: TWideStringField;
    FDMemTableInitapp_name: TWideStringField;
    FDMemTableInitGCMAppID: TWideStringField;
    FDMemTableInitGCMServerKey: TWideStringField;
    FDMemTableInituser: TWideStringField;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    ButtonContracts: TButton;
    ActionMyContracts: TAction;
    ImageLogo: TImage;
    TabItemBidedApps: TTabItem;
    ListView1: TListView;
    RESTRequestMyBidedApps: TRESTRequest;
    RESTResponseBidedApps: TRESTResponse;
    RESTResponseDataSetAdapterBidedApps: TRESTResponseDataSetAdapter;
    FDMemTableBidedApps: TFDMemTable;
    FDMemTableBidedAppsid: TWideStringField;
    FDMemTableBidedAppsuser_id: TWideStringField;
    FDMemTableBidedAppsdeadlineby_user: TWideStringField;
    FDMemTableBidedAppsexecute_days: TWideStringField;
    FDMemTableBidedAppsimageIndex: TWideStringField;
    FDMemTableBidedAppsusername: TWideStringField;
    FDMemTableBidedAppsnote: TWideStringField;
    FDMemTableBidedAppsapp_status_id: TWideStringField;
    FDMemTableBidedAppsnotification_on_email: TWideStringField;
    FDMemTableBidedAppsnotification_on_device: TWideStringField;
    FDMemTableBidedAppscreate_date: TWideStringField;
    FDMemTableBidedAppsoffered_price: TWideStringField;
    FDMemTableBidedAppsstart_date: TWideStringField;
    FDMemTableBidedAppsoffered_description: TWideStringField;
    FDMemTableBidedAppsapproved_on_time: TWideStringField;
    FDMemTableBidedAppsapproved_note: TWideStringField;
    FDMemTableBidedAppsapproved: TWideStringField;
    FDMemTableBidedAppsapproved_id: TWideStringField;
    FDMemTableBidedAppsapp_property_requisites: TWideStringField;
    FDMemTableBidedAppslocation: TWideStringField;
    FDMemTableBidedAppsarea: TWideStringField;
    FDMemTableBidedAppsapp_property_requisites_count: TWideStringField;
    FDMemTableBidedAppsdropdownarrow_imageindex: TWideStringField;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    procedure AuthActionExecute(Sender: TObject);
    procedure ActionUserAreaExecute(Sender: TObject);
    procedure TimerVersioningTimer(Sender: TObject);
    procedure RESTRequestVersioningAfterExecute(Sender: TCustomRESTRequest);
    procedure ChangeTabActionRightUpdate(Sender: TObject);
    procedure ChangeTabActionLeftUpdate(Sender: TObject);
    procedure ActionSignOutExecute(Sender: TObject);
    procedure RESTRequestSignOutAfterExecute(Sender: TCustomRESTRequest);
    procedure RectangleAppsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActionUserNotificationsExecute(Sender: TObject);
    procedure ActionServiceTypesExecute(Sender: TObject);
    procedure ActionLocationsConfigExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure NotificationCenter1ReceiveLocalNotification(Sender: TObject; ANotification: TNotification);
    procedure ActionRegAmzomveliExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Rectangle1Click(Sender: TObject);
    procedure User2ListFrame1Button1Click(Sender: TObject);
    procedure ActionMyContractsExecute(Sender: TObject);
    procedure RESTRequestMyBidedAppsAfterExecute(Sender: TCustomRESTRequest);
    procedure ListView1UpdatingObjects(const Sender: TObject; const AItem: TListViewItem; var AHandled: Boolean);
    procedure TabControl1Change(Sender: TObject);
  private
    procedure PushClientChangeHandler(Sender: TObject; AChange: TPushService.TChanges);
    procedure PushClientReceiveNotificationHandler(Sender: TObject; const ANotification: TPushServiceNotification);
{$IFDEF ANDROID}
    // procedure ServiceAppStart;
    // function isServiceStarted: Boolean;
{$ENDIF ANDROID}
    procedure checkVersion;
    procedure loginRequest(hash, phone, email: string);
    procedure clearINIParams;
    function getDeviceID: string;
    procedure loadMyBidedApps;
    // procedure OnServiceConnectionChange(Sender: TObject; AChange: TPushService.TChanges);
    // function isServiceStarted: Boolean;

    { Private declarations }
  public
    { Public declarations }
    FPushClient: TPushClient;
    app_id, user_id, action: string;
    procedure DoAuthenticate;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

uses auth, DataModule, UserArea, AppList,
  UserLocations, UserNotifications, UserServiceTypes, AppDetails,
  UserAmzomveliReg, MyContracts, User2Review;

procedure TMainForm.DoAuthenticate;
begin
  if not DModule.user_type_id = 2 then
  begin
    ShowMessage
      ('თქვენ ხართ დარეგისტრირებული როგორც დამკვეთი, გთხოვთ ჩამოწეროთ თქვენს მოწყობილობაში მეორე აპლიკაცია რომელიც არის განკუთვნილი დამკვეთებისთვის.');
    self.Close;
  end;
  self.RectangleNonAuth.Visible := False;
  LabelFullName.Text := DModule.full_name;
  ButtonUserNotifications.Text := '(' + DModule.notifications.ToString + ') შეტყობინებები';
  self.RectangleProfile.Visible := True;
  FPushClient.Active := True;
  ButtonAmzReg.Visible := False;
  ButtonAuth.Visible := False;
  self.loadMyBidedApps;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  self.PreloaderRectangle.Visible := True;
  TabItemBidedApps.Visible := False;
  FPushClient := TPushClient.Create;
  FPushClient.GCMAppID := '33239165112';
  // FPushClient.ServerKey :=
  // 'AAAA-dL2vgs:APA91bHselPykPJp2XxIRxe4mmUhR5G_onOl0a1bPLS_zGaertyAxYuKMXEAPFHnHiwr7GmZEyO7fXux8jka_9sYo1DtCENhk8X7wvPA8CxCl9uJlQuBHukNtjgtMJidSi_xoBeYJZ1W';
  // FPushClient.BundleID := cFCMBundleID;

  FPushClient.UseSandbox := True; // Change this to False for production use!
  FPushClient.OnChange := PushClientChangeHandler;
  FPushClient.OnReceiveNotification := PushClientReceiveNotificationHandler;

  User2ListFrame1.initFrame;
end;

procedure TMainForm.PushClientReceiveNotificationHandler(Sender: TObject; const ANotification: TPushServiceNotification);
var
  MyNotification: TNotification;
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(TPath.Combine(TPath.GetHomePath, DModule.settingsIniFile));
  MyNotification := NotificationCenter1.CreateNotification;
  try
    self.action := ANotification.DataObject.Values['action'].ToString.Replace('"', '');
    self.app_id := ANotification.DataObject.Values['app_id'].ToString.Replace('"', '');
    self.user_id := ANotification.DataObject.Values['user_id'].ToString.Replace('"', '');

    MyNotification.Name := ANotification.DataObject.Values['app_id'].ToString.Replace('"', '');
    MyNotification.Title := ANotification.DataObject.Values['title'].ToString.Replace('"', '');
    MyNotification.AlertBody := ANotification.DataObject.Values['message'].ToString.Replace('"', '') + self.action;
    MyNotification.EnableSound := True;
    MyNotification.Number := 18;
    MyNotification.HasAction := True;
    MyNotification.AlertAction := 'Launch';
    NotificationCenter1.PresentNotification(MyNotification);

    Ini.AutoSave := True;
    Ini.WriteString('notification', 'action', self.action);
    Ini.WriteString('notification', 'app_id', self.app_id);
    Ini.WriteString('notification', 'user_id', self.user_id);
  finally
    Ini.Free;
    MyNotification.DisposeOf;
  end;
end;

procedure TMainForm.NotificationCenter1ReceiveLocalNotification(Sender: TObject; ANotification: TNotification);
var
  Ini: TIniFile;
begin
  self.NotificationCenter1.CancelNotification(ANotification.Name);
  Ini := TIniFile.Create(TPath.Combine(TPath.GetHomePath, DModule.settingsIniFile));
  try
    action := Ini.ReadString('notification', 'action', '');
    ShowMessage(self.action);
    app_id := Ini.ReadString('notification', 'app_id', '');
    user_id := Ini.ReadString('notification', 'user_id', '');
    if action = 'TAppDetailForm' then
    begin
      with TAppDetailForm.Create(Application) do
      begin
        initForm(self.app_id.ToInteger);
      end;
    end
    else if action = 'TUser2ReviewForm' then
    begin
      if user_id.ToInteger > 0 then
      begin
        with TUser2ReviewForm.Create(Application) do
        begin
          initForm(user_id.ToInteger);
        end;
      end;
    end;
  finally
    Ini.Free;
  end;
end;

procedure TMainForm.Rectangle1Click(Sender: TObject);
var
  MyNotification: TNotification;
begin
  MyNotification := NotificationCenter1.CreateNotification;
  try
    MyNotification.Name := '12';
    MyNotification.Title := 'test';
    MyNotification.AlertBody :=
      'When users set notifications for apps on their mobile devices, notifications can be delivered from apps in the three basic styles shown here. The banner appears briefly, but the alert dialog box requires dismissal by the user.';
    MyNotification.EnableSound := True;
    MyNotification.Number := 18;
    MyNotification.HasAction := True;
    MyNotification.AlertAction := 'Launch';
    NotificationCenter1.PresentNotification(MyNotification);
  finally
    MyNotification.DisposeOf;
  end;
end;

procedure TMainForm.PushClientChangeHandler(Sender: TObject; AChange: TPushService.TChanges);
var
  aTask: ITask;
begin
  if TPushService.TChange.DeviceToken in AChange then
  begin
    aTask := TTask.Create(
      procedure()
      begin
        TThread.Synchronize(nil,
          procedure
          begin
            RESTRequestDeviceToken.Params.Clear;
            with RESTRequestDeviceToken.Params.AddItem do
            begin
              name := 'deviceid';
              Value := self.getDeviceID;
            end;
            with RESTRequestDeviceToken.Params.AddItem do
            begin
              name := 'devicetoken';
              Value := TIdURI.ParamsEncode(FPushClient.DeviceToken);
            end;
            with RESTRequestDeviceToken.Params.AddItem do
            begin
              name := 'sesskey';
              Value := DModule.sesskey;
            end;
            with RESTRequestDeviceToken.Params.AddItem do
            begin
              name := 'user_id';
              Value := DModule.id.ToString;
            end;
            RESTRequestDeviceToken.Execute;
          end);
      end);
    aTask.Start;
  end;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  FPushClient.Free;
end;

procedure TMainForm.ActionRegAmzomveliExecute(Sender: TObject);
begin
  // ამზომველის რეგისტრაცია
  with TUserAmzomveliRegForm.Create(Application) do
  begin
    initForm;
  end;
end;

procedure TMainForm.ActionLocationsConfigExecute(Sender: TObject);
begin
  with TUserLocationsForm.Create(Application) do
  begin
    initForm;
  end;
end;

procedure TMainForm.ActionMyContractsExecute(Sender: TObject);
begin
  with TMyContractsForm.Create(Application) do
  begin
    initForm;
  end;
end;

procedure TMainForm.ActionServiceTypesExecute(Sender: TObject);
begin
  with TUserServiceTypesForm.Create(Application) do
  begin
    initForm;
  end;
end;

procedure TMainForm.ActionSignOutExecute(Sender: TObject);
var
  aTask: ITask;
begin
  TimerVersioning.Enabled := False;
  aTask := TTask.Create(
    procedure()
    begin
      TThread.Synchronize(nil,
        procedure
        begin
          RESTRequestSignOut.Params.Clear;
          with RESTRequestSignOut.Params.AddItem do
          begin
            name := 'sesskey';
            Value := DModule.sesskey;
          end;
          with RESTRequestSignOut.Params.AddItem do
          begin
            name := 'user_id';
            Value := DModule.id.ToString;
          end;
          RESTRequestSignOut.Execute;
        end);
    end);
  try
    aTask.Start;
  finally
    // aTask.Free;
  end;
end;

procedure TMainForm.ActionUserAreaExecute(Sender: TObject);
begin
  with TUserAreaForm.Create(Application) do
  begin
    initForm;
  end;
end;

procedure TMainForm.ActionUserNotificationsExecute(Sender: TObject);
begin
  with TUserNotificationsForm.Create(Application) do
  begin
    initForm;
  end;
end;

procedure TMainForm.AuthActionExecute(Sender: TObject);
begin
  with TauthForm.Create(Application) do
  begin
    initForm;
  end;
end;

procedure TMainForm.loadMyBidedApps;
var
  aTask: ITask;
begin
  aTask := TTask.Create(
    procedure()
    begin
      TThread.Synchronize(nil,
        procedure
        begin
          if not DModule.sesskey.IsEmpty then
          begin
            RESTRequestMyBidedApps.Params.Clear;
            with RESTRequestMyBidedApps.Params.AddItem do
            begin
              name := 'sesskey';
              Value := DModule.sesskey;
            end;
            with RESTRequestMyBidedApps.Params.AddItem do
            begin
              name := 'user_id';
              Value := DModule.id.ToString;
            end;
            RESTRequestMyBidedApps.Execute;
          end;
        end);
    end);
  aTask.Start;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  self.TabControl1.ActiveTab := TabItemAmzomvelebi;
  self.MultiView1.HideMaster;
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
  TabControl1.ActiveTab := TabItemUserArea;
  self.MultiView1.HideMaster;
end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
  self.MultiView1.HideMaster;
  with TAppListForm.Create(Application) do
  begin
    initForm;
  end;
end;

procedure TMainForm.ChangeTabActionRightUpdate(Sender: TObject);
begin
  if TabControl2.TabIndex > 0 then
    ChangeTabActionLeft.Tab := TabControl2.Tabs[TabControl2.TabIndex - 1]
  else
    ChangeTabActionLeft.Tab := nil;
end;

procedure TMainForm.ChangeTabActionLeftUpdate(Sender: TObject);
begin
  if TabControl2.TabIndex < TabControl2.TabCount - 1 then
    ChangeTabActionRight.Tab := TabControl2.Tabs[TabControl2.TabIndex + 1]
  else
    ChangeTabActionRight.Tab := nil;
end;

procedure TMainForm.RectangleAppsClick(Sender: TObject);
begin
  with TAppListForm.Create(Application) do
  begin
    initForm;
  end;
end;

procedure TMainForm.RESTRequestMyBidedAppsAfterExecute(Sender: TCustomRESTRequest);
begin
  TabItemBidedApps.Visible := True;
end;

procedure TMainForm.RESTRequestSignOutAfterExecute(Sender: TCustomRESTRequest);
begin
  RectangleProfile.Visible := False;
  RectangleNonAuth.Visible := True;
  TabItemBidedApps.Visible := False;
  DModule.SignOut;
  self.clearINIParams;
end;

procedure TMainForm.RESTRequestVersioningAfterExecute(Sender: TCustomRESTRequest);
begin
  self.PreloaderRectangle.Visible := False;
  self.checkVersion;
end;

procedure TMainForm.TabControl1Change(Sender: TObject);
begin
  if TabControl1.ActiveTab = TabItemBidedApps then
    self.loadMyBidedApps;
end;

procedure TMainForm.TimerVersioningTimer(Sender: TObject);
var
  aTask: ITask;
begin
  TimerVersioning.Enabled := False;
  aTask := TTask.Create(
    procedure()
    begin
      TThread.Synchronize(nil,
        procedure
        var
          Ini: TIniFile;
        begin
          Ini := TIniFile.Create(TPath.Combine(TPath.GetHomePath, DModule.settingsIniFile));
          try
            Ini.AutoSave := True;
            RESTRequestVersioning.Params.Clear;
            with RESTRequestVersioning.Params.AddItem do
            begin
              name := 'version';
              Value := DModule.currentVersion;
            end;
            if Ini.ReadString('auth', 'hash', '').IsEmpty = False then
            begin
              with RESTRequestVersioning.Params.AddItem do
              begin
                name := 'op';
                Value := 'login_with_hash';
              end;
              with RESTRequestVersioning.Params.AddItem do
              begin
                name := 'hash';
                Value := Ini.ReadString('auth', 'hash', '');
              end;
              with RESTRequestVersioning.Params.AddItem do
              begin
                name := 'phone';
                Value := Ini.ReadString('auth', 'phone', '');
              end;
              with RESTRequestVersioning.Params.AddItem do
              begin
                name := 'email';
                Value := Ini.ReadString('auth', 'email', '');
              end;
            end;
            RESTRequestVersioning.Execute;
          finally
            Ini.Free;
          end;
        end);
    end);
  aTask.Start;
end;

procedure TMainForm.User2ListFrame1Button1Click(Sender: TObject);
begin
  // PreloaderRectangle.Visible := True;
  User2ListFrame1.Button1Click(Sender);
end;

procedure TMainForm.checkVersion;
var
  jsonObject, UserObject: TJSONObject;
  msg: string;
  action: integer;
begin
  jsonObject := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(self.RESTResponseVersioning.Content), 0) as TJSONObject;
  UserObject := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(jsonObject.GetValue('user').ToJSON), 0) as TJSONObject;
  try
    action := jsonObject.GetValue('action').Value.ToInteger;
    msg := jsonObject.GetValue('msg').Value;
    if action = 1 then
    begin
      ShowMessage(msg);
      self.Close;
    end;

    if UserObject.GetValue('loginstatus').Value = '1' then
    begin
      DModule.id := UserObject.GetValue('id').Value.ToInteger;
      DModule.user_type_id := UserObject.GetValue('user_type_id').Value.ToInteger;
      DModule.full_name := UserObject.GetValue('full_name').Value;
      DModule.phone := UserObject.GetValue('phone').Value;
      DModule.email := UserObject.GetValue('email').Value;
      DModule.sesskey := UserObject.GetValue('sesskey').Value;
      self.DoAuthenticate;
    end
    else
      self.clearINIParams;
    // LabelTotalAppsCount.Text := jsonObject.GetValue('total_apps_count').Value;
    // LabelWeekApps.Text := jsonObject.GetValue('week_apps_count').Value;
    FPushClient.GCMAppID := jsonObject.GetValue('Amzomvelebi_GCMAppID').Value;
    FPushClient.ServerKey := jsonObject.GetValue('Amzomvelebi_GCMServerKey').Value;

    FPushClient.UseSandbox := True; // Change this to False for production use!
    FPushClient.OnChange := PushClientChangeHandler;
    FPushClient.OnReceiveNotification := PushClientReceiveNotificationHandler;
  finally
    jsonObject.Free;
    UserObject.Free;
  end;
end;

procedure TMainForm.clearINIParams;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(TPath.Combine(TPath.GetHomePath, DModule.settingsIniFile));
  try
    Ini.AutoSave := True;
    Ini.WriteString('auth', 'hash', '');
    Ini.WriteString('auth', 'full_name', '');
    Ini.WriteString('auth', 'phone', '');
    Ini.WriteString('auth', 'email', '');
    Ini.WriteString('auth', 'fname', '');
  finally
    Ini.Free;
  end;
end;

procedure TMainForm.loginRequest(hash, phone, email: string);
begin
  PreloaderRectangle.Visible := True;
end;

{$IFDEF IOS}

function TMainForm.getDeviceID: string;
begin
  Result := 'iOS';
end;
{$ENDIF IOS}
{$IFDEF ANDROID}

function TMainForm.getDeviceID: string;
var
  obj: JObject;
  tm: JTelephonyManager;
  identifier: String;
begin
  obj := TAndroidHelper.Context.getSystemService(TJContext.JavaClass.TELEPHONY_SERVICE);
  if obj <> nil then
  begin
    tm := TJTelephonyManager.Wrap((obj as ILocalObject).GetObjectID);
    if tm <> nil then
      identifier := JStringToString(tm.getDeviceID);
  end;
  if identifier = '' then
    identifier := JStringToString(TJSettings_Secure.JavaClass.getString(TAndroidHelper.Activity.getContentResolver,
      TJSettings_Secure.JavaClass.ANDROID_ID));
  Result := identifier;
end;
{$ENDIF ANDROID}

procedure TMainForm.ListView1UpdatingObjects(const Sender: TObject; const AItem: TListViewItem; var AHandled: Boolean);
begin
  //
  // AItem.
end;

end.