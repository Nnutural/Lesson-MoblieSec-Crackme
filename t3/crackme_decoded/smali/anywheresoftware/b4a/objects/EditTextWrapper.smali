.class public Lanywheresoftware/b4a/objects/EditTextWrapper;
.super Lanywheresoftware/b4a/objects/TextViewWrapper;
.source "EditTextWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "EditText"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/TextViewWrapper",
        "<",
        "Landroid/widget/EditText;",
        ">;"
    }
.end annotation


# static fields
.field public static final INPUT_TYPE_DECIMAL_NUMBERS:I = 0x3002

.field public static final INPUT_TYPE_NONE:I = 0x0

.field public static final INPUT_TYPE_NUMBERS:I = 0x2

.field public static final INPUT_TYPE_PHONE:I = 0x3

.field public static final INPUT_TYPE_TEXT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lanywheresoftware/b4a/objects/TextViewWrapper;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;Ljava/util/HashMap;ZLjava/lang/Object;)Landroid/view/View;
    .locals 11
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
    .local p1, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 211
    if-nez p0, :cond_1

    .line 212
    new-instance v4, Landroid/widget/EditText;

    check-cast p3, Landroid/content/Context;

    .end local p3
    invoke-direct {v4, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 216
    .local v4, v:Landroid/widget/EditText;
    :goto_0
    const-string v5, "hintColor"

    const v6, -0x777778

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lanywheresoftware/b4a/BA;->gm(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 217
    const-string v5, "hint"

    const-string v6, ""

    invoke-static {p1, v5, v6}, Lanywheresoftware/b4a/BA;->gm(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 218
    invoke-static {v4, p1, p2}, Lanywheresoftware/b4a/objects/TextViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    .line 219
    const-string v5, "inputType"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 220
    .local v3, inputType:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 221
    const-class v5, Lanywheresoftware/b4a/objects/EditTextWrapper;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "INPUT_TYPE_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 222
    .local v1, f:Ljava/lang/reflect/Field;
    invoke-virtual {v1, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 224
    .end local v1           #f:Ljava/lang/reflect/Field;
    :cond_0
    const-string v5, "singleLine"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 225
    const-string v5, "password"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 226
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 229
    :goto_1
    const-string v5, "wrap"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lanywheresoftware/b4a/BA;->gm(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 230
    const-string v5, "forceDone"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lanywheresoftware/b4a/BA;->gm(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 231
    .local v2, forceDone:Z
    if-eqz v2, :cond_4

    .line 232
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 235
    :goto_3
    return-object v4

    .line 215
    .end local v2           #forceDone:Z
    .end local v3           #inputType:Ljava/lang/String;
    .end local v4           #v:Landroid/widget/EditText;
    .restart local p0
    .restart local p3
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/widget/EditText;

    move-object v4, v0

    .restart local v4       #v:Landroid/widget/EditText;
    goto/16 :goto_0

    .line 228
    .end local p0
    .end local p3
    .restart local v3       #inputType:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_1

    :cond_3
    move v5, v9

    .line 229
    goto :goto_2

    .line 234
    .restart local v2       #forceDone:Z
    :cond_4
    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_3
.end method


# virtual methods
.method public SelectAll()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 164
    return-void
.end method

.method public getHint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 195
    .local v0, c:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHintColor()I
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getCurrentHintTextColor()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 4
    .parameter "ba"
    .parameter "eventName"
    .parameter "keepOldObject"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, Lanywheresoftware/b4a/objects/TextViewWrapper;->ba:Lanywheresoftware/b4a/BA;

    .line 73
    if-nez p3, :cond_0

    .line 74
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lanywheresoftware/b4a/objects/EditTextWrapper;->setObject(Ljava/lang/Object;)V

    .line 75
    :cond_0
    const/4 v2, 0x1

    invoke-super {p0, p1, p2, v2}, Lanywheresoftware/b4a/objects/TextViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_textchanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    new-instance v1, Lanywheresoftware/b4a/objects/EditTextWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lanywheresoftware/b4a/objects/EditTextWrapper$1;-><init>(Lanywheresoftware/b4a/objects/EditTextWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 97
    .local v1, watcher:Landroid/text/TextWatcher;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    .end local v1           #watcher:Landroid/text/TextWatcher;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_enterpressed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    new-instance v0, Lanywheresoftware/b4a/objects/EditTextWrapper$2;

    invoke-direct {v0, p0, p1, p2}, Lanywheresoftware/b4a/objects/EditTextWrapper$2;-><init>(Lanywheresoftware/b4a/objects/EditTextWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    .line 110
    .local v0, o:Landroid/widget/TextView$OnEditorActionListener;
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 112
    .end local v0           #o:Landroid/widget/TextView$OnEditorActionListener;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_focuschanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Lanywheresoftware/b4a/objects/EditTextWrapper$3;

    invoke-direct {v3, p0, p1, p2}, Lanywheresoftware/b4a/objects/EditTextWrapper$3;-><init>(Lanywheresoftware/b4a/objects/EditTextWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 121
    :cond_3
    return-void
.end method

.method public setForceDoneButton(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 133
    :goto_0
    return-void

    .line 132
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 191
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method

.method public setHintColor(I)V
    .locals 0
    .parameter "Color"

    .prologue
    .line 203
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 204
    return-void
.end method

.method public setInputType(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 172
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 173
    return-void
.end method

.method public setPasswordMode(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 148
    :goto_0
    return-void

    .line 147
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public setSelectionStart(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 157
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 158
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0
    .parameter "singleLine"

    .prologue
    .line 138
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 139
    return-void
.end method

.method public setWrap(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 183
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/EditTextWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 184
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
