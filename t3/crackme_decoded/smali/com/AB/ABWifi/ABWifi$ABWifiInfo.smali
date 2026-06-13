.class public Lcom/AB/ABWifi/ABWifi$ABWifiInfo;
.super Ljava/lang/Object;
.source "ABWifi.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ABWifiInfo"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/AB/ABWifi/ABWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ABWifiInfo"
.end annotation


# instance fields
.field public BSSID:Ljava/lang/String;

.field public Capabilities:Ljava/lang/String;

.field public Frequency:Ljava/lang/Integer;

.field public FullString:Ljava/lang/String;

.field public HiddenSSID:Ljava/lang/Boolean;

.field public IsConnected:Ljava/lang/Boolean;

.field public Level:Ljava/lang/Integer;

.field public LinkSpeed:Ljava/lang/Integer;

.field public MacAddress:Ljava/lang/String;

.field public NetworkId:Ljava/lang/Integer;

.field public Rssi:Ljava/lang/Integer;

.field public SSID:Ljava/lang/String;

.field public State:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, ""

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const-string v0, ""

    iput-object v2, p0, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->BSSID:Ljava/lang/String;

    .line 202
    const-string v0, ""

    iput-object v2, p0, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->MacAddress:Ljava/lang/String;

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->NetworkId:Ljava/lang/Integer;

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->Rssi:Ljava/lang/Integer;

    .line 205
    const-string v0, ""

    iput-object v2, p0, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->SSID:Ljava/lang/String;

    .line 206
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->HiddenSSID:Ljava/lang/Boolean;

    .line 207
    const-string v0, ""

    iput-object v2, p0, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->FullString:Ljava/lang/String;

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->Level:Ljava/lang/Integer;

    .line 209
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->IsConnected:Ljava/lang/Boolean;

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->Frequency:Ljava/lang/Integer;

    .line 211
    const-string v0, ""

    iput-object v2, p0, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->Capabilities:Ljava/lang/String;

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->LinkSpeed:Ljava/lang/Integer;

    .line 213
    const-string v0, ""

    iput-object v2, p0, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->State:Ljava/lang/String;

    .line 200
    return-void
.end method
