.class public Lanywheresoftware/b4a/phone/Phone$PhoneSms;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "PhoneSms"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneSms"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "PhoneNumber"
    .parameter "Text"

    .prologue
    const/high16 v3, 0x800

    const/4 v2, 0x0

    const-string v8, "phone"

    .line 611
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 612
    .local v0, sm:Landroid/telephony/SmsManager;
    new-instance v6, Landroid/content/Intent;

    const-string v1, "b4a.smssent"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 613
    .local v6, i1:Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v6, v8, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-static {v1, v2, v6, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 615
    .local v4, pi:Landroid/app/PendingIntent;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "b4a.smsdelivered"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 616
    .local v7, i2:Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v7, v8, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-static {v1, v2, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 618
    .local v5, pi2:Landroid/app/PendingIntent;
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 619
    return-void
.end method
