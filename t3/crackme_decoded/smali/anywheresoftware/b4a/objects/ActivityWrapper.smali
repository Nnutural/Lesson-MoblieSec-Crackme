.class public Lanywheresoftware/b4a/objects/ActivityWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "ActivityWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Lanywheresoftware/b4a/BALayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_UP:I = 0x1


# direct methods
.method public constructor <init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
    .locals 2
    .parameter "ba"
    .parameter "name"

    .prologue
    .line 67
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    .line 68
    iget-object v0, p1, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->setObject(Ljava/lang/Object;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 70
    const-string v0, "activity_touch"

    invoke-virtual {p1, v0}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/BALayout;

    new-instance v1, Lanywheresoftware/b4a/objects/ActivityWrapper$1;

    invoke-direct {v1, p0, p1}, Lanywheresoftware/b4a/objects/ActivityWrapper$1;-><init>(Lanywheresoftware/b4a/objects/ActivityWrapper;Lanywheresoftware/b4a/BA;)V

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/BALayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    :cond_0
    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 5
    .parameter "prev"
    .parameter
    .parameter "designer"
    .parameter "tag"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 265
    .local p1, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string p3, "drawable"

    .end local p3
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 266
    const/4 v1, 0x0

    .line 265
    invoke-static {p0, p3, p2, v1}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/Drawable;

    .line 267
    .local p3, d:Landroid/graphics/drawable/Drawable;
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    .line 268
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .end local p3           #d:Landroid/graphics/drawable/Drawable;
    check-cast p3, Landroid/app/Activity;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    const-string v1, "titleColor"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/Activity;->setTitleColor(I)V

    .line 271
    const-string p3, "fullScreen"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 272
    .local p3, fullScreen:Z
    const-string v1, "includeTitle"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1           #props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 274
    .local v1, includeTitle:Z
    if-eqz p2, :cond_1

    .line 275
    const-string p1, "anywheresoftware.b4a.designer.Designer"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 276
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string p2, "fullScreen"

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p2

    .line 277
    .local p2, prevFullScreen:Z
    const-string v2, "includeTitle"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    .line 278
    .local v2, prevIncludeTitle:Z
    if-ne p2, p3, :cond_0

    if-eq v1, v2, :cond_1

    .line 279
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .end local p2           #prevFullScreen:Z
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .end local v2           #prevIncludeTitle:Z
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .local p2, i:Landroid/content/Intent;
    const-string v2, "anywheresoftware.b4a.designer.includeTitle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    const-string v1, "anywheresoftware.b4a.designer.fullScreen"

    .end local v1           #includeTitle:Z
    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    const-string p3, "restartActivity"

    .end local p3           #fullScreen:Z
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v1, v2

    invoke-virtual {p1, p3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .end local p1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .end local p2           #i:Landroid/content/Intent;
    :cond_1
    check-cast p0, Landroid/view/View;

    .end local p0
    return-object p0
.end method


# virtual methods
.method public AddMenuItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "Title"
    .parameter "EventName"

    .prologue
    .line 139
    new-instance v0, Lanywheresoftware/b4a/B4AMenuItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lanywheresoftware/b4a/B4AMenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 140
    .local v0, mi:Lanywheresoftware/b4a/B4AMenuItem;
    iget-object v1, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object p0, v1, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/B4AActivity;

    invoke-interface {p0, v0}, Lanywheresoftware/b4a/B4AActivity;->addMenuItem(Lanywheresoftware/b4a/B4AMenuItem;)V

    .line 141
    return-void
.end method

.method public AddMenuItem2(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "Title"
    .parameter "EventName"
    .parameter "Bitmap"

    .prologue
    .line 158
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;-><init>()V

    .line 159
    .local v0, bd:Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    invoke-virtual {v0, p3}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->Initialize(Landroid/graphics/Bitmap;)V

    .line 160
    new-instance v1, Lanywheresoftware/b4a/B4AMenuItem;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, p1, v2, p2}, Lanywheresoftware/b4a/B4AMenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 161
    .local v1, mi:Lanywheresoftware/b4a/B4AMenuItem;
    iget-object v2, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object p0, v2, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/B4AActivity;

    invoke-interface {p0, v1}, Lanywheresoftware/b4a/B4AActivity;->addMenuItem(Lanywheresoftware/b4a/B4AMenuItem;)V

    .line 162
    return-void
.end method

.method public AddView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "View"
    .parameter "Left"
    .parameter "Top"
    .parameter "Width"
    .parameter "Height"

    .prologue
    .line 102
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/BALayout;

    new-instance v0, Lanywheresoftware/b4a/BALayout$LayoutParams;

    invoke-direct {v0, p2, p3, p4, p5}, Lanywheresoftware/b4a/BALayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Lanywheresoftware/b4a/BALayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-void
.end method

.method public BringToFront()V
    .locals 0
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 243
    return-void
.end method

.method public CloseMenu()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 182
    return-void
.end method

.method public Finish()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 259
    return-void
.end method

.method public GetStartingIntent()Lanywheresoftware/b4a/objects/IntentWrapper;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lanywheresoftware/b4a/objects/IntentWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/IntentWrapper;-><init>()V

    .line 89
    .local v0, iw:Lanywheresoftware/b4a/objects/IntentWrapper;
    iget-object v1, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v1, v1, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/IntentWrapper;->setObject(Ljava/lang/Object;)V

    .line 90
    return-object v0
.end method

.method public GetView(I)Lanywheresoftware/b4a/objects/ConcreteViewWrapper;
    .locals 2
    .parameter "Index"

    .prologue
    .line 108
    new-instance v0, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;-><init>()V

    .line 109
    .local v0, vw:Lanywheresoftware/b4a/objects/ConcreteViewWrapper;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/BALayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanywheresoftware/b4a/objects/ConcreteViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 110
    return-object v0
.end method

.method public LoadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;
    .locals 2
    .parameter "Layout"
    .parameter "ba"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 168
    sput-boolean v1, Lanywheresoftware/b4a/AbsObjectWrapper;->Activity_LoadLayout_Was_Called:Z

    .line 169
    iget-object v0, p2, Lanywheresoftware/b4a/BA;->vg:Lanywheresoftware/b4a/BALayout;

    invoke-static {p1, p2, v1, v0}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->loadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;ZLandroid/view/ViewGroup;)Lanywheresoftware/b4a/keywords/LayoutValues;

    move-result-object v0

    return-object v0
.end method

.method public OpenMenu()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 176
    return-void
.end method

.method public RemoveView()V
    .locals 0
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 253
    return-void
.end method

.method public RemoveViewAt(I)V
    .locals 0
    .parameter "Index"

    .prologue
    .line 116
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/BALayout;->removeViewAt(I)V

    .line 117
    return-void
.end method

.method public SendToBack()V
    .locals 0
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 248
    return-void
.end method

.method public SetActivityResult(ILanywheresoftware/b4a/objects/IntentWrapper;)V
    .locals 1
    .parameter "Result"
    .parameter "Data"

    .prologue
    .line 96
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Lanywheresoftware/b4a/objects/IntentWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/Intent;

    invoke-virtual {v0, p1, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 97
    return-void
.end method

.method public getEnabled()Z
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public getNumberOfViews()I
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitleColor()I

    move-result v0

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public getVisible()Z
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ActivityWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/BALayout;

    invoke-virtual {p0}, Lanywheresoftware/b4a/BALayout;->getWidth()I

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "Enabled"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 233
    return-void
.end method

.method public setTitle(Ljava/lang/Object;)V
    .locals 3
    .parameter "Title"

    .prologue
    .line 185
    instance-of v2, p1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 186
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    .line 189
    .local v1, cs:Ljava/lang/CharSequence;
    :goto_0
    iget-object v2, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v2, v2, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    return-void

    .line 188
    .end local v1           #cs:Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #cs:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .parameter "Color"

    .prologue
    .line 201
    iget-object v0, p0, Lanywheresoftware/b4a/objects/ActivityWrapper;->ba:Lanywheresoftware/b4a/BA;

    iget-object v0, v0, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitleColor(I)V

    .line 202
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "Visible"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 224
    return-void
.end method
