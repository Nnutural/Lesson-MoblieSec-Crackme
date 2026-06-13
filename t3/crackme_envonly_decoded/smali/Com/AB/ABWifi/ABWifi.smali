.class public Lcom/AB/ABWifi/ABWifi;
.super Ljava/lang/Object;
.source "ABWifi.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$Author;
    value = "Alain Bailleul"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ABWifi"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$Version;
    value = 1.1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/AB/ABWifi/ABWifi$ABFoundLocation;,
        Lcom/AB/ABWifi/ABWifi$ABWifiInfo;,
        Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;
    }
.end annotation


# instance fields
.field private ABAvailableNetworks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/AB/ABWifi/ABWifi$ABWifiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private LocationRes:Landroid/location/Location;

.field private _CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

.field private _ba:Lanywheresoftware/b4a/BA;

.field private _eventName:Ljava/lang/String;

.field private _locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

.field private gps_enabled:Z

.field private lastError:Ljava/lang/String;

.field lm:Landroid/location/LocationManager;

.field locationListenerGps:Landroid/location/LocationListener;

.field locationListenerNetwork:Landroid/location/LocationListener;

.field private network_enabled:Z

.field private receiver:Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;

.field private wifi:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v3, ""

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v3, p0, Lcom/AB/ABWifi/ABWifi;->lastError:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/AB/ABWifi/ABWifi;->_ba:Lanywheresoftware/b4a/BA;

    .line 44
    iput-object v1, p0, Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    .line 46
    iput-object v1, p0, Lcom/AB/ABWifi/ABWifi;->ABAvailableNetworks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    iput-boolean v2, p0, Lcom/AB/ABWifi/ABWifi;->gps_enabled:Z

    .line 52
    iput-boolean v2, p0, Lcom/AB/ABWifi/ABWifi;->network_enabled:Z

    .line 53
    const-string v0, ""

    iput-object v3, p0, Lcom/AB/ABWifi/ABWifi;->_eventName:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    .line 371
    new-instance v0, Lcom/AB/ABWifi/ABWifi$1;

    invoke-direct {v0, p0}, Lcom/AB/ABWifi/ABWifi$1;-><init>(Lcom/AB/ABWifi/ABWifi;)V

    iput-object v0, p0, Lcom/AB/ABWifi/ABWifi;->locationListenerGps:Landroid/location/LocationListener;

    .line 387
    new-instance v0, Lcom/AB/ABWifi/ABWifi$2;

    invoke-direct {v0, p0}, Lcom/AB/ABWifi/ABWifi$2;-><init>(Lcom/AB/ABWifi/ABWifi;)V

    iput-object v0, p0, Lcom/AB/ABWifi/ABWifi;->locationListenerNetwork:Landroid/location/LocationListener;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/AB/ABWifi/ABWifi;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;

    return-void
.end method

.method static synthetic access$1(Lcom/AB/ABWifi/ABWifi;Lcom/AB/ABWifi/ABWifi$ABFoundLocation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    return-void
.end method

.method static synthetic access$2(Lcom/AB/ABWifi/ABWifi;)Lcom/AB/ABWifi/ABWifi$ABFoundLocation;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    return-object v0
.end method

.method static synthetic access$3(Lcom/AB/ABWifi/ABWifi;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$4(Lcom/AB/ABWifi/ABWifi;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->_eventName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/AB/ABWifi/ABWifi;)Lanywheresoftware/b4a/BA;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->_ba:Lanywheresoftware/b4a/BA;

    return-object v0
.end method

.method static synthetic access$6(Lcom/AB/ABWifi/ABWifi;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->wifi:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/AB/ABWifi/ABWifi;)Lcom/AB/ABWifi/ABWifi$ABWifiInfo;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    return-object v0
.end method

.method static synthetic access$8(Lcom/AB/ABWifi/ABWifi;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->ABAvailableNetworks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/AB/ABWifi/ABWifi;)Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->receiver:Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;

    return-object v0
.end method


# virtual methods
.method public ABGetCurrentWifiInfo()Lcom/AB/ABWifi/ABWifi$ABWifiInfo;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    return-object v0
.end method

.method public ABGetFoundLocation()Lcom/AB/ABWifi/ABWifi$ABFoundLocation;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    return-object v0
.end method

.method public ABGetLocation(Lanywheresoftware/b4a/BA;Ljava/lang/String;)Z
    .locals 7
    .parameter "ba"
    .parameter "eventName"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-string v6, "network"

    const-string v1, "gps"

    .line 276
    const-string v0, ""

    iput-object v0, p0, Lcom/AB/ABWifi/ABWifi;->lastError:Ljava/lang/String;

    .line 277
    iput-object p1, p0, Lcom/AB/ABWifi/ABWifi;->_ba:Lanywheresoftware/b4a/BA;

    .line 278
    iput-object p2, p0, Lcom/AB/ABWifi/ABWifi;->_eventName:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    const-string v5, "location"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/AB/ABWifi/ABWifi;->lm:Landroid/location/LocationManager;

    .line 287
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->lm:Landroid/location/LocationManager;

    const-string v5, "gps"

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/AB/ABWifi/ABWifi;->gps_enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->lm:Landroid/location/LocationManager;

    const-string v5, "network"

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/AB/ABWifi/ABWifi;->network_enabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    :goto_1
    iget-boolean v0, p0, Lcom/AB/ABWifi/ABWifi;->gps_enabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/AB/ABWifi/ABWifi;->network_enabled:Z

    if-nez v0, :cond_1

    .line 301
    const-string v0, "No Provider Found"

    iput-object v0, p0, Lcom/AB/ABWifi/ABWifi;->lastError:Ljava/lang/String;

    .line 302
    const/4 v0, 0x0

    .line 313
    :goto_2
    return v0

    .line 305
    :cond_1
    iget-boolean v0, p0, Lcom/AB/ABWifi/ABWifi;->gps_enabled:Z

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->lm:Landroid/location/LocationManager;

    const-string v5, "gps"

    iget-object v5, p0, Lcom/AB/ABWifi/ABWifi;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 309
    :cond_2
    iget-boolean v0, p0, Lcom/AB/ABWifi/ABWifi;->network_enabled:Z

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/AB/ABWifi/ABWifi;->locationListenerNetwork:Landroid/location/LocationListener;

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 313
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 293
    :catch_0
    move-exception v0

    goto :goto_1

    .line 288
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public ABGetWifiNetwork(Ljava/lang/Integer;)Lcom/AB/ABWifi/ABWifi$ABWifiInfo;
    .locals 2
    .parameter "index"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->ABAvailableNetworks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    return-object p0
.end method

.method public ABLoadWifi(Lanywheresoftware/b4a/BA;)Z
    .locals 6
    .parameter "ba"

    .prologue
    .line 88
    const-string v2, ""

    iput-object v2, p0, Lcom/AB/ABWifi/ABWifi;->lastError:Ljava/lang/String;

    .line 89
    const-string v1, ""

    .line 90
    .local v1, tmpSSID:Ljava/lang/String;
    iput-object p1, p0, Lcom/AB/ABWifi/ABWifi;->_ba:Lanywheresoftware/b4a/BA;

    .line 92
    new-instance v2, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    invoke-direct {v2}, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;-><init>()V

    iput-object v2, p0, Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    .line 93
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/AB/ABWifi/ABWifi;->ABAvailableNetworks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 96
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->_ba:Lanywheresoftware/b4a/BA;

    iget-object v2, v2, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/AB/ABWifi/ABWifi;->wifi:Landroid/net/wifi/WifiManager;

    .line 97
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->wifi:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    .line 98
    const-string v2, "No Wifi Found"

    iput-object v2, p0, Lcom/AB/ABWifi/ABWifi;->lastError:Ljava/lang/String;

    .line 99
    const/4 v2, 0x0

    .line 127
    :goto_0
    return v2

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 103
    .local v0, _WifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_1

    .line 104
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->BSSID:Ljava/lang/String;

    .line 105
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->MacAddress:Ljava/lang/String;

    .line 106
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->FullString:Ljava/lang/String;

    .line 107
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->NetworkId:Ljava/lang/Integer;

    .line 108
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->Rssi:Ljava/lang/Integer;

    .line 109
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->SSID:Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->HiddenSSID:Ljava/lang/Boolean;

    .line 111
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->LinkSpeed:Ljava/lang/Integer;

    .line 112
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/SupplicantState;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->State:Ljava/lang/String;

    .line 113
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    iget-object v1, v2, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->SSID:Ljava/lang/String;

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->receiver:Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;

    if-nez v2, :cond_2

    .line 118
    new-instance v2, Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;

    invoke-direct {v2, p0, p0, v1}, Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;-><init>(Lcom/AB/ABWifi/ABWifi;Lcom/AB/ABWifi/ABWifi;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/AB/ABWifi/ABWifi;->receiver:Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->_ba:Lanywheresoftware/b4a/BA;

    iget-object v2, v2, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/AB/ABWifi/ABWifi;->receiver:Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 127
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public ABNumberOfAvailableWifiNetworks()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->ABAvailableNetworks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public ABWifiLastError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/AB/ABWifi/ABWifi;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method public GetLastKnownLocation(Lanywheresoftware/b4a/BA;Ljava/lang/String;)Z
    .locals 10
    .parameter "ba"
    .parameter "eventName"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "_foundlocation"

    .line 322
    const/4 v1, 0x0

    .local v1, net_loc:Landroid/location/Location;
    const/4 v0, 0x0

    .line 323
    .local v0, gps_loc:Landroid/location/Location;
    iget-boolean v3, p0, Lcom/AB/ABWifi/ABWifi;->gps_enabled:Z

    if-eqz v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/AB/ABWifi/ABWifi;->lm:Landroid/location/LocationManager;

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 325
    :cond_0
    iget-boolean v3, p0, Lcom/AB/ABWifi/ABWifi;->network_enabled:Z

    if-eqz v3, :cond_1

    .line 326
    iget-object v3, p0, Lcom/AB/ABWifi/ABWifi;->lm:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 328
    :cond_1
    iget-object v3, p0, Lcom/AB/ABWifi/ABWifi;->lm:Landroid/location/LocationManager;

    iget-object v4, p0, Lcom/AB/ABWifi/ABWifi;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 329
    iget-object v3, p0, Lcom/AB/ABWifi/ABWifi;->lm:Landroid/location/LocationManager;

    iget-object v4, p0, Lcom/AB/ABWifi/ABWifi;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 331
    iput-object v5, p0, Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;

    .line 334
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 335
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 336
    iput-object v0, p0, Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;

    .line 341
    :goto_0
    new-instance v3, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    invoke-direct {v3}, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;-><init>()V

    iput-object v3, p0, Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    .line 342
    iget-object v3, p0, Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    iget-object v4, p0, Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;->Latitude:D

    .line 343
    iget-object v3, p0, Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    iget-object v4, p0, Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;->Longitude:D

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/AB/ABWifi/ABWifi;->_eventName:Ljava/lang/String;

    sget-object v5, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_foundlocation"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/AB/ABWifi/ABWifi;->_ba:Lanywheresoftware/b4a/BA;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v2, v4}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v7

    .line 368
    .end local v2           #s:Ljava/lang/String;
    :goto_1
    return v3

    .line 339
    :cond_2
    iput-object v1, p0, Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;

    goto :goto_0

    .line 349
    :cond_3
    if-eqz v0, :cond_4

    .line 350
    iput-object v0, p0, Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;

    .line 351
    new-instance v3, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    invoke-direct {v3}, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;-><init>()V

    iput-object v3, p0, Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    .line 352
    iget-object v3, p0, Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    iget-object v4, p0, Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;->Latitude:D

    .line 353
    iget-object v3, p0, Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    iget-object v4, p0, Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;->Longitude:D

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/AB/ABWifi/ABWifi;->_eventName:Ljava/lang/String;

    sget-object v5, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_foundlocation"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/AB/ABWifi/ABWifi;->_ba:Lanywheresoftware/b4a/BA;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v2, v4}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v7

    .line 356
    goto :goto_1

    .line 358
    .end local v2           #s:Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    .line 359
    iput-object v1, p0, Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;

    .line 360
    new-instance v3, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    invoke-direct {v3}, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;-><init>()V

    iput-object v3, p0, Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    .line 361
    iget-object v3, p0, Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    iget-object v4, p0, Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;->Latitude:D

    .line 362
    iget-object v3, p0, Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    iget-object v4, p0, Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;->Longitude:D

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/AB/ABWifi/ABWifi;->_eventName:Ljava/lang/String;

    sget-object v5, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_foundlocation"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    .restart local v2       #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/AB/ABWifi/ABWifi;->_ba:Lanywheresoftware/b4a/BA;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v2, v4}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v7

    .line 365
    goto/16 :goto_1

    .line 367
    .end local v2           #s:Ljava/lang/String;
    :cond_5
    iput-object v5, p0, Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;

    move v3, v7

    .line 368
    goto/16 :goto_1
.end method
