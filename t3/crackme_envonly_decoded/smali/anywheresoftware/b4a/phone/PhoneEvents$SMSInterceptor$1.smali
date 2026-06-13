.class Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;->Initialize(Ljava/lang/String;Lanywheresoftware/b4a/BA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;

.field private final synthetic val$ev:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;->this$1:Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;

    iput-object p2, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;->val$ba:Lanywheresoftware/b4a/BA;

    iput-object p3, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;->val$ev:Ljava/lang/String;

    .line 340
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 344
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 354
    :cond_0
    return-void

    .line 346
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 347
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 348
    const-string v4, "pdus"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 349
    .local v2, pduObj:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 350
    aget-object v4, v2, v1

    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 351
    .local v3, sm:Landroid/telephony/SmsMessage;
    iget-object v4, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v5, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;->this$1:Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor;

    iget-object v6, p0, Lanywheresoftware/b4a/phone/PhoneEvents$SMSInterceptor$1;->val$ev:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
