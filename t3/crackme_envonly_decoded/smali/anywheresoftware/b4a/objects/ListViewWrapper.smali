.class public Lanywheresoftware/b4a/objects/ListViewWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "ListViewWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "ListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 7
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
    .line 239
    .local p1, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 240
    new-instance p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    .end local p0
    check-cast p3, Landroid/content/Context;

    .end local p3
    invoke-direct {p0, p3}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;-><init>(Landroid/content/Context;)V

    .line 242
    :cond_0
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    .line 243
    .local v3, list:Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;
    const-string v5, "drawable"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 244
    .local v1, drawProps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    invoke-static {v3, v1, p2, v5}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 245
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    const-string v5, "fastScrollEnabled"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v5}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->setFastScrollEnabled(Z)V

    .line 247
    if-eqz p2, :cond_1

    .line 248
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    const/16 v5, 0xa

    if-le v2, v5, :cond_2

    .line 253
    iget-object v5, v3, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {v5}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->notifyDataSetChanged()V

    .line 255
    .end local v2           #i:I
    :cond_1
    return-object v3

    .line 249
    .restart local v2       #i:I
    :cond_2
    new-instance v4, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;

    invoke-direct {v4}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;-><init>()V

    .line 250
    .local v4, s:Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Item #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->Text:Ljava/lang/String;

    .line 251
    iget-object v5, v3, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iget-object v5, v5, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public AddSingleLine(Ljava/lang/String;)V
    .locals 1
    .parameter "Text"

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->AddSingleLine2(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public AddSingleLine2(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "Text"
    .parameter "ReturnValue"

    .prologue
    .line 129
    new-instance v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;-><init>()V

    .line 130
    .local v0, sl:Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;
    iput-object p1, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->Text:Ljava/lang/String;

    .line 131
    iput-object p2, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineData;->ReturnValue:Ljava/lang/Object;

    .line 132
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->add(Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;)V

    .line 133
    return-void
.end method

.method public AddTwoLines(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "Text1"
    .parameter "Text2"

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->AddTwoLines2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public AddTwoLines2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "Text1"
    .parameter "Text2"
    .parameter "ReturnValue"

    .prologue
    .line 147
    new-instance v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;-><init>()V

    .line 148
    .local v0, t:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;
    iput-object p1, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;->Text:Ljava/lang/String;

    .line 149
    iput-object p3, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;->ReturnValue:Ljava/lang/Object;

    .line 150
    iput-object p2, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesData;->SecondLineText:Ljava/lang/String;

    .line 151
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->add(Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;)V

    .line 152
    return-void
.end method

.method public AddTwoLinesAndBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "Text1"
    .parameter "Text2"
    .parameter "Bitmap"

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->AddTwoLinesAndBitmap2(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public AddTwoLinesAndBitmap2(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 1
    .parameter "Text1"
    .parameter "Text2"
    .parameter "Bitmap"
    .parameter "ReturnValue"

    .prologue
    .line 166
    new-instance v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;-><init>()V

    .line 167
    .local v0, t:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;
    iput-object p1, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;->Text:Ljava/lang/String;

    .line 168
    iput-object p4, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;->ReturnValue:Ljava/lang/Object;

    .line 169
    iput-object p2, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;->SecondLineText:Ljava/lang/String;

    .line 170
    iput-object p3, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapData;->Bitmap:Landroid/graphics/Bitmap;

    .line 171
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->add(Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;)V

    .line 172
    return-void
.end method

.method public Clear()V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->notifyDataSetChanged()V

    .line 198
    return-void
.end method

.method public GetItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "Index"

    .prologue
    .line 183
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {v0, p1}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public RemoveAt(I)V
    .locals 1
    .parameter "Index"

    .prologue
    .line 189
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->notifyDataSetChanged()V

    .line 191
    return-void
.end method

.method public SetSelection(I)V
    .locals 0
    .parameter "Position"

    .prologue
    .line 224
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->setSelection(I)V

    .line 225
    return-void
.end method

.method public add(Lanywheresoftware/b4a/objects/SimpleListAdapter$SimpleItem;)V
    .locals 1
    .parameter "si"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->notifyDataSetChanged()V

    .line 177
    return-void
.end method

.method public getFastScrollEnabled()Z
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public getSingleLineLayout()Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->SingleLine:Lanywheresoftware/b4a/objects/SimpleListAdapter$SingleLineLayout;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/SimpleListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getTwoLinesAndBitmap()Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->TwoLinesAndBitmap:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesAndBitmapLayout;

    return-object v0
.end method

.method public getTwoLinesLayout()Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v0, p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->adapter:Lanywheresoftware/b4a/objects/SimpleListAdapter;

    iget-object v0, v0, Lanywheresoftware/b4a/objects/SimpleListAdapter;->TwoLines:Lanywheresoftware/b4a/objects/SimpleListAdapter$TwoLinesLayout;

    return-object v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 3
    .parameter "ba"
    .parameter "eventName"
    .parameter "keepOldObject"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 44
    if-nez p3, :cond_0

    .line 45
    new-instance v0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, s:Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;
    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 48
    .end local v0           #s:Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;
    :cond_0
    const/4 v1, 0x1

    invoke-super {p0, p1, p2, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_itemclick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    new-instance v2, Lanywheresoftware/b4a/objects/ListViewWrapper$1;

    invoke-direct {v2, p0, p1, p2}, Lanywheresoftware/b4a/objects/ListViewWrapper$1;-><init>(Lanywheresoftware/b4a/objects/ListViewWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_itemlongclick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    new-instance v2, Lanywheresoftware/b4a/objects/ListViewWrapper$2;

    invoke-direct {v2, p0, p1, p2}, Lanywheresoftware/b4a/objects/ListViewWrapper$2;-><init>(Lanywheresoftware/b4a/objects/ListViewWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 74
    :cond_2
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 0
    .parameter "Enabled"

    .prologue
    .line 204
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->setFastScrollEnabled(Z)V

    .line 205
    return-void
.end method

.method public setScrollingBackgroundColor(I)V
    .locals 0
    .parameter "Color"

    .prologue
    .line 216
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/ListViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;

    invoke-virtual {p0, p1}, Lanywheresoftware/b4a/objects/ListViewWrapper$SimpleListView;->setCacheColorHint(I)V

    .line 217
    return-void
.end method
