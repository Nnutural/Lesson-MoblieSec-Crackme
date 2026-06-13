.class public Lanywheresoftware/b4a/objects/RemoteViewsWrapper;
.super Ljava/lang/Object;
.source "RemoteViewsWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "RemoteViews"
.end annotation


# instance fields
.field protected current:Landroid/widget/RemoteViews;

.field protected eventName:Ljava/lang/String;

.field protected original:Landroid/os/Parcel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRemoteViews(Lanywheresoftware/b4a/BA;ILjava/lang/String;Ljava/lang/String;)Lanywheresoftware/b4a/objects/RemoteViewsWrapper;
    .locals 6
    .parameter "ba"
    .parameter "id"
    .parameter "layout"
    .parameter "eventName"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Landroid/widget/RemoteViews;

    sget-object v0, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 36
    .local v1, rv:Landroid/widget/RemoteViews;
    sget-object p1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    .end local p1
    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 37
    const-string p1, ".bal"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ".bal"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 39
    .restart local p2
    :cond_0
    sget-object p1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 40
    .local p2, in:Ljava/io/InputStream;
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    .local p1, din:Ljava/io/DataInputStream;
    invoke-static {p1}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v0

    .line 43
    .local v0, version:I
    invoke-static {p1}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v0

    .line 44
    .local v0, pos:I
    :goto_0
    if-gtz v0, :cond_1

    .line 47
    invoke-static {p1}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v0

    .line 48
    .local v0, numberOfVariants:I
    const/4 p2, 0x0

    .local p2, i:I
    :goto_1
    if-lt p2, v0, :cond_2

    .line 51
    invoke-static {p1}, Lanywheresoftware/b4a/ConnectorUtils;->readMap(Ljava/io/DataInputStream;)Ljava/util/HashMap;

    move-result-object p2

    .line 52
    .local p2, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p2, v1}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->loadLayoutHelper(Lanywheresoftware/b4a/BA;Ljava/util/HashMap;Landroid/widget/RemoteViews;)V

    .line 53
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    .line 54
    new-instance p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;

    .end local p0
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;-><init>()V

    .line 55
    .local p0, rvw:Lanywheresoftware/b4a/objects/RemoteViewsWrapper;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .end local p1           #din:Ljava/io/DataInputStream;
    iput-object p1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->original:Landroid/os/Parcel;

    .line 56
    iget-object p1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->original:Landroid/os/Parcel;

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 57
    .end local p2           #props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object p1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->eventName:Ljava/lang/String;

    .line 58
    return-object p0

    .line 45
    .local v0, pos:I
    .local p0, ba:Lanywheresoftware/b4a/BA;
    .restart local p1       #din:Ljava/io/DataInputStream;
    .local p2, in:Ljava/io/InputStream;
    :cond_1
    int-to-long v2, v0

    int-to-long v4, v0

    invoke-virtual {p2, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_0

    .line 49
    .local v0, numberOfVariants:I
    .local p2, i:I
    :cond_2
    invoke-static {p1}, Lanywheresoftware/b4a/keywords/LayoutValues;->readFromStream(Ljava/io/DataInputStream;)Lanywheresoftware/b4a/keywords/LayoutValues;

    .line 48
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method protected static getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I
    .locals 4
    .parameter "ba"
    .parameter "viewName"

    .prologue
    .line 86
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".R$id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 87
    .local v0, Rid:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lanywheresoftware/b4a/BA;->className:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 88
    .end local v0           #Rid:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 89
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static loadLayoutHelper(Lanywheresoftware/b4a/BA;Ljava/util/HashMap;Landroid/widget/RemoteViews;)V
    .locals 10
    .parameter "ba"
    .parameter
    .parameter "rv"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanywheresoftware/b4a/BA;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "_click"

    .line 65
    const-string v6, "eventName"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, eventName:Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, name:Ljava/lang/String;
    const-string v6, ":kids"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 69
    .local v3, kids:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    .line 70
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 74
    .end local v1           #i:I
    :cond_0
    iget-object v6, p0, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_click"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lanywheresoftware/b4a/keywords/Common;->getComponentIntent(Lanywheresoftware/b4a/BA;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v1

    .line 76
    .local v1, i:Landroid/content/Intent;
    const-string v6, "b4a_internal_event"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_click"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-static {p0, v4}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I

    move-result v2

    .line 78
    .local v2, id:I
    iget-object v6, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    .line 79
    const/high16 v7, 0x800

    .line 78
    invoke-static {v6, v2, v1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 80
    .local v5, pi:Landroid/app/PendingIntent;
    invoke-virtual {p2, v2, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 82
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #id:I
    .end local v5           #pi:Landroid/app/PendingIntent;
    :cond_1
    return-void

    .line 71
    .local v1, i:I
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {p0, v6, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->loadLayoutHelper(Lanywheresoftware/b4a/BA;Ljava/util/HashMap;Landroid/widget/RemoteViews;)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private raiseEventWithDebuggingSupport(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 2
    .parameter "ba"
    .parameter "event"

    .prologue
    .line 122
    sget-boolean v0, Lanywheresoftware/b4a/BA;->debugMode:Z

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    new-instance v1, Lanywheresoftware/b4a/objects/RemoteViewsWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper$1;-><init>(Lanywheresoftware/b4a/objects/RemoteViewsWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2, v0}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public HandleWidgetEvents(Lanywheresoftware/b4a/BA;Landroid/content/Intent;)Z
    .locals 4
    .parameter "ba"
    .parameter "StartingIntent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "b4a_internal_event"

    .line 105
    if-nez p2, :cond_0

    move v0, v3

    .line 119
    :goto_0
    return v0

    .line 107
    :cond_0
    const-string v0, "b4a_internal_event"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "b4a_internal_event"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->raiseEventWithDebuggingSupport(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    move v0, v2

    .line 109
    goto :goto_0

    .line 111
    :cond_1
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->eventName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_requestupdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->raiseEventWithDebuggingSupport(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    move v0, v2

    .line 113
    goto :goto_0

    .line 115
    :cond_2
    const-string v0, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->eventName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->raiseEventWithDebuggingSupport(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    move v0, v2

    .line 117
    goto :goto_0

    :cond_3
    move v0, v3

    .line 119
    goto :goto_0
.end method

.method public SetImage(Lanywheresoftware/b4a/BA;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "ba"
    .parameter "ImageViewName"
    .parameter "Image"

    .prologue
    .line 155
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->checkNull()V

    .line 156
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 157
    return-void
.end method

.method public SetProgress(Lanywheresoftware/b4a/BA;Ljava/lang/String;I)V
    .locals 3
    .parameter "ba"
    .parameter "ProgressBarName"
    .parameter "Progress"

    .prologue
    .line 179
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->checkNull()V

    .line 180
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I

    move-result v1

    const-string v2, "setProgress"

    invoke-virtual {v0, v1, v2, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 181
    return-void
.end method

.method public SetText(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ba"
    .parameter "ViewName"
    .parameter "Text"

    .prologue
    .line 139
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->checkNull()V

    .line 140
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public SetTextColor(Lanywheresoftware/b4a/BA;Ljava/lang/String;I)V
    .locals 2
    .parameter "ba"
    .parameter "ViewName"
    .parameter "Color"

    .prologue
    .line 163
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->checkNull()V

    .line 164
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 165
    return-void
.end method

.method public SetTextSize(Lanywheresoftware/b4a/BA;Ljava/lang/String;F)V
    .locals 3
    .parameter "ba"
    .parameter "ViewName"
    .parameter "Size"

    .prologue
    .line 171
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->checkNull()V

    .line 172
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I

    move-result v1

    const-string v2, "setTextSize"

    invoke-virtual {v0, v1, v2, p3}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 173
    return-void
.end method

.method public SetVisible(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 3
    .parameter "ba"
    .parameter "ViewName"
    .parameter "Visible"

    .prologue
    .line 147
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->checkNull()V

    .line 148
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    invoke-static {p1, p2}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->getIdForView(Lanywheresoftware/b4a/BA;Ljava/lang/String;)I

    move-result v1

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 149
    return-void

    .line 148
    :cond_0
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public UpdateWidget(Lanywheresoftware/b4a/BA;)V
    .locals 4
    .parameter "ba"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->checkNull()V

    .line 187
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lanywheresoftware/b4a/BA;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lanywheresoftware/b4a/BA;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_BR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget-object v2, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    .line 190
    return-void
.end method

.method protected checkNull()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->original:Landroid/os/Parcel;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteViews should be set by calling ConfigureHomeWidget."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->original:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->original:Landroid/os/Parcel;

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/RemoteViewsWrapper;->current:Landroid/widget/RemoteViews;

    .line 99
    :cond_1
    return-void
.end method
