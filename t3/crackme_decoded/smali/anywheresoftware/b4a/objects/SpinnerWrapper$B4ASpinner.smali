.class public Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;
.super Landroid/widget/Spinner;
.source "SpinnerWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/SpinnerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "B4ASpinner"
.end annotation


# instance fields
.field adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

.field public ba:Lanywheresoftware/b4a/BA;

.field public disallowItemClick:Z

.field public eventName:Ljava/lang/String;

.field selectedItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    .line 190
    new-instance v0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-direct {v0, p1}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    .line 191
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 192
    return-void
.end method


# virtual methods
.method public setSelection(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 197
    iput p1, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    .line 198
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->ba:Lanywheresoftware/b4a/BA;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->disallowItemClick:Z

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->ba:Lanywheresoftware/b4a/BA;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->eventName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_itemclick"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    iget v1, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x1

    iget-object v4, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->adapter:Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;

    iget v6, p0, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinner;->selectedItem:I

    invoke-virtual {v4, v6}, Lanywheresoftware/b4a/objects/SpinnerWrapper$B4ASpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 199
    aput-object v4, v5, v1

    move-object v1, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lanywheresoftware/b4a/BA;->raiseEvent2(Ljava/lang/Object;ZLjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    return-void
.end method
