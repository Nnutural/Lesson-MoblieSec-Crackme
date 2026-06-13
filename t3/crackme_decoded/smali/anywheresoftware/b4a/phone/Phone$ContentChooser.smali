.class public Lanywheresoftware/b4a/phone/Phone$ContentChooser;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ContentChooser"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/phone/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentChooser"
.end annotation


# instance fields
.field private eventName:Ljava/lang/String;

.field private ion:Lanywheresoftware/b4a/IOnActivityResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lanywheresoftware/b4a/phone/Phone$ContentChooser;Lanywheresoftware/b4a/IOnActivityResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lanywheresoftware/b4a/phone/Phone$ContentChooser;->ion:Lanywheresoftware/b4a/IOnActivityResult;

    return-void
.end method

.method static synthetic access$1(Lanywheresoftware/b4a/phone/Phone$ContentChooser;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 779
    iget-object v0, p0, Lanywheresoftware/b4a/phone/Phone$ContentChooser;->eventName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public Initialize(Ljava/lang/String;)V
    .locals 1
    .parameter "EventName"

    .prologue
    .line 788
    sget-object v0, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/phone/Phone$ContentChooser;->eventName:Ljava/lang/String;

    .line 789
    return-void
.end method

.method public Show(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ba"
    .parameter "Mime"
    .parameter "Title"

    .prologue
    .line 800
    iget-object v1, p0, Lanywheresoftware/b4a/phone/Phone$ContentChooser;->eventName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 801
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ContentChooser not initialized."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 802
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 803
    .local v0, in:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    invoke-static {v0, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 806
    new-instance v1, Lanywheresoftware/b4a/phone/Phone$ContentChooser$1;

    invoke-direct {v1, p0, p1}, Lanywheresoftware/b4a/phone/Phone$ContentChooser$1;-><init>(Lanywheresoftware/b4a/phone/Phone$ContentChooser;Lanywheresoftware/b4a/BA;)V

    iput-object v1, p0, Lanywheresoftware/b4a/phone/Phone$ContentChooser;->ion:Lanywheresoftware/b4a/IOnActivityResult;

    .line 836
    iget-object v1, p0, Lanywheresoftware/b4a/phone/Phone$ContentChooser;->ion:Lanywheresoftware/b4a/IOnActivityResult;

    invoke-virtual {p1, v1, v0}, Lanywheresoftware/b4a/BA;->startActivityForResult(Lanywheresoftware/b4a/IOnActivityResult;Landroid/content/Intent;)V

    .line 837
    return-void
.end method
