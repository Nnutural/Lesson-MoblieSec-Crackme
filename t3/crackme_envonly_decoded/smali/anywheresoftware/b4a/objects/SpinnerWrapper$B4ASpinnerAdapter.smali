.class Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpinnerWrapper.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/SpinnerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "B4ASpinnerAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public textColor:I

.field public textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 233
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    .line 231
    const/high16 v0, 0x4180

    iput v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textSize:F

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    .line 234
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 235
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 253
    if-nez p2, :cond_0

    .line 254
    iget-object v3, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x1090009

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 255
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    iget v4, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textSize:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 256
    iget v3, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    if-eqz v3, :cond_0

    .line 257
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    iget v4, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 260
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 261
    .local v1, o:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 262
    check-cast v1, Ljava/lang/CharSequence;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :goto_0
    return-object p2

    .line 264
    .restart local v1       #o:Ljava/lang/Object;
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 243
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 248
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 269
    if-nez p2, :cond_0

    .line 270
    iget-object v3, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x1090008

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 271
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    iget v4, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textSize:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 272
    iget v3, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    if-eqz v3, :cond_0

    .line 273
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    iget v4, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->textColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 276
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 277
    .local v1, o:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 278
    check-cast v1, Ljava/lang/CharSequence;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :goto_0
    return-object p2

    .line 280
    .restart local v1       #o:Ljava/lang/Object;
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
