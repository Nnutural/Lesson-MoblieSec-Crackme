.class public Lanywheresoftware/b4a/objects/MediaPlayerWrapper;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "MediaPlayer"
.end annotation


# instance fields
.field protected eventName:Ljava/lang/String;

.field protected mp:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    .line 38
    return-void
.end method

.method public Initialize2(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 2
    .parameter "ba"
    .parameter "EventName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->Initialize()V

    .line 45
    sget-object v0, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->eventName:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    new-instance v1, Lanywheresoftware/b4a/objects/MediaPlayerWrapper$1;

    invoke-direct {v1, p0, p1}, Lanywheresoftware/b4a/objects/MediaPlayerWrapper$1;-><init>(Lanywheresoftware/b4a/objects/MediaPlayerWrapper;Lanywheresoftware/b4a/BA;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 54
    return-void
.end method

.method public IsPlaying()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public Load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "Dir"
    .parameter "FileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 59
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 60
    invoke-static {}, Lanywheresoftware/b4a/objects/streams/File;->getDirAssets()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 61
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget-object v1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 62
    .local v6, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    .line 63
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 79
    .end local v6           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 80
    return-void

    .line 65
    .restart local v6       #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 68
    .end local v6           #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_1
    const-string v0, "ContentDir"

    if-ne p1, v0, :cond_3

    .line 69
    sget-object v0, Lanywheresoftware/b4a/BA;->applicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 70
    .restart local v6       #fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-gez v0, :cond_2

    .line 71
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 77
    .end local v6           #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_3
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public Pause()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 107
    return-void
.end method

.method public Play()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 95
    return-void
.end method

.method public Release()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 140
    return-void
.end method

.method public SetVolume(FF)V
    .locals 1
    .parameter "Right"
    .parameter "Left"

    .prologue
    .line 127
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 128
    return-void
.end method

.method public Stop()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 101
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getLooping()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public setLooping(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 88
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 89
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 121
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 122
    return-void
.end method
