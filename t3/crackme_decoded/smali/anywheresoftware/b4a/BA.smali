.class public Lanywheresoftware/b4a/BA;
.super Ljava/lang/Object;
.source "BA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/BA$ActivityObject;,
        Lanywheresoftware/b4a/BA$Author;,
        Lanywheresoftware/b4a/BA$B4ARunnable;,
        Lanywheresoftware/b4a/BA$DesignerName;,
        Lanywheresoftware/b4a/BA$DontInheritEvents;,
        Lanywheresoftware/b4a/BA$Events;,
        Lanywheresoftware/b4a/BA$Hide;,
        Lanywheresoftware/b4a/BA$Permissions;,
        Lanywheresoftware/b4a/BA$ShortName;,
        Lanywheresoftware/b4a/BA$Version;
    }
.end annotation


# static fields
.field public static applicationContext:Landroid/app/Application;

.field private static checkStackTraceEvery50:I

.field public static final cul:Ljava/util/Locale;

.field public static debugLine:Ljava/lang/String;

.field public static debugLineNum:I

.field public static debugMode:Z

.field public static density:F

.field public static final handler:Landroid/os/Handler;

.field public static numberFormat:Ljava/text/NumberFormat;

.field public static packageName:Ljava/lang/String;

.field private static volatile threadPool:Lanywheresoftware/b4a/B4AThreadPool;


# instance fields
.field public final activity:Landroid/app/Activity;

.field public activityBA:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lanywheresoftware/b4a/BA;",
            ">;"
        }
    .end annotation
.end field

.field public final className:Ljava/lang/String;

.field public final context:Landroid/content/Context;

.field public final htSubs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreEventsFromOtherThreadsDuringMsgboxError:Z

.field private volatile isActivityPaused:Z

.field public final isService:Z

.field private lastException:Ljava/lang/Exception;

.field private messagesDuringPaused:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private numberOfStackedEvents:I

.field private onActivityResultCode:I

.field private onActivityResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lanywheresoftware/b4a/IOnActivityResult;",
            ">;>;"
        }
    .end annotation
.end field

.field public final processBA:Lanywheresoftware/b4a/BA;

.field private sender:Ljava/lang/Object;

.field public service:Landroid/app/Service;

.field public final vg:Lanywheresoftware/b4a/BALayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    .line 40
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    .line 50
    const/high16 v0, 0x3f80

    sput v0, Lanywheresoftware/b4a/BA;->density:F

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lanywheresoftware/b4a/BA;->debugMode:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lanywheresoftware/b4a/BALayout;Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "vg"
    .parameter "processBA"
    .parameter "packageName"
    .parameter "className"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    .line 48
    iput v2, p0, Lanywheresoftware/b4a/BA;->numberOfStackedEvents:I

    .line 49
    iput-object v4, p0, Lanywheresoftware/b4a/BA;->lastException:Ljava/lang/Exception;

    .line 52
    iput-boolean v2, p0, Lanywheresoftware/b4a/BA;->ignoreEventsFromOtherThreadsDuringMsgboxError:Z

    .line 54
    iput-boolean v3, p0, Lanywheresoftware/b4a/BA;->isActivityPaused:Z

    .line 56
    iput v3, p0, Lanywheresoftware/b4a/BA;->onActivityResultCode:I

    .line 60
    iput-object p1, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lanywheresoftware/b4a/BA;->density:F

    .line 64
    :cond_0
    if-eqz p1, :cond_1

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 65
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    iput-object v1, p0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    .line 66
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    sput-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    .line 70
    :goto_0
    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/app/Service;

    if-eqz v1, :cond_2

    .line 71
    iput-boolean v3, p0, Lanywheresoftware/b4a/BA;->isService:Z

    .line 72
    check-cast p1, Landroid/app/Service;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    sput-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    .line 76
    :goto_1
    iput-object p3, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    .line 77
    iput-object p2, p0, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    .line 78
    sput-object p4, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lanywheresoftware/b4a/BA;->className:Ljava/lang/String;

    .line 80
    return-void

    .line 69
    .restart local p1
    :cond_1
    iput-object v4, p0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    goto :goto_0

    .line 75
    :cond_2
    iput-boolean v2, p0, Lanywheresoftware/b4a/BA;->isService:Z

    goto :goto_1
.end method

.method public static CharFromString(Ljava/lang/String;)C
    .locals 2
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 330
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 333
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public static NumberToString(D)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x2

    .line 363
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, s:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    .line 365
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 366
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static NumberToString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 369
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static NumberToString(J)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 372
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ObjectToBoolean(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 383
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 384
    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 386
    :goto_0
    return v0

    .restart local p0
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static ObjectToChar(Ljava/lang/Object;)C
    .locals 1
    .parameter "o"

    .prologue
    .line 389
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 390
    check-cast p0, Ljava/lang/Character;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 392
    :goto_0
    return v0

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanywheresoftware/b4a/BA;->CharFromString(Ljava/lang/String;)C

    move-result v0

    goto :goto_0
.end method

.method public static ObjectToNumber(Ljava/lang/Object;)D
    .locals 2
    .parameter "o"

    .prologue
    .line 375
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 376
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 379
    :goto_0
    return-wide v0

    .restart local p0
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static TypeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .parameter "o"

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    .line 397
    :try_start_0
    sget v4, Lanywheresoftware/b4a/BA;->checkStackTraceEvery50:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lanywheresoftware/b4a/BA;->checkStackTraceEvery50:I

    rem-int/lit8 v4, v4, 0x32

    if-nez v4, :cond_0

    .line 398
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0x96

    if-lt v4, v5, :cond_0

    .line 399
    sget v4, Lanywheresoftware/b4a/BA;->checkStackTraceEvery50:I

    sub-int/2addr v4, v6

    sput v4, Lanywheresoftware/b4a/BA;->checkStackTraceEvery50:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    const-string v4, ""

    .line 419
    :goto_0
    return-object v4

    .line 403
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const/4 v2, 0x0

    .line 406
    .local v2, i:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v5, :cond_2

    .line 414
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lt v4, v9, :cond_1

    .line 415
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 416
    :cond_1
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 406
    :cond_2
    aget-object v1, v4, v6

    .line 407
    .local v1, f:Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 408
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 409
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v7, v2, 0x3

    if-nez v7, :cond_3

    .line 411
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_3
    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 418
    .end local v1           #f:Ljava/lang/reflect/Field;
    .end local v2           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 419
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "N/A"

    goto :goto_0
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/BA;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lanywheresoftware/b4a/BA;->ignoreEventsFromOtherThreadsDuringMsgboxError:Z

    return v0
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/BA;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lanywheresoftware/b4a/BA;->isActivityPaused:Z

    return v0
.end method

.method static synthetic access$2(Lanywheresoftware/b4a/BA;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->messagesDuringPaused:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lanywheresoftware/b4a/BA;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lanywheresoftware/b4a/BA;->messagesDuringPaused:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$4(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-static {p0, p1}, Lanywheresoftware/b4a/BA;->markTaskAsFinish(Ljava/lang/Object;I)V

    return-void
.end method

.method public static getEnumFromString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, enumType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public static gm(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "map"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 424
    .local p2, defValue:Ljava/lang/Object;,"TT;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 425
    .local v0, o:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_0

    move-object v1, p2

    .line 427
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static isTaskRunning(Ljava/lang/Object;I)Z
    .locals 1
    .parameter "container"
    .parameter "TaskId"

    .prologue
    .line 235
    sget-object v0, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    invoke-virtual {v0, p0, p1}, Lanywheresoftware/b4a/B4AThreadPool;->isRunning(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method private static markTaskAsFinish(Ljava/lang/Object;I)V
    .locals 1
    .parameter "container"
    .parameter "TaskId"

    .prologue
    .line 218
    sget-object v0, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    invoke-virtual {v0, p0, p1}, Lanywheresoftware/b4a/B4AThreadPool;->markTaskAsFinished(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public static parseBoolean(Ljava/lang/String;)Z
    .locals 3
    .parameter "b"

    .prologue
    .line 322
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    .line 324
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    const/4 v0, 0x0

    goto :goto_0

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot parse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static submitRunnable(Ljava/lang/Runnable;Ljava/lang/Object;I)Ljava/util/concurrent/Future;
    .locals 2
    .parameter "runnable"
    .parameter "container"
    .parameter "TaskId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 223
    sget-object v0, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    if-nez v0, :cond_1

    .line 224
    const-class v0, Lanywheresoftware/b4a/BA;

    monitor-enter v0

    .line 225
    :try_start_0
    sget-object v1, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    if-nez v1, :cond_0

    .line 226
    new-instance v1, Lanywheresoftware/b4a/B4AThreadPool;

    invoke-direct {v1}, Lanywheresoftware/b4a/B4AThreadPool;-><init>()V

    sput-object v1, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    .line 224
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_1
    instance-of v0, p1, Lanywheresoftware/b4a/ObjectWrapper;

    if-eqz v0, :cond_2

    .line 231
    check-cast p1, Lanywheresoftware/b4a/ObjectWrapper;

    .end local p1
    invoke-interface {p1}, Lanywheresoftware/b4a/ObjectWrapper;->getObject()Ljava/lang/Object;

    move-result-object p1

    .line 232
    .restart local p1
    :cond_2
    sget-object v0, Lanywheresoftware/b4a/BA;->threadPool:Lanywheresoftware/b4a/B4AThreadPool;

    invoke-virtual {v0, p0, p1, p2}, Lanywheresoftware/b4a/B4AThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;I)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 224
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static varargs switchObjectToInt(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 6
    .parameter "test"
    .parameter "values"

    .prologue
    .line 430
    const/4 v1, -0x1

    .line 431
    .local v1, res:I
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_3

    .line 432
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 433
    .local v2, t:D
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_1

    .line 448
    .end local v2           #t:D
    :cond_0
    :goto_1
    return v1

    .line 434
    .restart local v2       #t:D
    :cond_1
    aget-object p0, p1, v0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v2, v4

    if-nez v4, :cond_2

    .line 435
    move v1, v0

    .line 436
    goto :goto_1

    .line 433
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    .end local v0           #i:I
    .end local v2           #t:D
    .restart local p0
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 442
    aget-object v4, p1, v0

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 443
    move v1, v0

    .line 444
    goto :goto_1

    .line 441
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getLastException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BA;->getLastException()Ljava/lang/Exception;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->lastException:Ljava/lang/Exception;

    goto :goto_0
.end method

.method public getSender()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BA;->getSender()Ljava/lang/Object;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->sender:Ljava/lang/Object;

    goto :goto_0
.end method

.method public isActivityPaused()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0}, Lanywheresoftware/b4a/BA;->isActivityPaused()Z

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lanywheresoftware/b4a/BA;->isActivityPaused:Z

    goto :goto_0
.end method

.method public loadHtSubs(Ljava/lang/Class;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 246
    return-void

    .line 241
    :cond_0
    aget-object v0, v1, v3

    .line 242
    .local v0, m:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    iget-object v4, p0, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "request"
    .parameter "result"
    .parameter "intent"

    .prologue
    const-string v4, "B4A"

    .line 294
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->onActivityResultMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->onActivityResultMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 296
    .local v1, wi:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lanywheresoftware/b4a/IOnActivityResult;>;"
    if-nez v1, :cond_1

    .line 297
    const-string v2, "B4A"

    const-string v2, "onActivityResult: wi is null"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v1           #wi:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lanywheresoftware/b4a/IOnActivityResult;>;"
    :cond_0
    :goto_0
    return-void

    .line 300
    .restart local v1       #wi:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lanywheresoftware/b4a/IOnActivityResult;>;"
    :cond_1
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->onActivityResultMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/IOnActivityResult;

    .line 302
    .local v0, i:Lanywheresoftware/b4a/IOnActivityResult;
    if-nez v0, :cond_2

    .line 303
    const-string v2, "B4A"

    const-string v2, "onActivityResult: IOnActivityResult was released"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    :cond_2
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->messagesDuringPaused:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lanywheresoftware/b4a/BA;->messagesDuringPaused:Ljava/util/ArrayList;

    .line 308
    :cond_3
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->messagesDuringPaused:Ljava/util/ArrayList;

    new-instance v3, Lanywheresoftware/b4a/BA$2;

    invoke-direct {v3, p0, v0, p2, p3}, Lanywheresoftware/b4a/BA$2;-><init>(Lanywheresoftware/b4a/BA;Lanywheresoftware/b4a/IOnActivityResult;ILandroid/content/Intent;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public varargs raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "sender"
    .parameter "event"
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 89
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, v2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .parameter "sender"
    .parameter "allowDuringPause"
    .parameter "event"
    .parameter "throwErrorIfMissingSub"
    .parameter "params"

    .prologue
    .line 92
    iget-object v3, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 170
    .end local p1
    :goto_0
    return-object v3

    .line 95
    .restart local p1
    :cond_0
    iget-boolean v3, p0, Lanywheresoftware/b4a/BA;->isActivityPaused:Z

    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    .line 96
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ignoring event: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    const/4 v3, 0x0

    goto :goto_0

    .line 100
    :cond_1
    :try_start_0
    iget v3, p0, Lanywheresoftware/b4a/BA;->numberOfStackedEvents:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lanywheresoftware/b4a/BA;->numberOfStackedEvents:I

    .line 101
    move-object/from16 v0, p1

    move-object v1, p0

    iput-object v0, v1, Lanywheresoftware/b4a/BA;->sender:Ljava/lang/Object;

    .line 102
    iget-object v3, p0, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lanywheresoftware/b4a/B4AUncaughtException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 103
    .local v12, m:Ljava/lang/reflect/Method;
    if-eqz v12, :cond_2

    .line 105
    :try_start_1
    iget-object v3, p0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object v0, v12

    move-object v1, v3

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lanywheresoftware/b4a/B4AUncaughtException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 167
    iget v4, p0, Lanywheresoftware/b4a/BA;->numberOfStackedEvents:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lanywheresoftware/b4a/BA;->numberOfStackedEvents:I

    .line 168
    const/16 p1, 0x0

    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception v3

    move-object v11, v3

    .line 107
    .local v11, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sub "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " signature does not match expected signature."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lanywheresoftware/b4a/B4AUncaughtException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .end local v12           #m:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    move-object v11, v3

    .line 114
    .local v11, e:Lanywheresoftware/b4a/B4AUncaughtException;
    :try_start_3
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    .end local v11           #e:Lanywheresoftware/b4a/B4AUncaughtException;
    .end local p1
    :catchall_0
    move-exception v3

    .line 167
    iget v4, p0, Lanywheresoftware/b4a/BA;->numberOfStackedEvents:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lanywheresoftware/b4a/BA;->numberOfStackedEvents:I

    .line 168
    const/16 p1, 0x0

    .line 169
    .restart local p1
    throw v3

    .line 110
    .restart local v12       #m:Ljava/lang/reflect/Method;
    :cond_2
    if-eqz p4, :cond_e

    .line 111
    :try_start_4
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sub "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was not found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lanywheresoftware/b4a/B4AUncaughtException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 115
    .end local v12           #m:Ljava/lang/reflect/Method;
    :catch_2
    move-exception v3

    move-object v11, v3

    .line 116
    .local v11, e:Ljava/lang/Throwable;
    :try_start_5
    instance-of v3, v11, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_3

    .line 117
    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    .line 118
    :cond_3
    instance-of v3, v11, Lanywheresoftware/b4a/B4AUncaughtException;

    if-eqz v3, :cond_5

    .line 119
    iget v3, p0, Lanywheresoftware/b4a/BA;->numberOfStackedEvents:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 120
    check-cast v11, Lanywheresoftware/b4a/B4AUncaughtException;

    .end local v11           #e:Ljava/lang/Throwable;
    throw v11

    .line 122
    .restart local v11       #e:Ljava/lang/Throwable;
    :cond_4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "catching B4AUncaughtException"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    iget v3, p0, Lanywheresoftware/b4a/BA;->numberOfStackedEvents:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lanywheresoftware/b4a/BA;->numberOfStackedEvents:I

    .line 168
    const/16 p1, 0x0

    .line 123
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 126
    :cond_5
    :try_start_6
    instance-of v3, v11, Ljava/lang/Error;

    if-eqz v3, :cond_6

    .line 127
    check-cast v11, Ljava/lang/Error;

    .end local v11           #e:Ljava/lang/Throwable;
    throw v11

    .line 129
    .restart local v11       #e:Ljava/lang/Throwable;
    :cond_6
    const-string v14, ""

    .line 130
    .local v14, sub:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v4, :cond_8

    .line 141
    :goto_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 142
    const-string v3, "B4A"

    invoke-static {v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_7
    const-string v3, "B4A"

    const-string v4, ""

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    iget-object v3, p0, Lanywheresoftware/b4a/BA;->activityBA:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_b

    .line 145
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 130
    :cond_8
    aget-object v13, v3, v5

    .line 131
    .local v13, ste:Ljava/lang/StackTraceElement;
    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lanywheresoftware/b4a/BA;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 134
    sget-object v3, Lanywheresoftware/b4a/BA;->debugLine:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " (B4A line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lanywheresoftware/b4a/BA;->debugLineNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lanywheresoftware/b4a/BA;->debugLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 137
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " (java line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 138
    goto/16 :goto_2

    .line 130
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 146
    .end local v13           #ste:Ljava/lang/StackTraceElement;
    :cond_b
    const/4 v3, 0x1

    iput-boolean v3, p0, Lanywheresoftware/b4a/BA;->ignoreEventsFromOtherThreadsDuringMsgboxError:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 148
    :try_start_7
    const-string v3, "B4A"

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lanywheresoftware/b4a/BA;->activityBA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lanywheresoftware/b4a/BA;

    move-object/from16 v0, p1

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    move-object v3, v0

    invoke-direct {v9, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .local v9, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "Error occurred"

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An error has occurred in sub:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 152
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nContinue?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 153
    new-instance v10, Lanywheresoftware/b4a/Msgbox$DialogResponse;

    const/4 v3, 0x0

    invoke-direct {v10, v3}, Lanywheresoftware/b4a/Msgbox$DialogResponse;-><init>(Z)V

    .line 154
    .local v10, dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    const-string v3, "Yes"

    invoke-virtual {v9, v3, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    const-string v3, "No"

    invoke-virtual {v9, v3, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iget v4, p0, Lanywheresoftware/b4a/BA;->numberOfStackedEvents:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    const/4 v4, 0x1

    :goto_3
    invoke-static {v3, v4}, Lanywheresoftware/b4a/Msgbox;->msgbox(Landroid/app/AlertDialog;Z)V

    .line 157
    iget v3, v10, Lanywheresoftware/b4a/Msgbox$DialogResponse;->res:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_c

    .line 158
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 159
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 163
    :cond_c
    const/4 v3, 0x0

    :try_start_8
    iput-boolean v3, p0, Lanywheresoftware/b4a/BA;->ignoreEventsFromOtherThreadsDuringMsgboxError:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 167
    iget v3, p0, Lanywheresoftware/b4a/BA;->numberOfStackedEvents:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lanywheresoftware/b4a/BA;->numberOfStackedEvents:I

    .line 168
    const/16 p1, 0x0

    .line 170
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    .end local v10           #dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    .end local v11           #e:Ljava/lang/Throwable;
    .end local v14           #sub:Ljava/lang/String;
    .restart local p1
    :goto_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 156
    .end local p1
    .restart local v9       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v10       #dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    .restart local v11       #e:Ljava/lang/Throwable;
    .restart local v14       #sub:Ljava/lang/String;
    :cond_d
    const/4 v4, 0x0

    goto :goto_3

    .line 162
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    .end local v10           #dr:Lanywheresoftware/b4a/Msgbox$DialogResponse;
    :catchall_1
    move-exception v3

    .line 163
    const/4 v4, 0x0

    :try_start_9
    iput-boolean v4, p0, Lanywheresoftware/b4a/BA;->ignoreEventsFromOtherThreadsDuringMsgboxError:Z

    .line 164
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 167
    .end local v11           #e:Ljava/lang/Throwable;
    .end local v14           #sub:Ljava/lang/String;
    .restart local v12       #m:Ljava/lang/reflect/Method;
    .restart local p1
    :cond_e
    iget v3, p0, Lanywheresoftware/b4a/BA;->numberOfStackedEvents:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lanywheresoftware/b4a/BA;->numberOfStackedEvents:I

    .line 168
    const/16 p1, 0x0

    goto :goto_4
.end method

.method public raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "sender"
    .parameter "container"
    .parameter "TaskId"
    .parameter "event"
    .parameter "throwErrorIfMissingSub"
    .parameter "params"

    .prologue
    .line 177
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v1, :cond_0

    .line 178
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lanywheresoftware/b4a/BA;->raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 215
    :goto_0
    return-object v1

    .line 180
    :cond_0
    new-instance v0, Lanywheresoftware/b4a/BA$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lanywheresoftware/b4a/BA$1;-><init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;Z[Ljava/lang/Object;)V

    .line 214
    .local v0, runnable:Ljava/lang/Runnable;
    sget-object v1, Lanywheresoftware/b4a/BA;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActivityPaused(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 253
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v1, p1}, Lanywheresoftware/b4a/BA;->setActivityPaused(Z)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iput-boolean p1, p0, Lanywheresoftware/b4a/BA;->isActivityPaused:Z

    .line 258
    if-nez p1, :cond_0

    .line 259
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->messagesDuringPaused:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lanywheresoftware/b4a/BA;->messagesDuringPaused:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 261
    :try_start_0
    const-string v1, "B4A"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "running waiting messages ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lanywheresoftware/b4a/BA;->messagesDuringPaused:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->messagesDuringPaused:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 266
    iget-object v1, p0, Lanywheresoftware/b4a/BA;->messagesDuringPaused:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 262
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 263
    .local v0, msg:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 265
    .end local v0           #msg:Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    .line 266
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->messagesDuringPaused:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 267
    throw v1
.end method

.method public setLastException(Ljava/lang/Exception;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 351
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 353
    :cond_0
    iput-object p1, p0, Lanywheresoftware/b4a/BA;->lastException:Ljava/lang/Exception;

    .line 354
    return-void

    .line 352
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Exception;

    .restart local p1
    goto :goto_0
.end method

.method public declared-synchronized startActivityForResult(Lanywheresoftware/b4a/IOnActivityResult;Landroid/content/Intent;)V
    .locals 5
    .parameter "iOnActivityResult"
    .parameter "intent"

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v2, p1, p2}, Lanywheresoftware/b4a/BA;->startActivityForResult(Lanywheresoftware/b4a/IOnActivityResult;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    :cond_1
    :try_start_1
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->activityBA:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->activityBA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/BA;

    .line 279
    .local v0, aBa:Lanywheresoftware/b4a/BA;
    if-eqz v0, :cond_0

    .line 281
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->onActivityResultMap:Ljava/util/HashMap;

    if-nez v2, :cond_2

    .line 282
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lanywheresoftware/b4a/BA;->onActivityResultMap:Ljava/util/HashMap;

    .line 283
    :cond_2
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->onActivityResultMap:Ljava/util/HashMap;

    iget v3, p0, Lanywheresoftware/b4a/BA;->onActivityResultCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :try_start_2
    iget-object v2, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    iget v3, p0, Lanywheresoftware/b4a/BA;->onActivityResultCode:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lanywheresoftware/b4a/BA;->onActivityResultCode:I

    invoke-virtual {v2, p2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 287
    .local v1, e:Landroid/content/ActivityNotFoundException;
    :try_start_3
    iget-object v2, p0, Lanywheresoftware/b4a/BA;->onActivityResultMap:Ljava/util/HashMap;

    iget v3, p0, Lanywheresoftware/b4a/BA;->onActivityResultCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lanywheresoftware/b4a/IOnActivityResult;->ResultArrived(ILandroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 272
    .end local v0           #aBa:Lanywheresoftware/b4a/BA;
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public subExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "sub"

    .prologue
    .line 82
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->processBA:Lanywheresoftware/b4a/BA;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/BA;->htSubs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
