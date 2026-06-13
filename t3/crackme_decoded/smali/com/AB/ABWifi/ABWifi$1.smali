.class Lcom/AB/ABWifi/ABWifi$1;
.super Ljava/lang/Object;
.source "ABWifi.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/AB/ABWifi/ABWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/AB/ABWifi/ABWifi;


# direct methods
.method constructor <init>(Lcom/AB/ABWifi/ABWifi;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/AB/ABWifi/ABWifi$1;->this$0:Lcom/AB/ABWifi/ABWifi;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 373
    iget-object v1, p0, Lcom/AB/ABWifi/ABWifi$1;->this$0:Lcom/AB/ABWifi/ABWifi;

    #setter for: Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;
    invoke-static {v1, p1}, Lcom/AB/ABWifi/ABWifi;->access$0(Lcom/AB/ABWifi/ABWifi;Landroid/location/Location;)V

    .line 374
    iget-object v1, p0, Lcom/AB/ABWifi/ABWifi$1;->this$0:Lcom/AB/ABWifi/ABWifi;

    iget-object v1, v1, Lcom/AB/ABWifi/ABWifi;->lm:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 375
    iget-object v1, p0, Lcom/AB/ABWifi/ABWifi$1;->this$0:Lcom/AB/ABWifi/ABWifi;

    iget-object v1, v1, Lcom/AB/ABWifi/ABWifi;->lm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi$1;->this$0:Lcom/AB/ABWifi/ABWifi;

    iget-object v2, v2, Lcom/AB/ABWifi/ABWifi;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 376
    iget-object v1, p0, Lcom/AB/ABWifi/ABWifi$1;->this$0:Lcom/AB/ABWifi/ABWifi;

    new-instance v2, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    invoke-direct {v2}, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;-><init>()V

    #setter for: Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;
    invoke-static {v1, v2}, Lcom/AB/ABWifi/ABWifi;->access$1(Lcom/AB/ABWifi/ABWifi;Lcom/AB/ABWifi/ABWifi$ABFoundLocation;)V

    .line 377
    iget-object v1, p0, Lcom/AB/ABWifi/ABWifi$1;->this$0:Lcom/AB/ABWifi/ABWifi;

    #getter for: Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;
    invoke-static {v1}, Lcom/AB/ABWifi/ABWifi;->access$2(Lcom/AB/ABWifi/ABWifi;)Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    move-result-object v1

    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi$1;->this$0:Lcom/AB/ABWifi/ABWifi;

    #getter for: Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;
    invoke-static {v2}, Lcom/AB/ABWifi/ABWifi;->access$3(Lcom/AB/ABWifi/ABWifi;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;->Latitude:D

    .line 378
    iget-object v1, p0, Lcom/AB/ABWifi/ABWifi$1;->this$0:Lcom/AB/ABWifi/ABWifi;

    #getter for: Lcom/AB/ABWifi/ABWifi;->_locRes:Lcom/AB/ABWifi/ABWifi$ABFoundLocation;
    invoke-static {v1}, Lcom/AB/ABWifi/ABWifi;->access$2(Lcom/AB/ABWifi/ABWifi;)Lcom/AB/ABWifi/ABWifi$ABFoundLocation;

    move-result-object v1

    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi$1;->this$0:Lcom/AB/ABWifi/ABWifi;

    #getter for: Lcom/AB/ABWifi/ABWifi;->LocationRes:Landroid/location/Location;
    invoke-static {v2}, Lcom/AB/ABWifi/ABWifi;->access$3(Lcom/AB/ABWifi/ABWifi;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/AB/ABWifi/ABWifi$ABFoundLocation;->Longitude:D

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/AB/ABWifi/ABWifi$1;->this$0:Lcom/AB/ABWifi/ABWifi;

    #getter for: Lcom/AB/ABWifi/ABWifi;->_eventName:Ljava/lang/String;
    invoke-static {v2}, Lcom/AB/ABWifi/ABWifi;->access$4(Lcom/AB/ABWifi/ABWifi;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_foundlocation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/AB/ABWifi/ABWifi$1;->this$0:Lcom/AB/ABWifi/ABWifi;

    #getter for: Lcom/AB/ABWifi/ABWifi;->_ba:Lanywheresoftware/b4a/BA;
    invoke-static {v1}, Lcom/AB/ABWifi/ABWifi;->access$5(Lcom/AB/ABWifi/ABWifi;)Lanywheresoftware/b4a/BA;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 382
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 383
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 384
    return-void
.end method
