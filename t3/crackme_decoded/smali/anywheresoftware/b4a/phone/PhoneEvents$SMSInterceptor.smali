.class public Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;
.super Ljava/lang/Object;
.source "PhoneEvents.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "SmsInterceptor"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/PhoneEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMSInterceptor"
.end annotation


# instance fields
.field private br:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialize(Ljava/lang/String;Lanywheresoftware/b4a/BA;)V
    .locals 5
    .parameter "EventName"
    .parameter "ba"

    .prologue
    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_messagereceived"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, ev:Ljava/lang/String;
    new-instance v1, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;

    invoke-direct {v1, p0, p2, v0}, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;-><init>(Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    iput-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->br:Landroid/content/BroadcastReceiver;

    .line 356
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    iget-object v2, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->br:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    return-void
.end method

.method public StopListening()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->br:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    iget-object v1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 364
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->br:Landroid/content/BroadcastReceiver;

    .line 365
    return-void
.end method
