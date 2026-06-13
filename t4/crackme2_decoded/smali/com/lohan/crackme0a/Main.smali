.class public Lcom/lohan/crackme0a/Main;
.super Landroid/app/Activity;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private generateIDHash()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 65
    invoke-direct {p0}, Lcom/lohan/crackme0a/Main;->getMobileID()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, deviceID:Ljava/lang/String;
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 67
    .local v4, m:Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v9, v8, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 68
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 69
    .local v1, digest:[B
    array-length v9, v1

    new-array v6, v9, [B

    .line 72
    .local v6, transform:[B
    const/4 v2, 0x0

    .local v2, digestPos:I
    const/4 v7, 0x0

    .local v7, transformPos:I
    :goto_0
    array-length v9, v1

    if-lt v2, v9, :cond_0

    .line 77
    new-instance v9, Ljava/math/BigInteger;

    const/4 v10, 0x1

    invoke-direct {v9, v10, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, hash:Ljava/lang/String;
    const/16 v9, 0xf

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 81
    return-object v3

    .line 73
    .end local v3           #hash:Ljava/lang/String;
    :cond_0
    array-length v9, v1

    add-int/lit8 v9, v9, -0x1

    if-lt v2, v9, :cond_1

    move v5, v8

    .line 74
    .local v5, nextPos:I
    :goto_1
    aget-byte v9, v1, v2

    aget-byte v10, v1, v5

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    .line 72
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 73
    .end local v5           #nextPos:I
    :cond_1
    add-int/lit8 v5, v2, 0x1

    goto :goto_1
.end method

.method private getMobileID()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/lohan/crackme0a/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 89
    .local v1, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, imei:Ljava/lang/String;
    return-object v0
.end method

.method private validateSerial(Ljava/lang/String;)I
    .locals 2
    .parameter "serial"

    .prologue
    .line 54
    :try_start_0
    invoke-direct {p0}, Lcom/lohan/crackme0a/Main;->generateIDHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const/4 v1, 0x1

    .line 60
    :goto_0
    return v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 31
    :pswitch_0
    const v4, 0x7f050003

    invoke-virtual {p0, v4}, Lcom/lohan/crackme0a/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 32
    .local v1, et:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, serial:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/lohan/crackme0a/Main;->validateSerial(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 35
    const-string v4, "Invalid code.\nTry again."

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 38
    :cond_0
    const-string v4, "Code is valid!"

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 40
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 41
    const v4, 0x7f050004

    invoke-virtual {p0, v4}, Lcom/lohan/crackme0a/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 42
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 44
    const v4, 0x7f050002

    invoke-virtual {p0, v4}, Lcom/lohan/crackme0a/Main;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 45
    .local v3, tv:Landroid/widget/TextView;
    const-string v4, "Code Accepted :D"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x7f050004
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/lohan/crackme0a/Main;->setContentView(I)V

    .line 23
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/lohan/crackme0a/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 24
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method
