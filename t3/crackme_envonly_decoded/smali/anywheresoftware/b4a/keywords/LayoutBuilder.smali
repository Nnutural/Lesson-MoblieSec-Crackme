.class public Lanywheresoftware/b4a/keywords/LayoutBuilder;
.super Ljava/lang/Object;
.source "LayoutBuilder.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadLayout(Ljava/lang/String;Lanywheresoftware/b4a/BA;ZLandroid/view/ViewGroup;)Lanywheresoftware/b4a/keywords/LayoutValues;
    .locals 9
    .parameter "layout"
    .parameter "ba"
    .parameter "isActivity"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 34
    const-string v0, ".bal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".bal"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 36
    .restart local p0
    :cond_0
    iget-object v0, p1, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 37
    .local p0, in:Ljava/io/InputStream;
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    .local v7, din:Ljava/io/DataInputStream;
    invoke-static {v7}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v0

    .line 40
    .local v0, version:I
    invoke-static {v7}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v0

    .line 41
    .local v0, pos:I
    :goto_0
    if-gtz v0, :cond_1

    .line 44
    invoke-static {v7}, Lanywheresoftware/b4a/ConnectorUtils;->readInt(Ljava/io/DataInputStream;)I

    move-result v3

    .line 45
    .local v3, numberOfVariants:I
    const/4 p0, 0x0

    .line 46
    .local p0, chosen:Lanywheresoftware/b4a/keywords/LayoutValues;
    invoke-static {p1}, Lanywheresoftware/b4a/keywords/Common;->GetDeviceLayoutValues(Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/keywords/LayoutValues;

    move-result-object v0

    .line 47
    .local v0, device:Lanywheresoftware/b4a/keywords/LayoutValues;
    const/4 v4, 0x0

    .line 48
    .local v4, variantIndex:I
    const v1, 0x7f7fffff

    .line 49
    .local v1, distance:F
    const/4 v2, 0x0

    .local v2, i:I
    move v6, v4

    .end local v4           #variantIndex:I
    .local v6, variantIndex:I
    :goto_1
    if-lt v2, v3, :cond_2

    .line 65
    iget v0, p0, Lanywheresoftware/b4a/keywords/LayoutValues;->Scale:F

    .end local v0           #device:Lanywheresoftware/b4a/keywords/LayoutValues;
    invoke-static {v0}, Lanywheresoftware/b4a/BALayout;->setUserScale(F)V

    .line 66
    invoke-static {v7}, Lanywheresoftware/b4a/ConnectorUtils;->readMap(Ljava/io/DataInputStream;)Ljava/util/HashMap;

    move-result-object v0

    .line 67
    .local v0, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p1, Lanywheresoftware/b4a/BA;->activity:Landroid/app/Activity;

    .end local v2           #i:I
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #distance:F
    const-string v3, "variant"

    .end local v3           #numberOfVariants:I
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    const/4 v6, 0x1

    move-object v1, p1

    move-object v3, p3

    move v4, p2

    .line 67
    invoke-static/range {v0 .. v6}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->loadLayoutHelper(Ljava/util/HashMap;Lanywheresoftware/b4a/BA;Landroid/app/Activity;Landroid/view/ViewGroup;ZLjava/lang/String;Z)V

    .line 69
    .end local v6           #variantIndex:I
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 70
    return-object p0

    .line 42
    .local v0, pos:I
    .local p0, in:Ljava/io/InputStream;
    :cond_1
    int-to-long v1, v0

    int-to-long v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    sub-long v0, v1, v3

    long-to-int v0, v0

    goto :goto_0

    .line 50
    .local v0, device:Lanywheresoftware/b4a/keywords/LayoutValues;
    .restart local v1       #distance:F
    .restart local v2       #i:I
    .restart local v3       #numberOfVariants:I
    .restart local v6       #variantIndex:I
    .local p0, chosen:Lanywheresoftware/b4a/keywords/LayoutValues;
    :cond_2
    invoke-static {v7}, Lanywheresoftware/b4a/keywords/LayoutValues;->readFromStream(Ljava/io/DataInputStream;)Lanywheresoftware/b4a/keywords/LayoutValues;

    move-result-object v4

    .line 51
    .local v4, test:Lanywheresoftware/b4a/keywords/LayoutValues;
    if-nez p0, :cond_3

    .line 52
    move-object p0, v4

    .line 53
    invoke-virtual {v4, v0}, Lanywheresoftware/b4a/keywords/LayoutValues;->calcDistance(Lanywheresoftware/b4a/keywords/LayoutValues;)F

    move-result v1

    .line 54
    move v4, v2

    .line 49
    .end local v6           #variantIndex:I
    .local v4, variantIndex:I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v6, v4

    .end local v4           #variantIndex:I
    .restart local v6       #variantIndex:I
    goto :goto_1

    .line 57
    .local v4, test:Lanywheresoftware/b4a/keywords/LayoutValues;
    :cond_3
    invoke-virtual {v4, v0}, Lanywheresoftware/b4a/keywords/LayoutValues;->calcDistance(Lanywheresoftware/b4a/keywords/LayoutValues;)F

    move-result v5

    .line 58
    .local v5, testDistance:F
    cmpg-float v8, v5, v1

    if-gez v8, :cond_4

    .line 59
    move-object p0, v4

    .line 60
    move v1, v5

    .line 61
    move v4, v2

    .end local v6           #variantIndex:I
    .local v4, variantIndex:I
    goto :goto_2

    .local v4, test:Lanywheresoftware/b4a/keywords/LayoutValues;
    .restart local v6       #variantIndex:I
    :cond_4
    move v4, v6

    .end local v6           #variantIndex:I
    .local v4, variantIndex:I
    goto :goto_2
.end method

.method private static loadLayoutHelper(Ljava/util/HashMap;Lanywheresoftware/b4a/BA;Landroid/app/Activity;Landroid/view/ViewGroup;ZLjava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter "ba"
    .parameter "activity"
    .parameter "parent"
    .parameter "root"
    .parameter "currentVariant"
    .parameter "firstCall"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lanywheresoftware/b4a/BA;",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 78
    .local v2, variant:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 79
    .local v1, o:Landroid/view/View;
    if-nez p4, :cond_0

    if-nez p6, :cond_5

    .line 80
    :cond_0
    if-eqz p4, :cond_4

    move-object p6, p3

    .line 81
    .local p6, act:Landroid/view/ViewGroup;
    :goto_0
    const-string v1, "left"

    .end local v1           #o:Landroid/view/View;
    const-string v3, "left"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "top"

    const-string v3, "top"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "width"

    const-string v3, "width"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "height"

    const-string v3, "height"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #variant:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p6, p0, v1, v2}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 86
    .restart local v1       #o:Landroid/view/View;
    if-nez p4, :cond_7

    .line 87
    const-string p4, "name"

    .end local p4
    invoke-virtual {p0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    sget-object p6, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    .end local p6           #act:Landroid/view/ViewGroup;
    invoke-virtual {p4, p6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p6

    .line 88
    .local p6, name:Ljava/lang/String;
    const-string p4, "type"

    invoke-virtual {p0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 89
    .local p4, cls:Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "anywheresoftware.b4a.objects"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .end local p4           #cls:Ljava/lang/String;
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 91
    .restart local p4       #cls:Ljava/lang/String;
    :cond_1
    invoke-static {p4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    .end local p4           #cls:Ljava/lang/String;
    invoke-virtual {p4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanywheresoftware/b4a/objects/ViewWrapper;

    .line 93
    .local v2, ow:Lanywheresoftware/b4a/objects/ViewWrapper;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p4

    .line 94
    .local p4, field:Ljava/lang/reflect/Field;
    if-eqz p4, :cond_2

    .line 96
    :try_start_1
    invoke-virtual {p4, p2, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    .end local p4           #field:Ljava/lang/reflect/Field;
    .end local p6           #name:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v2, v1}, Lanywheresoftware/b4a/objects/ViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 105
    const-string p4, "eventName"

    invoke-virtual {p0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    sget-object p6, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p4, p6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    const/4 p6, 0x1

    invoke-virtual {v2, p1, p4, p6}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 106
    if-eqz p3, :cond_7

    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-virtual {p3, v1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object p4, v1

    .line 118
    .end local v1           #o:Landroid/view/View;
    .end local v2           #ow:Lanywheresoftware/b4a/objects/ViewWrapper;
    .local p4, o:Landroid/view/View;
    :goto_2
    const-string p3, ":kids"

    .end local p3
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    .line 119
    .local p3, kids:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_3

    .line 120
    const/4 p0, 0x0

    .local p0, i:I
    :goto_3
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p6

    if-lt p0, p6, :cond_6

    .line 126
    .end local p0           #i:I
    :cond_3
    return-void

    .line 80
    .restart local v1       #o:Landroid/view/View;
    .local v2, variant:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p0, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, parent:Landroid/view/ViewGroup;
    .local p4, root:Z
    .local p6, firstCall:Z
    :cond_4
    const/4 p6, 0x0

    goto/16 :goto_0

    .line 97
    .local v2, ow:Lanywheresoftware/b4a/objects/ViewWrapper;
    .local p4, field:Ljava/lang/reflect/Field;
    .local p6, name:Ljava/lang/String;
    :catch_0
    move-exception p4

    .line 98
    .local p4, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance p4, Ljava/lang/RuntimeException;

    .end local p4           #e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Field "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    .end local p6           #name:Ljava/lang/String;
    const-string v3, " was declared with the wrong type."

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p4, p6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1

    .line 101
    :catch_1
    move-exception p4

    goto :goto_1

    .line 112
    .local v2, variant:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, root:Z
    .local p6, firstCall:Z
    :cond_5
    move-object p6, p3

    .line 113
    .end local v1           #o:Landroid/view/View;
    .local p6, o:Landroid/view/View;
    const-string p4, "drawable"

    .end local p4           #root:Z
    invoke-virtual {p0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/HashMap;

    .line 114
    .local p4, drawProps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p3, p4, v1, v2}, Lanywheresoftware/b4a/DynamicBuilder;->build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Ljava/lang/Object;

    .end local v2           #variant:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-result-object p4

    .end local p4           #drawProps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast p4, Landroid/graphics/drawable/Drawable;

    .line 115
    .local p4, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object p4, p6

    .end local p6           #o:Landroid/view/View;
    .local p4, o:Landroid/view/View;
    goto :goto_2

    .line 121
    .local p0, i:I
    .local p3, kids:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    move-object v0, p4

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    const/4 v5, 0x0

    .line 122
    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    .line 121
    invoke-static/range {v1 .. v7}, Lanywheresoftware/b4a/keywords/LayoutBuilder;->loadLayoutHelper(Ljava/util/HashMap;Lanywheresoftware/b4a/BA;Landroid/app/Activity;Landroid/view/ViewGroup;ZLjava/lang/String;Z)V

    .line 120
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .end local p4           #o:Landroid/view/View;
    .restart local v1       #o:Landroid/view/View;
    .local p0, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, parent:Landroid/view/ViewGroup;
    :cond_7
    move-object p4, v1

    .end local v1           #o:Landroid/view/View;
    .restart local p4       #o:Landroid/view/View;
    goto :goto_2
.end method
