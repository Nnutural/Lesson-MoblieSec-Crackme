.class public Lanywheresoftware/b4a/objects/NotificationWrapper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "NotificationWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Notification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper",
        "<",
        "Landroid/app/Notification;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method private setFlag(ZI)V
    .locals 2
    .parameter "v"
    .parameter "Flag"

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Notification;

    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 99
    :goto_0
    return-void

    .line 98
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Notification;

    iget v0, p0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method private setValue(ZI)V
    .locals 2
    .parameter "v"
    .parameter "Default"

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Notification;

    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/2addr v0, p2

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 65
    :goto_0
    return-void

    .line 64
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Notification;

    iget v0, p0, Landroid/app/Notification;->defaults:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification;->defaults:I

    goto :goto_0
.end method


# virtual methods
.method public Cancel(I)V
    .locals 3
    .parameter "Id"

    .prologue
    .line 142
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    .line 143
    const-string v2, "notification"

    .line 142
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 144
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 145
    return-void
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->setObject(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Notification;

    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 35
    return-void
.end method

.method public Notify(I)V
    .locals 3
    .parameter "Id"

    .prologue
    .line 134
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    .line 135
    const-string v2, "notification"

    .line 134
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 136
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Notification;

    invoke-virtual {v0, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 137
    return-void
.end method

.method public SetInfo(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "ba"
    .parameter "Title"
    .parameter "Body"
    .parameter "Activity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 121
    invoke-static {p1, p4}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    const/high16 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    iget-object v2, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    const/4 v3, 0x0

    .line 125
    const/high16 v4, 0x800

    .line 124
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 126
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Notification;

    iget-object v2, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, p2, p3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 127
    return-void
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Notification;

    iget v0, p0, Landroid/app/Notification;->number:I

    return v0
.end method

.method public setAutoCancel(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 70
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->setFlag(ZI)V

    .line 71
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 108
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Notification;

    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    sget-object v2, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->icon:I

    .line 109
    return-void
.end method

.method public setInsistent(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 76
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->setFlag(ZI)V

    .line 77
    return-void
.end method

.method public setLight(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 58
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->setValue(ZI)V

    .line 59
    return-void
.end method

.method public setNumber(I)V
    .locals 0
    .parameter "v"

    .prologue
    .line 92
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Notification;

    iput p1, p0, Landroid/app/Notification;->number:I

    .line 93
    return-void
.end method

.method public setOnGoingEvent(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->setFlag(ZI)V

    .line 84
    return-void
.end method

.method public setSound(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->setValue(ZI)V

    .line 51
    return-void
.end method

.method public setVibrate(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 42
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/NotificationWrapper;->setValue(ZI)V

    .line 43
    return-void
.end method
