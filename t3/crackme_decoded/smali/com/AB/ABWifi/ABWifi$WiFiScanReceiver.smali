.class Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ABWifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/AB/ABWifi/ABWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiFiScanReceiver"
.end annotation


# instance fields
.field CurSSID:Ljava/lang/String;

.field _ABWifi:Lcom/AB/ABWifi/ABWifi;

.field final synthetic this$0:Lcom/AB/ABWifi/ABWifi;


# direct methods
.method public constructor <init>(Lcom/AB/ABWifi/ABWifi;Lcom/AB/ABWifi/ABWifi;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "tmpABWifi"
    .parameter "tmpCurSSID"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;->this$0:Lcom/AB/ABWifi/ABWifi;

    .line 135
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;->CurSSID:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;->CurSSID:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;->_ABWifi:Lcom/AB/ABWifi/ABWifi;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "c"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 144
    const/4 v3, 0x0

    .line 145
    .local v3, tmpWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;
    iget-object v4, p0, Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;->_ABWifi:Lcom/AB/ABWifi/ABWifi;

    #getter for: Lcom/AB/ABWifi/ABWifi;->wifi:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/AB/ABWifi/ABWifi;->access$6(Lcom/AB/ABWifi/ABWifi;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 146
    .local v2, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v0, 0x0

    .line 147
    .local v0, bestSignal:Landroid/net/wifi/ScanResult;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 175
    iget-object v4, p0, Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;->this$0:Lcom/AB/ABWifi/ABWifi;

    #getter for: Lcom/AB/ABWifi/ABWifi;->_ba:Lanywheresoftware/b4a/BA;
    invoke-static {v4}, Lcom/AB/ABWifi/ABWifi;->access$5(Lcom/AB/ABWifi/ABWifi;)Lanywheresoftware/b4a/BA;

    move-result-object v4

    iget-object v4, v4, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;->this$0:Lcom/AB/ABWifi/ABWifi;

    #getter for: Lcom/AB/ABWifi/ABWifi;->receiver:Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;
    invoke-static {v5}, Lcom/AB/ABWifi/ABWifi;->access$9(Lcom/AB/ABWifi/ABWifi;)Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    return-void

    .line 147
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 148
    .local v1, result:Landroid/net/wifi/ScanResult;
    new-instance v3, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    .end local v3           #tmpWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;
    invoke-direct {v3}, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;-><init>()V

    .line 149
    .restart local v3       #tmpWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v5, v3, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->BSSID:Ljava/lang/String;

    .line 150
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->FullString:Ljava/lang/String;

    .line 151
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v3, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->HiddenSSID:Ljava/lang/Boolean;

    .line 152
    const-string v5, ""

    iput-object v5, v3, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->MacAddress:Ljava/lang/String;

    .line 153
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->NetworkId:Ljava/lang/Integer;

    .line 154
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->Rssi:Ljava/lang/Integer;

    .line 155
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v5, v3, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->SSID:Ljava/lang/String;

    .line 156
    iget v5, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->Level:Ljava/lang/Integer;

    .line 157
    iget v5, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->Frequency:Ljava/lang/Integer;

    .line 158
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput-object v5, v3, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->Capabilities:Ljava/lang/String;

    .line 159
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v6, p0, Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;->CurSSID:Ljava/lang/String;

    if-ne v5, v6, :cond_1

    .line 160
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v3, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->IsConnected:Ljava/lang/Boolean;

    .line 161
    iget-object v5, p0, Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;->this$0:Lcom/AB/ABWifi/ABWifi;

    #getter for: Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;
    invoke-static {v5}, Lcom/AB/ABWifi/ABWifi;->access$7(Lcom/AB/ABWifi/ABWifi;)Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->IsConnected:Ljava/lang/Boolean;

    .line 162
    iget-object v5, p0, Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;->this$0:Lcom/AB/ABWifi/ABWifi;

    #getter for: Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;
    invoke-static {v5}, Lcom/AB/ABWifi/ABWifi;->access$7(Lcom/AB/ABWifi/ABWifi;)Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->FullString:Ljava/lang/String;

    .line 163
    iget-object v5, p0, Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;->this$0:Lcom/AB/ABWifi/ABWifi;

    #getter for: Lcom/AB/ABWifi/ABWifi;->_CurrentWifiInfo:Lcom/AB/ABWifi/ABWifi$ABWifiInfo;
    invoke-static {v5}, Lcom/AB/ABWifi/ABWifi;->access$7(Lcom/AB/ABWifi/ABWifi;)Lcom/AB/ABWifi/ABWifi$ABWifiInfo;

    move-result-object v5

    iget v6, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->Level:Ljava/lang/Integer;

    .line 164
    iget v5, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/AB/ABWifi/ABWifi$ABWifiInfo;->Frequency:Ljava/lang/Integer;

    .line 168
    :cond_1
    if-eqz v0, :cond_2

    iget v5, v0, Landroid/net/wifi/ScanResult;->level:I

    iget v6, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v5, v6}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v5

    if-gez v5, :cond_3

    .line 169
    :cond_2
    move-object v0, v1

    .line 172
    :cond_3
    iget-object v5, p0, Lcom/AB/ABWifi/ABWifi$WiFiScanReceiver;->this$0:Lcom/AB/ABWifi/ABWifi;

    #getter for: Lcom/AB/ABWifi/ABWifi;->ABAvailableNetworks:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v5}, Lcom/AB/ABWifi/ABWifi;->access$8(Lcom/AB/ABWifi/ABWifi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
