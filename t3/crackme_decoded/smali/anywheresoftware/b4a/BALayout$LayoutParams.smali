.class public Lanywheresoftware/b4a/BALayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "BALayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/BALayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public left:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 60
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 54
    invoke-direct {p0, p3, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 55
    iput p1, p0, Lanywheresoftware/b4a/BALayout$LayoutParams;->left:I

    .line 56
    iput p2, p0, Lanywheresoftware/b4a/BALayout$LayoutParams;->top:I

    .line 57
    return-void
.end method


# virtual methods
.method public setFromUserPlane(IIII)V
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 74
    int-to-float v0, p1

    invoke-static {}, Lanywheresoftware/b4a/BALayout;->access$0()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lanywheresoftware/b4a/BALayout$LayoutParams;->left:I

    .line 75
    int-to-float v0, p2

    invoke-static {}, Lanywheresoftware/b4a/BALayout;->access$0()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lanywheresoftware/b4a/BALayout$LayoutParams;->top:I

    .line 76
    int-to-float v0, p3

    invoke-static {}, Lanywheresoftware/b4a/BALayout;->access$0()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lanywheresoftware/b4a/BALayout$LayoutParams;->width:I

    .line 77
    int-to-float v0, p4

    invoke-static {}, Lanywheresoftware/b4a/BALayout;->access$0()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lanywheresoftware/b4a/BALayout$LayoutParams;->height:I

    .line 78
    return-void
.end method

.method public toDesignerMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "left"

    iget v2, p0, Lanywheresoftware/b4a/BALayout$LayoutParams;->left:I

    int-to-float v2, v2

    invoke-static {}, Lanywheresoftware/b4a/BALayout;->access$0()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "top"

    iget v2, p0, Lanywheresoftware/b4a/BALayout$LayoutParams;->top:I

    int-to-float v2, v2

    invoke-static {}, Lanywheresoftware/b4a/BALayout;->access$0()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "width"

    iget v2, p0, Lanywheresoftware/b4a/BALayout$LayoutParams;->width:I

    int-to-float v2, v2

    invoke-static {}, Lanywheresoftware/b4a/BALayout;->access$0()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "height"

    iget v2, p0, Lanywheresoftware/b4a/BALayout$LayoutParams;->height:I

    int-to-float v2, v2

    invoke-static {}, Lanywheresoftware/b4a/BALayout;->access$0()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object v0
.end method
