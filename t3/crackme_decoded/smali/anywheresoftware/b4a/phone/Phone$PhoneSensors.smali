.class public Lanywheresoftware/b4a/phone/Phone$PhoneSensors;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "PhoneSensors"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneSensors"
.end annotation


# static fields
.field public static TYPE_ACCELEROMETER:I

.field public static TYPE_GYROSCOPE:I

.field public static TYPE_LIGHT:I

.field public static TYPE_MAGNETIC_FIELD:I

.field public static TYPE_ORIENTATION:I

.field public static TYPE_PRESSURE:I

.field public static TYPE_PROXIMITY:I

.field public static TYPE_TEMPERATURE:I


# instance fields
.field private currentType:I

.field private listener:Landroid/hardware/SensorEventListener;

.field private sensorDelay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1008
    const/4 v0, 0x5

    sput v0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->TYPE_LIGHT:I

    .line 1012
    const/4 v0, 0x2

    sput v0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->TYPE_MAGNETIC_FIELD:I

    .line 1016
    const/4 v0, 0x6

    sput v0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->TYPE_PRESSURE:I

    .line 1021
    const/16 v0, 0x8

    sput v0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->TYPE_PROXIMITY:I

    .line 1025
    const/4 v0, 0x7

    sput v0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->TYPE_TEMPERATURE:I

    .line 1029
    const/4 v0, 0x4

    sput v0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->TYPE_GYROSCOPE:I

    .line 1033
    const/4 v0, 0x1

    sput v0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->TYPE_ACCELEROMETER:I

    .line 1037
    const/4 v0, 0x3

    sput v0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->TYPE_ORIENTATION:I

    .line 1004
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialize(I)V
    .locals 1
    .parameter "SensorType"

    .prologue
    .line 1045
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->Initialize2(II)V

    .line 1046
    return-void
.end method

.method public Initialize2(II)V
    .locals 0
    .parameter "SensorType"
    .parameter "SensorDelay"

    .prologue
    .line 1053
    iput p1, p0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->currentType:I

    .line 1054
    iput p2, p0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->sensorDelay:I

    .line 1055
    return-void
.end method

.method public StartListening(Lanywheresoftware/b4a/BA;Ljava/lang/String;)Z
    .locals 5
    .parameter "ba"
    .parameter "EventName"

    .prologue
    .line 1062
    sget-object v2, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 1063
    .local v1, sm:Landroid/hardware/SensorManager;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_sensorchanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, s:Ljava/lang/String;
    new-instance v2, Lanywheresoftware/b4a/phone/Phone$PhoneSensors$1;

    invoke-direct {v2, p0, p1, v0}, Lanywheresoftware/b4a/phone/Phone$PhoneSensors$1;-><init>(Lanywheresoftware/b4a/phone/Phone$PhoneSensors;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    iput-object v2, p0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->listener:Landroid/hardware/SensorEventListener;

    .line 1077
    iget-object v2, p0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->listener:Landroid/hardware/SensorEventListener;

    iget v3, p0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->currentType:I

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget v4, p0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->sensorDelay:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    return v2
.end method

.method public StopListening(Lanywheresoftware/b4a/BA;)V
    .locals 3
    .parameter "ba"

    .prologue
    .line 1083
    iget-object v1, p0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->listener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    .line 1084
    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1085
    .local v0, sm:Landroid/hardware/SensorManager;
    iget-object v1, p0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->listener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1087
    .end local v0           #sm:Landroid/hardware/SensorManager;
    :cond_0
    return-void
.end method

.method public getMaxValue()F
    .locals 3

    .prologue
    .line 1093
    sget-object v1, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iget v2, p0, Lanywheresoftware/b4a/phone/Phone$PhoneSensors;->currentType:I

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 1094
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1095
    :cond_0
    const/high16 v1, -0x4080

    .line 1096
    .end local p0
    :goto_0
    return v1

    .restart local p0
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/Sensor;

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    goto :goto_0
.end method
