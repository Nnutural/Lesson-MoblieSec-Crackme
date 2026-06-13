.class public Lanywheresoftware/b4a/objects/WebViewWrapper;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "WebViewWrapper.java"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "WebView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
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
    .line 187
    .local p1, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 188
    if-eqz p2, :cond_1

    .line 189
    new-instance v3, Landroid/view/View;

    move-object v0, p3

    check-cast v0, Landroid/content/Context;

    move-object v5, v0

    invoke-direct {v3, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 190
    .local v3, v:Landroid/view/View;
    check-cast p3, Landroid/content/Context;

    .end local p3
    invoke-virtual {p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "webview.png"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 191
    .local v2, in:Ljava/io/InputStream;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 192
    .local v1, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 193
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    move-object p0, v3

    .line 204
    .end local v1           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #v:Landroid/view/View;
    .end local p0
    :cond_0
    :goto_0
    invoke-static {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->build(Ljava/lang/Object;Ljava/util/Map;Z)Landroid/view/View;

    .line 205
    check-cast p0, Landroid/view/View;

    return-object p0

    .line 197
    .restart local p0
    .restart local p3
    :cond_1
    new-instance v4, Landroid/webkit/WebView;

    check-cast p3, Landroid/content/Context;

    .end local p3
    invoke-direct {v4, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 198
    .local v4, wv:Landroid/webkit/WebView;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const-string v6, "javaScriptEnabled"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 199
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const-string v6, "zoomEnabled"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 200
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 201
    move-object p0, v4

    .local p0, prev:Landroid/webkit/WebView;
    goto :goto_0
.end method


# virtual methods
.method public Back()V
    .locals 0

    .prologue
    .line 176
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    .line 177
    return-void
.end method

.method public CaptureBitmap()Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    .locals 5

    .prologue
    .line 128
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v2

    .line 129
    .local v2, pic:Landroid/graphics/Picture;
    new-instance v0, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;

    invoke-direct {v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;-><init>()V

    .line 130
    .local v0, bw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;
    invoke-virtual {v2}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Picture;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->InitializeMutable(II)V

    .line 131
    new-instance v1, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;

    invoke-direct {v1}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;-><init>()V

    .line 132
    .local v1, cw:Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;
    invoke-virtual {v0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper$BitmapWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0}, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->Initialize2(Landroid/graphics/Bitmap;)V

    .line 133
    iget-object v3, v1, Lanywheresoftware/b4a/objects/drawable/CanvasWrapper;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 134
    return-object v0
.end method

.method public Forward()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goForward()V

    .line 183
    return-void
.end method

.method public LoadHtml(Ljava/lang/String;)V
    .locals 6
    .parameter "Html"

    .prologue
    .line 116
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "file:///"

    const-string v3, "text/html"

    const-string v4, "UTF8"

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public LoadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "Url"

    .prologue
    .line 105
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public StopLoading()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 123
    return-void
.end method

.method public Zoom(Z)Z
    .locals 1
    .parameter "In"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->zoomIn()Z

    move-result v0

    .line 170
    :goto_0
    return v0

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->zoomOut()Z

    move-result v0

    goto :goto_0
.end method

.method public getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoomEnabled()Z
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    return v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 3
    .parameter "ba"
    .parameter "eventName"
    .parameter "keepOldObject"
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 49
    if-nez p3, :cond_0

    .line 50
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->setObject(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 53
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 55
    :cond_0
    invoke-super {p0, p1, p2, v2}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    .line 56
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    new-instance v1, Lanywheresoftware/b4a/objects/WebViewWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lanywheresoftware/b4a/objects/WebViewWrapper$1;-><init>(Lanywheresoftware/b4a/objects/WebViewWrapper;Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 82
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    new-instance v1, Lanywheresoftware/b4a/objects/WebViewWrapper$2;

    invoke-direct {v1, p0}, Lanywheresoftware/b4a/objects/WebViewWrapper$2;-><init>(Lanywheresoftware/b4a/objects/WebViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 150
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 151
    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 157
    invoke-virtual {p0}, Lanywheresoftware/b4a/objects/WebViewWrapper;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 158
    return-void
.end method
