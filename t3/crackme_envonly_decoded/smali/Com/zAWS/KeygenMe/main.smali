.class public LCom/zAWS/KeygenMe/main;
.super Landroid/app/Activity;
.source "main.java"

# interfaces
.implements Lanywheresoftware/b4a/B4AActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCom/zAWS/KeygenMe/main$1;,
        LCom/zAWS/KeygenMe/main$ResumeMessage;,
        LCom/zAWS/KeygenMe/main$B4AMenuItemsClickListener;,
        LCom/zAWS/KeygenMe/main$WaitForLayout;
    }
.end annotation


# static fields
.field public static _array_p1:[Ljava/lang/String; = null

.field public static _file_name:Ljava/lang/String; = null

.field public static _imei:Ljava/lang/String; = null

.field public static _key_from_imei_number:I = 0x0

.field public static _mac_address:Ljava/lang/String; = null

.field public static _yes_reg:Ljava/lang/String; = null

.field static afterFirstLayout:Z = false

.field private static final fullScreen:Z = false

.field private static final includeTitle:Z = true

.field static isFirst:Z

.field static mostCurrent:LCom/zAWS/KeygenMe/main;

.field public static previousOne:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static processBA:Lanywheresoftware/b4a/BA;

.field private static processGlobalsRun:Z


# instance fields
.field public __c:Lanywheresoftware/b4a/keywords/Common;

.field _activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

.field public _bconv:Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;

.field public _bmp:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

.field public _bmpl:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

.field public _bmpul:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

.field public _imagev:Lanywheresoftware/b4a/objects/ImageViewWrapper;

.field public _myphone:Lanywheresoftware/b4a/phone/Phone$PhoneId;

.field public _mywifi:Lcom/AB/ABWifi/ABWifi;

.field activityBA:Lanywheresoftware/b4a/BA;

.field layout:Lanywheresoftware/b4a/BALayout;

.field menuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lanywheresoftware/b4a/B4AMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private onKeySubExist:Ljava/lang/Boolean;

.field private onKeyUpSubExist:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v1, ""

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, LCom/zAWS/KeygenMe/main;->isFirst:Z

    .line 20
    sput-boolean v2, LCom/zAWS/KeygenMe/main;->processGlobalsRun:Z

    .line 209
    const-string v0, ""

    sput-object v1, LCom/zAWS/KeygenMe/main;->_mac_address:Ljava/lang/String;

    .line 210
    const-string v0, ""

    sput-object v1, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    .line 213
    const-string v0, ""

    sput-object v1, LCom/zAWS/KeygenMe/main;->_yes_reg:Ljava/lang/String;

    .line 215
    const-string v0, ""

    sput-object v1, LCom/zAWS/KeygenMe/main;->_file_name:Ljava/lang/String;

    .line 216
    sput v2, LCom/zAWS/KeygenMe/main;->_key_from_imei_number:I

    .line 217
    const/4 v0, 0x0

    sput-object v0, LCom/zAWS/KeygenMe/main;->_array_p1:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 124
    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->onKeySubExist:Ljava/lang/Boolean;

    .line 125
    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->onKeyUpSubExist:Ljava/lang/Boolean;

    .line 204
    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->__c:Lanywheresoftware/b4a/keywords/Common;

    .line 205
    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->_bmp:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    .line 206
    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->_bconv:Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;

    .line 207
    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->_mywifi:Lcom/AB/ABWifi/ABWifi;

    .line 208
    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->_myphone:Lanywheresoftware/b4a/phone/Phone$PhoneId;

    .line 211
    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->_bmpul:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    .line 212
    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->_bmpl:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    .line 214
    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->_imagev:Lanywheresoftware/b4a/objects/ImageViewWrapper;

    return-void
.end method

.method public static _about_click()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v3, ""

    const-string v2, "\n"

    .line 219
    const-string v0, ""

    .line 222
    const-string v0, ""

    .line 224
    const-string v0, "Keygen Me #1\n"

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Written by zAWS!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Please Visit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http://tpodt.com/forum/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "To Learn how To keygen Android Applications"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Greeting :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TEAM-BLZ , mr.exodia"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v1, LCom/zAWS/KeygenMe/main;->_yes_reg:Ljava/lang/String;

    sget-object v2, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v2, v2, LCom/zAWS/KeygenMe/main;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-static {v0, v1, v2}, Lanywheresoftware/b4a/keywords/Common;->Msgbox(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;)V

    .line 238
    const-string v0, ""

    return-object v3
.end method

.method public static _activate_click()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v3, ""

    .line 241
    const-string v0, ""

    .line 242
    const-string v0, ""

    .line 245
    const-string v0, "Input Your Code:"

    const-string v1, "Registration"

    const-string v2, ""

    const-string v2, ""

    invoke-static {v0, v1, v3, v3}, LCom/zAWS/KeygenMe/main;->_inputbox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string v1, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-static {}, LCom/zAWS/KeygenMe/main;->_hide_kk()Ljava/lang/String;

    .line 251
    const-string v0, ""

    move-object v0, v3

    .line 285
    :goto_0
    return-object v0

    .line 254
    :cond_0
    invoke-static {v0}, Lanywheresoftware/b4a/keywords/Common;->IsNumber(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lanywheresoftware/b4a/keywords/Common;->Not(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    invoke-static {}, LCom/zAWS/KeygenMe/main;->_hide_kk()Ljava/lang/String;

    .line 258
    const-string v0, ""

    move-object v0, v3

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    .line 263
    invoke-static {}, LCom/zAWS/KeygenMe/main;->_hide_kk()Ljava/lang/String;

    .line 265
    const-string v0, ""

    move-object v0, v3

    goto :goto_0

    .line 268
    :cond_2
    const-string v1, ""

    .line 270
    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v1, LCom/zAWS/KeygenMe/main;->_mac_address:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 272
    invoke-static {}, LCom/zAWS/KeygenMe/main;->_made_key()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {v0, v1}, LCom/zAWS/KeygenMe/main;->_encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    :cond_3
    invoke-static {}, LCom/zAWS/KeygenMe/main;->_hide_kk()Ljava/lang/String;

    .line 279
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->CloseMenu()V

    .line 281
    const-string v0, "Please Restart Application to complete Activation process!"

    const-string v1, "Thank you"

    sget-object v2, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v2, v2, LCom/zAWS/KeygenMe/main;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-static {v0, v1, v2}, Lanywheresoftware/b4a/keywords/Common;->Msgbox(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;)V

    .line 283
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->Finish()V

    .line 285
    const-string v0, ""

    move-object v0, v3

    goto :goto_0
.end method

.method public static _activity_create(Z)Ljava/lang/String;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const-string v11, "Activate"

    const-string v10, "About"

    const-string v8, ""

    .line 288
    .line 289
    const-string v0, ""

    .line 292
    const-string v0, ""

    .line 297
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    const-string v0, "Unregistered Copy!"

    sput-object v0, LCom/zAWS/KeygenMe/main;->_yes_reg:Ljava/lang/String;

    .line 299
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    const-string v1, "1"

    sget-object v2, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v2, v2, LCom/zAWS/KeygenMe/main;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, v1, v2}, Lanywheresoftware/b4a/objects/ActivityWrapper;->LoadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;

    .line 301
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_imagev:Lanywheresoftware/b4a/objects/ImageViewWrapper;

    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v1, v1, LCom/zAWS/KeygenMe/main;->activityBA:Lanywheresoftware/b4a/BA;

    const-string v2, ""

    invoke-virtual {v0, v1, v8}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 303
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v1, v1, LCom/zAWS/KeygenMe/main;->_imagev:Lanywheresoftware/b4a/objects/ImageViewWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x23

    invoke-static {v2}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v2

    const/16 v3, 0x37

    invoke-static {v3}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v3

    const/16 v4, 0xfa

    invoke-static {v4}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v4

    const/16 v5, 0x10e

    invoke-static {v5}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/objects/ActivityWrapper;->AddView(Landroid/view/View;IIII)V

    .line 305
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_imagev:Lanywheresoftware/b4a/objects/ImageViewWrapper;

    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->Gravity:Lanywheresoftware/b4a/keywords/constants/Gravity;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->setGravity(I)V

    .line 307
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_bmp:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirAssets()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Keys64.png"

    invoke-virtual {v0, v1, v2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->Initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_bmpul:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirAssets()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unlock.png"

    invoke-virtual {v0, v1, v2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->Initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_bmpl:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    sget-object v1, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirAssets()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lock.png"

    invoke-virtual {v0, v1, v2}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->Initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_mywifi:Lcom/AB/ABWifi/ABWifi;

    sget-object v1, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, v1}, Lcom/AB/ABWifi/ABWifi;->ABLoadWifi(Lanywheresoftware/b4a/BA;)Z

    move-result v0

    const-string v0, "00:11:22:33:44:55"

    sput-object v0, LCom/zAWS/KeygenMe/main;->_mac_address:Ljava/lang/String;

    goto :cond_1

    .line 315
    if-ne v0, v9, :cond_0

    .line 317
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_mywifi:Lcom/AB/ABWifi/ABWifi;

    invoke-virtual {v0}, Lcom/AB/ABWifi/ABWifi;->ABGetCurrentWifiInfo()Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->MacAddress:Ljava/lang/String;

    sput-object v0, LCom/zAWS/KeygenMe/main;->_mac_address:Ljava/lang/String;

    .line 319
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v0, LCom/zAWS/KeygenMe/main;->_mac_address:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 321
    invoke-static {}, LCom/zAWS/KeygenMe/main;->_emulator_dete()Ljava/lang/String;

    .line 323
    const-string v0, ""

    move-object v0, v8

    .line 376
    :goto_0
    return-object v0

    .line 327
    :cond_0
    invoke-static {}, LCom/zAWS/KeygenMe/main;->_emulator_dete()Ljava/lang/String;

    .line 329
    const-string v0, ""

    move-object v0, v8

    goto :goto_0

    .line 332
    :cond_1
    const-string v0, ""

    .line 334
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_myphone:Lanywheresoftware/b4a/phone/Phone$PhoneId;

    invoke-static {}, Lanywheresoftware/b4a/phone/Phone$PhoneId;->GetDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v0, "123456789012345"

    sput-object v0, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    .line 340
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v0, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v9

    int-to-double v0, v0

    move v2, v6

    move v3, v6

    .line 341
    :goto_1
    int-to-double v4, v2

    cmpg-double v4, v4, v0

    if-lez v4, :cond_2

    .line 349
    if-nez v3, :cond_3

    .line 351
    invoke-static {}, LCom/zAWS/KeygenMe/main;->_emulator_dete1()Ljava/lang/String;

    .line 353
    const-string v0, ""

    move-object v0, v8

    goto :goto_0

    .line 343
    :cond_2
    sget-object v4, Lanywheresoftware/b4a/keywords/Common;->Bit:Lanywheresoftware/b4a/keywords/Bit;

    sget-object v4, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v4, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lanywheresoftware/b4a/keywords/Bit;->ParseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v4

    .line 345
    int-to-double v5, v3

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    add-double/2addr v3, v5

    double-to-int v3, v3

    .line 341
    int-to-double v4, v2

    const-wide/high16 v6, 0x3ff0

    add-double/2addr v4, v6

    double-to-int v2, v4

    goto :goto_1

    .line 356
    :cond_3
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->Bit:Lanywheresoftware/b4a/keywords/Bit;

    mul-int/lit8 v0, v3, 0x17

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lanywheresoftware/b4a/keywords/Bit;->And(II)I

    move-result v0

    sput v0, LCom/zAWS/KeygenMe/main;->_key_from_imei_number:I

    .line 358
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    const-string v0, "key.txt"

    sput-object v0, LCom/zAWS/KeygenMe/main;->_file_name:Ljava/lang/String;

    .line 360
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v0, LCom/zAWS/KeygenMe/main;->_mac_address:Ljava/lang/String;

    invoke-static {v0}, LCom/zAWS/KeygenMe/main;->_fix_wifi_mac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LCom/zAWS/KeygenMe/main;->_mac_address:Ljava/lang/String;

    .line 362
    invoke-static {}, LCom/zAWS/KeygenMe/main;->_check_code()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 364
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_imagev:Lanywheresoftware/b4a/objects/ImageViewWrapper;

    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v1, v1, LCom/zAWS/KeygenMe/main;->_bmpul:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 366
    const-string v0, "Registerd successfully\nPlease write Tutorial How Found key?!"

    invoke-static {v0, v9}, Lanywheresoftware/b4a/keywords/Common;->ToastMessageShow(Ljava/lang/String;Z)V

    .line 374
    :goto_2
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    const-string v1, "About"

    const-string v1, "About"

    invoke-virtual {v0, v10, v10}, Lanywheresoftware/b4a/objects/ActivityWrapper;->AddMenuItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v0, ""

    move-object v0, v8

    goto/16 :goto_0

    .line 369
    :cond_4
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_imagev:Lanywheresoftware/b4a/objects/ImageViewWrapper;

    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v1, v1, LCom/zAWS/KeygenMe/main;->_bmpl:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lanywheresoftware/b4a/objects/ImageViewWrapper;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 371
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    const-string v1, "Activate"

    const-string v1, "Activate"

    invoke-virtual {v0, v11, v11}, Lanywheresoftware/b4a/objects/ActivityWrapper;->AddMenuItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static _activity_pause(Z)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 381
    const-string v0, ""

    return-object v0
.end method

.method public static _activity_resume()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 386
    const-string v0, ""

    return-object v0
.end method

.method public static _calcaulate_codes(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 389
    .line 392
    const-string v3, ""

    .line 394
    const-string v3, ""

    .line 396
    const-string v3, ""

    .line 397
    const-string v3, ""

    .line 402
    const/4 v3, -0x1

    .line 404
    const/16 v4, 0x3e8

    new-array v4, v4, [I

    .line 409
    const/4 v5, 0x0

    .line 411
    const/4 v6, -0x1

    invoke-static {v6}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v6

    .line 415
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-double v7, v7

    .line 416
    const/4 v9, 0x0

    move/from16 v19, v9

    move v9, v3

    move/from16 v3, v19

    move/from16 v20, v5

    move-object v5, v6

    move/from16 v6, v20

    :goto_0
    int-to-double v10, v3

    cmpg-double v10, v10, v7

    if-lez v10, :cond_0

    .line 537
    int-to-double v3, v6

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lanywheresoftware/b4a/keywords/Common;->NumberFormat2(DIIIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 418
    :cond_0
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Lanywheresoftware/b4a/BA;->NumberToString(D)Ljava/lang/String;

    move-result-object v5

    .line 420
    add-int/lit8 v10, v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 422
    invoke-static {v10}, Lanywheresoftware/b4a/BA;->ObjectToChar(Ljava/lang/Object;)C

    move-result v10

    invoke-static {v10}, Lanywheresoftware/b4a/keywords/Common;->Asc(C)I

    move-result v10

    invoke-static {v10}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v10

    .line 426
    sget-object v11, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v11, LCom/zAWS/KeygenMe/main;->_array_p1:[Ljava/lang/String;

    array-length v11, v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    int-to-double v11, v11

    .line 427
    const/4 v13, 0x0

    move/from16 v19, v13

    move v13, v9

    move/from16 v9, v19

    :goto_1
    int-to-double v14, v9

    cmpg-double v14, v14, v11

    if-lez v14, :cond_1

    .line 531
    aget v6, v4, v13

    .line 533
    const/4 v9, -0x1

    .line 416
    int-to-double v10, v3

    const-wide/high16 v12, 0x3ff0

    add-double/2addr v10, v12

    double-to-int v3, v10

    goto :goto_0

    .line 429
    :cond_1
    sget-object v14, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v14, LCom/zAWS/KeygenMe/main;->_array_p1:[Ljava/lang/String;

    aget-object v14, v14, v9

    const/16 v15, 0x10

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "i"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "0"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "15422"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "255"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "702"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const-string v17, "82"

    aput-object v17, v15, v16

    const/16 v16, 0x6

    const-string v17, "1"

    aput-object v17, v15, v16

    const/16 v16, 0x7

    const-string v17, "256"

    aput-object v17, v15, v16

    const/16 v16, 0x8

    const-string v17, "=="

    aput-object v17, v15, v16

    const/16 v16, 0x9

    const-string v17, "c"

    aput-object v17, v15, v16

    const/16 v16, 0xa

    const-string v17, "*"

    aput-object v17, v15, v16

    const/16 v16, 0xb

    const-string v17, "key"

    aput-object v17, v15, v16

    const/16 v16, 0xc

    const-string v17, "+"

    aput-object v17, v15, v16

    const/16 v16, 0xd

    const-string v17, "&"

    aput-object v17, v15, v16

    const/16 v16, 0xe

    const-string v17, "%"

    aput-object v17, v15, v16

    const/16 v16, 0xf

    const-string v17, "|"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lanywheresoftware/b4a/BA;->switchObjectToInt(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 427
    :goto_2
    int-to-double v14, v9

    const-wide/high16 v16, 0x3ff0

    add-double v14, v14, v16

    double-to-int v9, v14

    goto/16 :goto_1

    .line 432
    :pswitch_0
    add-int/lit8 v13, v13, 0x1

    .line 434
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-int v14, v14

    aput v14, v4, v13

    goto :goto_2

    .line 444
    :pswitch_1
    add-int/lit8 v13, v13, 0x1

    .line 446
    sget-object v14, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v14, LCom/zAWS/KeygenMe/main;->_array_p1:[Ljava/lang/String;

    aget-object v14, v14, v9

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-int v14, v14

    aput v14, v4, v13

    goto :goto_2

    .line 450
    :pswitch_2
    aget v14, v4, v13

    invoke-static {v14}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v14

    .line 452
    const/4 v15, 0x1

    sub-int v15, v13, v15

    aget v15, v4, v15

    invoke-static {v15}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v15

    .line 454
    const/16 v16, 0x1

    sub-int v13, v13, v16

    .line 456
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 458
    const/4 v14, 0x1

    aput v14, v4, v13

    goto :goto_2

    .line 461
    :cond_2
    const/4 v14, 0x0

    aput v14, v4, v13

    goto :goto_2

    .line 466
    :pswitch_3
    add-int/lit8 v13, v13, 0x1

    .line 468
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-int v14, v14

    aput v14, v4, v13

    goto :goto_2

    .line 472
    :pswitch_4
    aget v14, v4, v13

    invoke-static {v14}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v14

    .line 474
    const/4 v15, 0x1

    sub-int v15, v13, v15

    aget v15, v4, v15

    invoke-static {v15}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v15

    .line 476
    const/16 v16, 0x1

    sub-int v13, v13, v16

    .line 478
    sget-object v16, Lanywheresoftware/b4a/keywords/Common;->Bit:Lanywheresoftware/b4a/keywords/Bit;

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    mul-double v14, v14, v16

    double-to-int v14, v14

    const v15, 0xffff

    invoke-static {v14, v15}, Lanywheresoftware/b4a/keywords/Bit;->And(II)I

    move-result v14

    aput v14, v4, v13

    goto :goto_2

    .line 482
    :pswitch_5
    add-int/lit8 v13, v13, 0x1

    .line 484
    aput v6, v4, v13

    goto :goto_2

    .line 488
    :pswitch_6
    aget v14, v4, v13

    invoke-static {v14}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v14

    .line 490
    const/4 v15, 0x1

    sub-int v15, v13, v15

    aget v15, v4, v15

    invoke-static {v15}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v15

    .line 492
    const/16 v16, 0x1

    sub-int v13, v13, v16

    .line 494
    sget-object v16, Lanywheresoftware/b4a/keywords/Common;->Bit:Lanywheresoftware/b4a/keywords/Bit;

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    add-double v14, v14, v16

    double-to-int v14, v14

    const v15, 0xffff

    invoke-static {v14, v15}, Lanywheresoftware/b4a/keywords/Bit;->And(II)I

    move-result v14

    aput v14, v4, v13

    goto/16 :goto_2

    .line 498
    :pswitch_7
    aget v14, v4, v13

    invoke-static {v14}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v14

    .line 500
    const/4 v15, 0x1

    sub-int v15, v13, v15

    aget v15, v4, v15

    invoke-static {v15}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v15

    .line 502
    const/16 v16, 0x1

    sub-int v13, v13, v16

    .line 504
    sget-object v16, Lanywheresoftware/b4a/keywords/Common;->Bit:Lanywheresoftware/b4a/keywords/Bit;

    sget-object v16, Lanywheresoftware/b4a/keywords/Common;->Bit:Lanywheresoftware/b4a/keywords/Bit;

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    double-to-int v15, v15

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move v14, v0

    invoke-static {v15, v14}, Lanywheresoftware/b4a/keywords/Bit;->And(II)I

    move-result v14

    const v15, 0xffff

    invoke-static {v14, v15}, Lanywheresoftware/b4a/keywords/Bit;->And(II)I

    move-result v14

    aput v14, v4, v13

    goto/16 :goto_2

    .line 508
    :pswitch_8
    aget v14, v4, v13

    invoke-static {v14}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v14

    .line 510
    const/4 v15, 0x1

    sub-int v15, v13, v15

    aget v15, v4, v15

    invoke-static {v15}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v15

    .line 512
    const/16 v16, 0x1

    sub-int v13, v13, v16

    .line 514
    sget-object v16, Lanywheresoftware/b4a/keywords/Common;->Bit:Lanywheresoftware/b4a/keywords/Bit;

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    rem-double v14, v15, v17

    double-to-int v14, v14

    const v15, 0xffff

    invoke-static {v14, v15}, Lanywheresoftware/b4a/keywords/Bit;->And(II)I

    move-result v14

    aput v14, v4, v13

    goto/16 :goto_2

    .line 518
    :pswitch_9
    aget v14, v4, v13

    invoke-static {v14}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v14

    .line 520
    const/4 v15, 0x1

    sub-int v15, v13, v15

    aget v15, v4, v15

    invoke-static {v15}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v15

    .line 522
    const/16 v16, 0x1

    sub-int v13, v13, v16

    .line 524
    sget-object v16, Lanywheresoftware/b4a/keywords/Common;->Bit:Lanywheresoftware/b4a/keywords/Bit;

    sget-object v16, Lanywheresoftware/b4a/keywords/Common;->Bit:Lanywheresoftware/b4a/keywords/Bit;

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    double-to-int v15, v15

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move v14, v0

    invoke-static {v15, v14}, Lanywheresoftware/b4a/keywords/Bit;->Or(II)I

    move-result v14

    const v15, 0xffff

    invoke-static {v14, v15}, Lanywheresoftware/b4a/keywords/Bit;->And(II)I

    move-result v14

    aput v14, v4, v13

    goto/16 :goto_2

    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static _check_code()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, ""

    .line 542
    const-string v0, ""

    .line 543
    const-string v0, ""

    .line 544
    const-string v0, ""

    .line 545
    const-string v0, ""

    .line 549
    const-string v0, ""

    .line 551
    const-string v0, ""

    .line 553
    const-string v0, ""

    .line 555
    invoke-static {}, LCom/zAWS/KeygenMe/main;->_readfile()Ljava/lang/String;

    move-result-object v0

    .line 557
    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v5

    .line 599
    :goto_0
    return v0

    .line 562
    :cond_0
    invoke-static {v0}, LCom/zAWS/KeygenMe/main;->_decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    const-string v1, ""

    .line 566
    invoke-static {v6}, LCom/zAWS/KeygenMe/main;->_fix_imei(Z)Ljava/lang/String;

    move-result-object v1

    .line 568
    invoke-static {v1}, LCom/zAWS/KeygenMe/main;->_calcaulate_codes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-static {v5}, LCom/zAWS/KeygenMe/main;->_fix_imei(Z)Ljava/lang/String;

    move-result-object v2

    .line 572
    invoke-static {v2}, LCom/zAWS/KeygenMe/main;->_calcaulate_codes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-static {v0}, LCom/zAWS/KeygenMe/main;->_get_correct_code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    new-instance v3, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    invoke-direct {v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;-><init>()V

    .line 578
    invoke-virtual {v3}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Initialize()V

    .line 580
    sget v4, LCom/zAWS/KeygenMe/main;->_key_from_imei_number:I

    invoke-static {v4}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->Append(Ljava/lang/String;)Lanywheresoftware/b4a/keywords/StringBuilderWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lanywheresoftware/b4a/keywords/StringBuilderWrapper;->ToString()Ljava/lang/String;

    .line 582
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v5

    .line 584
    goto :goto_0

    .line 587
    :cond_1
    const/4 v3, 0x6

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v5

    .line 589
    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v5

    .line 594
    goto :goto_0

    .line 597
    :cond_3
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    const-string v0, "About"

    sput-object v0, LCom/zAWS/KeygenMe/main;->_yes_reg:Ljava/lang/String;

    move v0, v6

    .line 599
    goto :goto_0
.end method

.method public static _decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v0, ""

    .line 604
    .line 606
    const-string v0, ""

    .line 611
    new-array v0, v5, [B

    .line 614
    new-array v0, v5, [B

    .line 617
    const-string v0, ""

    .line 619
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_bconv:Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;

    invoke-static {}, LCom/zAWS/KeygenMe/main;->_made_key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->HexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 621
    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v1, v1, LCom/zAWS/KeygenMe/main;->_bconv:Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;

    invoke-virtual {v1, p0}, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->HexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 623
    new-instance v2, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;

    invoke-direct {v2}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;-><init>()V

    .line 625
    new-instance v3, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;

    invoke-direct {v3}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;-><init>()V

    .line 627
    const-string v4, "DES/ECB/NoPadding"

    invoke-virtual {v3, v4}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;->Initialize(Ljava/lang/String;)V

    .line 629
    const-string v4, "DES"

    invoke-virtual {v2, v4}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->Initialize(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v2, v0}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->KeyFromBytes([B)V

    .line 633
    invoke-virtual {v2}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {v3, v1, v0, v5}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;->Decrypt([BLjava/security/Key;Z)[B

    move-result-object v0

    .line 635
    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v1, v1, LCom/zAWS/KeygenMe/main;->_bconv:Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;

    const-string v2, "UTF8"

    invoke-virtual {v1, v0, v2}, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->StringFromBytes([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    const/16 v1, 0xb

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _emulator_dete()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 644
    const-string v0, "WI-FI MAC Address required!\n\nTurn ON ,to be sure that App is NOT working on Emulator."

    const-string v1, "Challenge #1"

    sget-object v2, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v2, v2, LCom/zAWS/KeygenMe/main;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-static {v0, v1, v2}, Lanywheresoftware/b4a/keywords/Common;->Msgbox(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;)V

    .line 646
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->Finish()V

    .line 648
    const-string v0, ""

    return-object v0
.end method

.method public static _emulator_dete1()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 653
    const-string v0, "Emulator Detected..\nInvalid IMEI Number!"

    const-string v1, "Challenge #2"

    sget-object v2, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v2, v2, LCom/zAWS/KeygenMe/main;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-static {v0, v1, v2}, Lanywheresoftware/b4a/keywords/Common;->Msgbox(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;)V

    .line 655
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->Finish()V

    .line 657
    const-string v0, ""

    return-object v0
.end method

.method public static _encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v6, ""

    .line 660
    .line 662
    const-string v0, ""

    .line 667
    new-array v0, v5, [B

    .line 670
    new-array v0, v5, [B

    .line 673
    const-string v0, ""

    .line 675
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_bconv:Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;

    invoke-static {}, LCom/zAWS/KeygenMe/main;->_made_key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->HexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 677
    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v1, v1, LCom/zAWS/KeygenMe/main;->_bconv:Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "zAWS!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF8"

    invoke-virtual {v1, v2, v3}, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->StringToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 679
    new-instance v2, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;

    invoke-direct {v2}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;-><init>()V

    .line 681
    new-instance v3, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;

    invoke-direct {v3}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;-><init>()V

    .line 683
    const-string v4, "DES/ECB/NoPadding"

    invoke-virtual {v3, v4}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;->Initialize(Ljava/lang/String;)V

    .line 685
    const-string v4, "DES"

    invoke-virtual {v2, v4}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->Initialize(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v2, v0}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->KeyFromBytes([B)V

    .line 689
    invoke-virtual {v2}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {v3, v1, v0, v5}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;->Encrypt([BLjava/security/Key;Z)[B

    move-result-object v0

    .line 691
    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v1, v1, LCom/zAWS/KeygenMe/main;->_bconv:Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;->HexFromBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-static {v0}, LCom/zAWS/KeygenMe/main;->_write2file(Ljava/lang/String;)Ljava/lang/String;

    .line 695
    const-string v0, ""

    return-object v6
.end method

.method public static _fix_imei(Z)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    const-string v0, ""

    .line 698
    const-string v0, ""

    .line 699
    const-string v0, ""

    .line 702
    const-string v0, ""

    .line 704
    const-string v0, ""

    .line 706
    if-eqz p0, :cond_0

    .line 708
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v0, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 710
    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v1, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    sget-object v2, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v2, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v6

    sget-object v3, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v3, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 722
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 713
    :cond_0
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v0, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v1, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    sget-object v2, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v2, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 715
    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v1, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    sget-object v2, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v2, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 719
    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v1, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static _fix_wifi_mac(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v3, ""

    .line 727
    const-string v0, ""

    .line 728
    const-string v0, ""

    .line 732
    const-string v0, ""

    .line 734
    const-string v0, ""

    .line 736
    const-string v0, ""

    .line 740
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    .line 741
    const/4 v2, 0x0

    :goto_0
    int-to-double v4, v2

    cmpg-double v4, v4, v0

    if-lez v4, :cond_0

    .line 752
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 743
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 745
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 747
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 741
    :cond_1
    int-to-double v4, v2

    const-wide/high16 v6, 0x3ff0

    add-double/2addr v4, v6

    double-to-int v2, v4

    goto :goto_0
.end method

.method public static _get_correct_code(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const-string v0, ""

    .line 757
    const-string v0, ""

    .line 758
    const-string v0, ""

    .line 759
    const-string v0, ""

    .line 762
    const-string v0, ""

    .line 764
    const-string v0, ""

    .line 766
    const-string v0, ""

    .line 768
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 770
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 772
    const/4 v2, 0x6

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _globals()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v6, "&"

    const-string v5, "*"

    const-string v4, "+"

    const-string v3, ""

    .line 794
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    new-instance v1, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    iput-object v1, v0, LCom/zAWS/KeygenMe/main;->_bmp:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    .line 796
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    new-instance v1, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;

    invoke-direct {v1}, Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;-><init>()V

    iput-object v1, v0, LCom/zAWS/KeygenMe/main;->_bconv:Lanywheresoftware/b4a/agraham/byteconverter/ByteConverter;

    .line 798
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    new-instance v1, Lcom/AB/ABWifi/ABWifi;

    invoke-direct {v1}, Lcom/AB/ABWifi/ABWifi;-><init>()V

    iput-object v1, v0, LCom/zAWS/KeygenMe/main;->_mywifi:Lcom/AB/ABWifi/ABWifi;

    .line 800
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    new-instance v1, Lanywheresoftware/b4a/phone/Phone$PhoneId;

    invoke-direct {v1}, Lanywheresoftware/b4a/phone/Phone$PhoneId;-><init>()V

    iput-object v1, v0, LCom/zAWS/KeygenMe/main;->_myphone:Lanywheresoftware/b4a/phone/Phone$PhoneId;

    .line 802
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    const-string v0, ""

    sput-object v3, LCom/zAWS/KeygenMe/main;->_mac_address:Ljava/lang/String;

    .line 804
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    const-string v0, ""

    sput-object v3, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    .line 806
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    new-instance v1, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    iput-object v1, v0, LCom/zAWS/KeygenMe/main;->_bmpul:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    .line 808
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    new-instance v1, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    iput-object v1, v0, LCom/zAWS/KeygenMe/main;->_bmpl:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    .line 810
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    const-string v0, ""

    sput-object v3, LCom/zAWS/KeygenMe/main;->_yes_reg:Ljava/lang/String;

    .line 812
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    new-instance v1, Lanywheresoftware/b4a/objects/ImageViewWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/ImageViewWrapper;-><init>()V

    iput-object v1, v0, LCom/zAWS/KeygenMe/main;->_imagev:Lanywheresoftware/b4a/objects/ImageViewWrapper;

    .line 814
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    const-string v0, ""

    sput-object v3, LCom/zAWS/KeygenMe/main;->_file_name:Ljava/lang/String;

    .line 816
    sput v2, LCom/zAWS/KeygenMe/main;->_key_from_imei_number:I

    .line 818
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, LCom/zAWS/KeygenMe/main;->_array_p1:[Ljava/lang/String;

    .line 819
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v0, LCom/zAWS/KeygenMe/main;->_array_p1:[Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 821
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "i"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "=="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "15422"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "*"

    aput-object v5, v0, v1

    const/4 v1, 0x5

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "+"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "255"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "&"

    aput-object v6, v0, v1

    const/16 v1, 0xa

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "702"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "+"

    aput-object v4, v0, v1

    const/16 v1, 0xd

    const-string v2, "*"

    aput-object v5, v0, v1

    const/16 v1, 0xe

    const-string v2, "+"

    aput-object v4, v0, v1

    const/16 v1, 0xf

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "255"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "&"

    aput-object v6, v0, v1

    const/16 v1, 0x12

    const-string v2, "82"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "+"

    aput-object v4, v0, v1

    const/16 v1, 0x16

    const-string v2, "*"

    aput-object v5, v0, v1

    const/16 v1, 0x17

    const-string v2, "256"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "|"

    aput-object v2, v0, v1

    sput-object v0, LCom/zAWS/KeygenMe/main;->_array_p1:[Ljava/lang/String;

    .line 823
    const-string v0, ""

    return-object v3
.end method

.method public static _hide_kk()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 829
    new-instance v0, Lanywheresoftware/b4a/phone/Phone;

    invoke-direct {v0}, Lanywheresoftware/b4a/phone/Phone;-><init>()V

    .line 831
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    invoke-static {v0}, Lanywheresoftware/b4a/phone/Phone;->HideKeyboard(Lanywheresoftware/b4a/objects/ActivityWrapper;)V

    .line 833
    const-string v0, ""

    return-object v0
.end method

.method public static _imagev_click()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 838
    const-string v0, ""

    return-object v0
.end method

.method public static _inputbox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v4, ""

    .line 841
    .line 842
    const-string v0, ""

    .line 845
    new-instance v0, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;

    invoke-direct {v0}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;-><init>()V

    .line 847
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->setInputType(I)V

    .line 849
    invoke-virtual {v0, p2}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->setInput(Ljava/lang/String;)V

    .line 851
    const-string v3, "Register"

    const-string v1, ""

    const-string v5, "Cancel"

    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v6, v1, LCom/zAWS/KeygenMe/main;->activityBA:Lanywheresoftware/b4a/BA;

    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v1, v1, LCom/zAWS/KeygenMe/main;->_bmp:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-static {v1}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v1

    .line 853
    const/4 v2, -0x1

    invoke-static {v2}, Lanywheresoftware/b4a/BA;->NumberToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    invoke-virtual {v0}, Lanywheresoftware/b4a/agraham/dialogs/InputDialog;->getInput()Ljava/lang/String;

    move-result-object v0

    .line 856
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    move-object v0, v4

    goto :goto_0
.end method

.method public static _made_key()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const-string v0, ""

    .line 861
    const-string v0, ""

    .line 862
    const-string v0, ""

    .line 863
    const-string v0, ""

    .line 866
    const-string v0, ""

    .line 868
    const-string v0, ""

    .line 870
    const-string v0, ""

    .line 872
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v0, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 874
    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v1, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    sget-object v2, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v2, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    sget-object v3, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v3, LCom/zAWS/KeygenMe/main;->_imei:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v2, LCom/zAWS/KeygenMe/main;->_mac_address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 878
    return-object v0
.end method

.method public static _process_globals()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 885
    const-string v0, ""

    return-object v0
.end method

.method public static _readfile()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v2, ""

    .line 888
    const-string v0, ""

    .line 892
    const-string v0, ""

    .line 894
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirInternal()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v1, LCom/zAWS/KeygenMe/main;->_file_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lanywheresoftware/b4a/objects/streams/File;->Exists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    new-instance v1, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;-><init>()V

    .line 898
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirInternal()Ljava/lang/String;

    move-result-object v0

    sget-object v2, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v2, LCom/zAWS/KeygenMe/main;->_file_name:Ljava/lang/String;

    invoke-static {v0, v2}, Lanywheresoftware/b4a/objects/streams/File;->OpenInput(Ljava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$InputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->Initialize(Ljava/io/InputStream;)V

    .line 900
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->ReadLine()Ljava/lang/String;

    move-result-object v0

    .line 902
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$TextReaderWrapper;->Close()V

    .line 908
    :goto_0
    return-object v0

    .line 905
    :cond_0
    const-string v0, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public static _write2file(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v4, ""

    .line 913
    .line 916
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirInternal()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v1, LCom/zAWS/KeygenMe/main;->_file_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lanywheresoftware/b4a/objects/streams/File;->Exists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirInternal()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v1, LCom/zAWS/KeygenMe/main;->_file_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lanywheresoftware/b4a/objects/streams/File;->Delete(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 920
    const-string v0, "something Wrong!"

    const-string v1, "Error"

    sget-object v2, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v2, v2, LCom/zAWS/KeygenMe/main;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-static {v0, v1, v2}, Lanywheresoftware/b4a/keywords/Common;->Msgbox(Ljava/lang/String;Ljava/lang/String;Lanywheresoftware/b4a/BA;)V

    .line 922
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    iget-object v0, v0, LCom/zAWS/KeygenMe/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->Finish()V

    .line 924
    const-string v0, ""

    move-object v0, v4

    .line 936
    :goto_0
    return-object v0

    .line 928
    :cond_0
    new-instance v1, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;-><init>()V

    .line 930
    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    sget-object v0, Lanywheresoftware/b4a/keywords/Common;->File:Lanywheresoftware/b4a/objects/streams/File;

    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirInternal()Ljava/lang/String;

    move-result-object v0

    sget-object v2, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    sget-object v2, LCom/zAWS/KeygenMe/main;->_file_name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lanywheresoftware/b4a/objects/streams/File;->OpenOutput(Ljava/lang/String;Ljava/lang/String;Z)Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/streams/File$OutputStreamWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->Initialize(Ljava/io/OutputStream;)V

    .line 932
    invoke-virtual {v1, p0}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->WriteLine(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/streams/File$TextWriterWrapper;->Close()V

    .line 936
    const-string v0, ""

    move-object v0, v4

    goto :goto_0
.end method

.method static synthetic access$100(LCom/zAWS/KeygenMe/main;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, LCom/zAWS/KeygenMe/main;->afterFirstLayout()V

    return-void
.end method

.method private afterFirstLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    new-instance v0, Lanywheresoftware/b4a/BA;

    iget-object v2, p0, LCom/zAWS/KeygenMe/main;->layout:Lanywheresoftware/b4a/BALayout;

    sget-object v3, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    const-string v4, "Com.zAWS.KeygenMe"

    const-string v5, "main"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lanywheresoftware/b4a/BA;-><init>(Landroid/content/Context;Lanywheresoftware/b4a/BALayout;Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->activityBA:Lanywheresoftware/b4a/BA;

    .line 77
    sget-object v0, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, LCom/zAWS/KeygenMe/main;->activityBA:Lanywheresoftware/b4a/BA;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lanywheresoftware/b4a/BA;->activityBA:Ljava/lang/ref/WeakReference;

    .line 78
    new-instance v0, Lanywheresoftware/b4a/objects/ActivityWrapper;

    iget-object v1, p0, LCom/zAWS/KeygenMe/main;->activityBA:Lanywheresoftware/b4a/BA;

    const-string v2, "activity"

    invoke-direct {v0, v1, v2}, Lanywheresoftware/b4a/objects/ActivityWrapper;-><init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    .line 79
    sput-boolean v6, Lanywheresoftware/b4a/Msgbox;->isDismissing:Z

    .line 80
    invoke-static {}, LCom/zAWS/KeygenMe/main;->initializeProcessGlobals()V

    .line 81
    invoke-static {}, LCom/zAWS/KeygenMe/main;->initializeGlobals()V

    .line 82
    sput v6, Lanywheresoftware/b4a/objects/ViewWrapper;->lastId:I

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** Activity (main) Create, isFirst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, LCom/zAWS/KeygenMe/main;->isFirst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " **"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V

    .line 84
    sget-object v0, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    const-string v3, "activity_create"

    new-array v5, v7, [Ljava/lang/Object;

    sget-boolean v1, LCom/zAWS/KeygenMe/main;->isFirst:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v6

    move-object v1, v8

    move v2, v7

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sput-boolean v6, LCom/zAWS/KeygenMe/main;->isFirst:Z

    .line 86
    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    if-eqz v0, :cond_0

    sget-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    if-eq v0, p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    sget-object v0, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, v6}, Lanywheresoftware/b4a/BA;->setActivityPaused(Z)V

    .line 89
    const-string v0, "** Activity (main) Resume **"

    invoke-static {v0}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V

    .line 90
    sget-object v0, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "activity_resume"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v8, v1, v2}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getObject()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 122
    const-class v0, LCom/zAWS/KeygenMe/main;

    return-object v0
.end method

.method private static initializeGlobals()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 201
    sget-object v1, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    const/4 v3, 0x1

    const-string v4, "globals"

    const/4 v5, 0x0

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public static initializeProcessGlobals()V
    .locals 2

    .prologue
    .line 781
    sget-boolean v0, LCom/zAWS/KeygenMe/main;->processGlobalsRun:Z

    if-nez v0, :cond_0

    .line 782
    const/4 v0, 0x1

    sput-boolean v0, LCom/zAWS/KeygenMe/main;->processGlobalsRun:Z

    .line 784
    :try_start_0
    invoke-static {}, LCom/zAWS/KeygenMe/main;->_process_globals()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :cond_0
    return-void

    .line 786
    :catch_0
    move-exception v0

    .line 787
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addMenuItem(Lanywheresoftware/b4a/B4AMenuItem;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, LCom/zAWS/KeygenMe/main;->menuItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->menuItems:Ljava/util/ArrayList;

    .line 96
    :cond_0
    iget-object v0, p0, LCom/zAWS/KeygenMe/main;->menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    sget-object v0, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, p1, p2, p3}, Lanywheresoftware/b4a/BA;->onActivityResult(IILandroid/content/Intent;)V

    .line 199
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget-boolean v0, LCom/zAWS/KeygenMe/main;->isFirst:Z

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Lanywheresoftware/b4a/BA;

    invoke-virtual {p0}, LCom/zAWS/KeygenMe/main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "Com.zAWS.KeygenMe"

    const-string v5, "main"

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lanywheresoftware/b4a/BA;-><init>(Landroid/content/Context;Lanywheresoftware/b4a/BALayout;Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    .line 35
    sget-object v0, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/BA;->loadHtSubs(Ljava/lang/Class;)V

    .line 36
    invoke-virtual {p0}, LCom/zAWS/KeygenMe/main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 37
    invoke-static {v0}, Lanywheresoftware/b4a/BALayout;->setDeviceScale(F)V

    .line 53
    :cond_0
    :goto_0
    sput-object p0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    .line 54
    sget-object v0, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    iput-object v2, v0, Lanywheresoftware/b4a/BA;->activityBA:Ljava/lang/ref/WeakReference;

    .line 55
    new-instance v0, Lanywheresoftware/b4a/BALayout;

    invoke-direct {v0, p0}, Lanywheresoftware/b4a/BALayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->layout:Lanywheresoftware/b4a/BALayout;

    .line 56
    iget-object v0, p0, LCom/zAWS/KeygenMe/main;->layout:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0, v0}, LCom/zAWS/KeygenMe/main;->setContentView(Landroid/view/View;)V

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, LCom/zAWS/KeygenMe/main;->afterFirstLayout:Z

    .line 58
    sget-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    new-instance v1, LCom/zAWS/KeygenMe/main$WaitForLayout;

    invoke-direct {v1, v2}, LCom/zAWS/KeygenMe/main$WaitForLayout;-><init>(LCom/zAWS/KeygenMe/main$1;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    return-void

    .line 39
    :cond_1
    sget-object v0, LCom/zAWS/KeygenMe/main;->previousOne:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, LCom/zAWS/KeygenMe/main;->previousOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 41
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 42
    const-string v1, "Killing previous instance (main)."

    invoke-static {v1}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 101
    iget-object v0, p0, LCom/zAWS/KeygenMe/main;->menuItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    .line 103
    :cond_0
    iget-object v0, p0, LCom/zAWS/KeygenMe/main;->menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/B4AMenuItem;

    .line 104
    iget-object v2, v0, Lanywheresoftware/b4a/B4AMenuItem;->title:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 105
    iget-object v3, v0, Lanywheresoftware/b4a/B4AMenuItem;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, v0, Lanywheresoftware/b4a/B4AMenuItem;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 107
    :cond_1
    new-instance v3, LCom/zAWS/KeygenMe/main$B4AMenuItemsClickListener;

    iget-object v0, v0, Lanywheresoftware/b4a/B4AMenuItem;->eventName:Ljava/lang/String;

    sget-object v4, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v0}, LCom/zAWS/KeygenMe/main$B4AMenuItemsClickListener;-><init>(LCom/zAWS/KeygenMe/main;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 109
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 170
    const/4 v0, 0x0

    sput-object v0, LCom/zAWS/KeygenMe/main;->previousOne:Ljava/lang/ref/WeakReference;

    .line 171
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const-string v3, "activity_keypress"

    .line 128
    iget-object v0, p0, LCom/zAWS/KeygenMe/main;->onKeySubExist:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 129
    sget-object v0, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "activity_keypress"

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->onKeySubExist:Ljava/lang/Boolean;

    .line 130
    :cond_0
    iget-object v0, p0, LCom/zAWS/KeygenMe/main;->onKeySubExist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    sget-object v0, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, LCom/zAWS/KeygenMe/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    const-string v4, "activity_keypress"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 132
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v6, :cond_2

    :cond_1
    move v0, v6

    .line 135
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const-string v3, "activity_keyup"

    .line 139
    iget-object v0, p0, LCom/zAWS/KeygenMe/main;->onKeyUpSubExist:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 140
    sget-object v0, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    const-string v1, "activity_keyup"

    invoke-virtual {v0, v3}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LCom/zAWS/KeygenMe/main;->onKeyUpSubExist:Ljava/lang/Boolean;

    .line 141
    :cond_0
    iget-object v0, p0, LCom/zAWS/KeygenMe/main;->onKeyUpSubExist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    sget-object v0, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, LCom/zAWS/KeygenMe/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    const-string v4, "activity_keyup"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 143
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v6, :cond_2

    :cond_1
    move v0, v6

    .line 146
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0, p1}, LCom/zAWS/KeygenMe/main;->setIntent(Landroid/content/Intent;)V

    .line 151
    return-void
.end method

.method public onPause()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 155
    iget-object v0, p0, LCom/zAWS/KeygenMe/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {v2}, Lanywheresoftware/b4a/Msgbox;->dismiss(Z)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** Activity (main) Pause, UserClosed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LCom/zAWS/KeygenMe/main;->activityBA:Lanywheresoftware/b4a/BA;

    iget-object v1, v1, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " **"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/keywords/Common;->Log(Ljava/lang/String;)V

    .line 159
    sget-object v0, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, LCom/zAWS/KeygenMe/main;->_activity:Lanywheresoftware/b4a/objects/ActivityWrapper;

    const-string v3, "activity_pause"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, LCom/zAWS/KeygenMe/main;->activityBA:Lanywheresoftware/b4a/BA;

    iget-object v6, v6, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, LCom/zAWS/KeygenMe/main;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, v2}, Lanywheresoftware/b4a/BA;->setActivityPaused(Z)V

    .line 161
    const/4 v0, 0x0

    sput-object v0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    .line 162
    iget-object v0, p0, LCom/zAWS/KeygenMe/main;->activityBA:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, LCom/zAWS/KeygenMe/main;->previousOne:Ljava/lang/ref/WeakReference;

    .line 164
    :cond_1
    sput-boolean v4, Lanywheresoftware/b4a/Msgbox;->isDismissing:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 175
    sput-object p0, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    .line 176
    const/4 v0, 0x0

    sput-boolean v0, Lanywheresoftware/b4a/Msgbox;->isDismissing:Z

    .line 177
    iget-object v0, p0, LCom/zAWS/KeygenMe/main;->activityBA:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, LCom/zAWS/KeygenMe/main$ResumeMessage;

    sget-object v1, LCom/zAWS/KeygenMe/main;->mostCurrent:LCom/zAWS/KeygenMe/main;

    invoke-direct {v0, v1}, LCom/zAWS/KeygenMe/main$ResumeMessage;-><init>(Landroid/app/Activity;)V

    .line 179
    sget-object v1, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    :cond_0
    return-void
.end method
