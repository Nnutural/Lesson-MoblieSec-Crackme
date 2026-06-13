.class public Lanywheresoftware/b4a/objects/TabHostWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "TabHostWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "TabHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Landroid/widget/TabHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 9
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
    .line 180
    .local p1, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 181
    .local v1, firstTime:Z
    if-nez p0, :cond_0

    .line 182
    const/4 v1, 0x1

    .line 183
    new-instance p0, Landroid/widget/TabHost;

    .end local p0
    move-object v0, p3

    check-cast v0, Landroid/content/Context;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    :cond_0
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    .line 186
    .local v4, th:Landroid/widget/TabHost;
    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    .line 187
    move-object v0, p3

    check-cast v0, Landroid/content/Context;

    move-object v7, v0

    invoke-static {v7, v4}, Lanywheresoftware/b4a/objects/TabHostWrapper;->initializeTabWidget(Landroid/content/Context;Landroid/widget/TabHost;)V

    .line 188
    new-instance v6, Landroid/widget/TextView;

    check-cast p3, Landroid/content/Context;

    .end local p3
    invoke-direct {v6, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 189
    .local v6, v:Landroid/widget/TextView;
    const-string v7, "This is an example page.\nTab pages should be added programmatically."

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    const/4 v7, 0x3

    if-le v2, v7, :cond_2

    .line 198
    .end local v2           #i:I
    .end local v6           #v:Landroid/widget/TextView;
    :cond_1
    return-object v4

    .line 191
    .restart local v2       #i:I
    .restart local v6       #v:Landroid/widget/TextView;
    :cond_2
    new-instance v3, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;

    invoke-direct {v3, v6}, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;-><init>(Landroid/view/View;)V

    .line 192
    .local v3, m:Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;
    const-string v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 193
    .local v5, ts:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v5, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Page "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 195
    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static initializeTabWidget(Landroid/content/Context;Landroid/widget/TabHost;)V
    .locals 7
    .parameter "context"
    .parameter "tabHost"

    .prologue
    const/4 v6, -0x1

    .line 63
    new-instance v3, Landroid/widget/TabWidget;

    invoke-direct {v3, p0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 64
    .local v3, tw:Landroid/widget/TabWidget;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, ll:Landroid/widget/LinearLayout;
    const/4 v4, 0x5

    invoke-static {v4}, Lanywheresoftware/b4a/keywords/Common;->DipToCurrent(I)I

    move-result v2

    .line 66
    .local v2, pad:I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->setId(I)V

    .line 69
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, fl:Landroid/widget/FrameLayout;
    const v4, 0x1020011

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 72
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 73
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v4}, Landroid/widget/TabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 77
    return-void
.end method


# virtual methods
.method public AddTab(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ba"
    .parameter "Title"
    .parameter "LayoutFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    .line 101
    .local v0, pw:Lanywheresoftware/b4a/objects/PanelWrapper;
    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p3, p1}, Lanywheresoftware/b4a/objects/PanelWrapper;->LoadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;

    .line 103
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, p2, v1}, Lanywheresoftware/b4a/objects/TabHostWrapper;->AddTab2(Ljava/lang/String;Landroid/view/View;)V

    .line 104
    return-void
.end method

.method public AddTab2(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .parameter "Title"
    .parameter "View"

    .prologue
    .line 84
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "~temp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 86
    :cond_0
    new-instance v0, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;

    invoke-direct {v0, p2}, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;-><init>(Landroid/view/View;)V

    .line 87
    .local v0, m:Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 88
    .local v1, ts:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 89
    invoke-virtual {v1, p1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 90
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TabHost;

    invoke-virtual {p0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 91
    return-void
.end method

.method public AddTabWithIcon(Lanywheresoftware/b4a/BA;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .parameter "ba"
    .parameter "Title"
    .parameter "DefaultBitmap"
    .parameter "SelectedBitmap"
    .parameter "LayoutFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lanywheresoftware/b4a/objects/PanelWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;-><init>()V

    .line 145
    .local v0, pw:Lanywheresoftware/b4a/objects/PanelWrapper;
    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lanywheresoftware/b4a/objects/PanelWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p5, p1}, Lanywheresoftware/b4a/objects/PanelWrapper;->LoadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;

    .line 147
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/PanelWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, p2, p3, p4, v1}, Lanywheresoftware/b4a/objects/TabHostWrapper;->AddTabWithIcon2(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/view/View;)V

    .line 148
    return-void
.end method

.method public AddTabWithIcon2(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 8
    .parameter "Title"
    .parameter "DefaultBitmap"
    .parameter "SelectedBitmap"
    .parameter "View"

    .prologue
    const/4 v7, 0x0

    .line 113
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "~temp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 115
    :cond_0
    new-instance v2, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;

    invoke-direct {v2, p4}, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;-><init>(Landroid/view/View;)V

    .line 116
    .local v2, m:Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 117
    .local v4, ts:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v4, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 119
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;-><init>()V

    .line 120
    .local v0, bd1:Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    invoke-virtual {v0, p2}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->Initialize(Landroid/graphics/Bitmap;)V

    .line 121
    new-instance v1, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;-><init>()V

    .line 122
    .local v1, bd2:Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;
    invoke-virtual {v1, p3}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->Initialize(Landroid/graphics/Bitmap;)V

    .line 123
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 124
    .local v3, sd:Landroid/graphics/drawable/StateListDrawable;
    const/4 v5, 0x1

    new-array v6, v5, [I

    const v5, 0x10100a1

    aput v5, v6, v7

    .line 125
    invoke-virtual {v1}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 124
    invoke-virtual {v3, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 126
    new-array v6, v7, [I

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/BitmapDrawable;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-virtual {v4, p1, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 128
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TabHost;

    invoke-virtual {p0, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 129
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TabHost;

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TabHost;

    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    return v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 5
    .parameter "ba"
    .parameter "eventName"
    .parameter "keepOldObject"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 44
    if-nez p3, :cond_0

    .line 45
    new-instance v2, Landroid/widget/TabHost;

    iget-object v3, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/objects/TabHostWrapper;->setObject(Ljava/lang/Object;)V

    .line 46
    :cond_0
    const/4 v2, 0x1

    invoke-super {p0, p1, p2, v2}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 47
    iget-object v3, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    invoke-static {v3, v2}, Lanywheresoftware/b4a/objects/TabHostWrapper;->initializeTabWidget(Landroid/content/Context;Landroid/widget/TabHost;)V

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_tabchanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    new-instance v3, Lanywheresoftware/b4a/objects/TabHostWrapper$1;

    invoke-direct {v3, p0, p1, p2}, Lanywheresoftware/b4a/objects/TabHostWrapper$1;-><init>(Lanywheresoftware/b4a/objects/TabHostWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 56
    :cond_1
    new-instance v0, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;

    new-instance v2, Landroid/view/View;

    iget-object v3, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;-><init>(Landroid/view/View;)V

    .line 57
    .local v0, m:Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    const-string v3, "~temp"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 58
    .local v1, ts:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 59
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 60
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TabHost;

    invoke-virtual {p0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 61
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 0
    .parameter "Index"

    .prologue
    .line 159
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/TabHostWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TabHost;

    invoke-virtual {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 160
    return-void
.end method
