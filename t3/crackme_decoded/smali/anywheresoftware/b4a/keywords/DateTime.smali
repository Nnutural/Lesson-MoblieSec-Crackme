.class public Lanywheresoftware/b4a/keywords/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# static fields
.field public static final TicksPerDay:J = 0x5265c00L

.field public static final TicksPerHour:J = 0x36ee80L

.field public static final TicksPerMinute:J = 0xea60L

.field public static final TicksPerSecond:J = 0x3e8L

.field private static _instance:Lanywheresoftware/b4a/keywords/DateTime;


# instance fields
.field private cal:Ljava/util/Calendar;

.field private date:Ljava/util/Date;

.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private timeFormat:Ljava/text/SimpleDateFormat;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanywheresoftware/b4a/keywords/DateTime;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 43
    iget-object v0, p0, Lanywheresoftware/b4a/keywords/DateTime;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanywheresoftware/b4a/keywords/DateTime;->timeFormat:Ljava/text/SimpleDateFormat;

    .line 45
    iget-object v0, p0, Lanywheresoftware/b4a/keywords/DateTime;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 46
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lanywheresoftware/b4a/keywords/DateTime;->date:Ljava/util/Date;

    .line 47
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    .line 48
    return-void
.end method

.method public static Add(JIII)J
    .locals 3
    .parameter "Ticks"
    .parameter "Years"
    .parameter "Months"
    .parameter "Days"

    .prologue
    .line 230
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v1

    iget-object v0, v1, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    .line 231
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 232
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 233
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 234
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->add(II)V

    .line 235
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static Date(J)Ljava/lang/String;
    .locals 3
    .parameter "Ticks"

    .prologue
    .line 62
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    .line 63
    .local v0, d:Lanywheresoftware/b4a/keywords/DateTime;
    iget-object v1, v0, Lanywheresoftware/b4a/keywords/DateTime;->date:Ljava/util/Date;

    invoke-virtual {v1, p0, p1}, Ljava/util/Date;->setTime(J)V

    .line 64
    iget-object v1, v0, Lanywheresoftware/b4a/keywords/DateTime;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, v0, Lanywheresoftware/b4a/keywords/DateTime;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static DateParse(Ljava/lang/String;)J
    .locals 2
    .parameter "Date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static GetDayOfMonth(J)I
    .locals 2
    .parameter "Ticks"

    .prologue
    .line 177
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 178
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static GetDayOfWeek(J)I
    .locals 2
    .parameter "Ticks"

    .prologue
    .line 194
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 195
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static GetDayOfYear(J)I
    .locals 2
    .parameter "Ticks"

    .prologue
    .line 185
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 186
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static GetHour(J)I
    .locals 2
    .parameter "Ticks"

    .prologue
    .line 202
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 203
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static GetMinute(J)I
    .locals 2
    .parameter "Ticks"

    .prologue
    .line 218
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 219
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static GetMonth(J)I
    .locals 2
    .parameter "Ticks"

    .prologue
    .line 169
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 170
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static GetSecond(J)I
    .locals 2
    .parameter "Ticks"

    .prologue
    .line 210
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 211
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static GetTimeZoneOffsetAt(J)I
    .locals 2
    .parameter "Date"

    .prologue
    .line 155
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    return v0
.end method

.method public static GetYear(J)I
    .locals 2
    .parameter "Ticks"

    .prologue
    .line 161
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 162
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static SetTimeZone(I)V
    .locals 4
    .parameter "OffsetHours"

    .prologue
    .line 140
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    new-instance v1, Ljava/util/SimpleTimeZone;

    mul-int/lit16 v2, p0, 0xe10

    mul-int/lit16 v2, v2, 0x3e8

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    iput-object v1, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    .line 141
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->cal:Ljava/util/Calendar;

    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v1

    iget-object v1, v1, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 142
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v1

    iget-object v1, v1, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 143
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v1

    iget-object v1, v1, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 144
    return-void
.end method

.method public static Time(J)Ljava/lang/String;
    .locals 3
    .parameter "Ticks"

    .prologue
    .line 73
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    .line 74
    .local v0, d:Lanywheresoftware/b4a/keywords/DateTime;
    iget-object v1, v0, Lanywheresoftware/b4a/keywords/DateTime;->date:Ljava/util/Date;

    invoke-virtual {v1, p0, p1}, Ljava/util/Date;->setTime(J)V

    .line 75
    iget-object v1, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, v0, Lanywheresoftware/b4a/keywords/DateTime;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static TimeParse(Ljava/lang/String;)J
    .locals 8
    .parameter "Time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const-wide/32 v6, 0x5265c00

    .line 128
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v4

    iget-object v4, v4, Lanywheresoftware/b4a/keywords/DateTime;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 129
    .local v0, time:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 130
    .local v2, today:J
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v4

    iget-object v4, v4, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v4

    iget-object v4, v4, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v4

    iget-object v4, v4, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 133
    :cond_0
    rem-long v4, v2, v6

    sub-long/2addr v2, v4

    .line 134
    rem-long v4, v0, v6

    add-long/2addr v4, v2

    return-wide v4
.end method

.method public static getDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceDefaultDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 114
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceDefaultTimeFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 121
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getInst()Lanywheresoftware/b4a/keywords/DateTime;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lanywheresoftware/b4a/keywords/DateTime;->_instance:Lanywheresoftware/b4a/keywords/DateTime;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lanywheresoftware/b4a/keywords/DateTime;

    invoke-direct {v0}, Lanywheresoftware/b4a/keywords/DateTime;-><init>()V

    sput-object v0, Lanywheresoftware/b4a/keywords/DateTime;->_instance:Lanywheresoftware/b4a/keywords/DateTime;

    .line 34
    :cond_0
    sget-object v0, Lanywheresoftware/b4a/keywords/DateTime;->_instance:Lanywheresoftware/b4a/keywords/DateTime;

    return-object v0
.end method

.method public static getNow()J
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZoneOffset()I
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeZone:Ljava/util/TimeZone;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    return v0
.end method

.method public static setDateFormat(Ljava/lang/String;)V
    .locals 1
    .parameter "Pattern"

    .prologue
    .line 97
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static setTimeFormat(Ljava/lang/String;)V
    .locals 1
    .parameter "Pattern"

    .prologue
    .line 86
    invoke-static {}, Lanywheresoftware/b4a/keywords/DateTime;->getInst()Lanywheresoftware/b4a/keywords/DateTime;

    move-result-object v0

    iget-object v0, v0, Lanywheresoftware/b4a/keywords/DateTime;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 87
    return-void
.end method
