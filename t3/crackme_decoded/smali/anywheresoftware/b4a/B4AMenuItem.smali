.class public Lanywheresoftware/b4a/B4AMenuItem;
.super Ljava/lang/Object;
.source "B4AMenuItem.java"


# instance fields
.field public final drawable:Landroid/graphics/drawable/Drawable;

.field public final eventName:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "drawable"
    .parameter "eventName"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lanywheresoftware/b4a/B4AMenuItem;->title:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lanywheresoftware/b4a/B4AMenuItem;->drawable:Landroid/graphics/drawable/Drawable;

    .line 12
    iput-object p3, p0, Lanywheresoftware/b4a/B4AMenuItem;->eventName:Ljava/lang/String;

    .line 13
    return-void
.end method
