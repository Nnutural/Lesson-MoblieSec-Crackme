.class public Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$SignaturerWrapper;
.super Ljava/lang/Object;
.source "CipherWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Signature"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignaturerWrapper"
.end annotation


# static fields
.field public static final SIGNATURE_SIGN:I = 0x1

.field public static final SIGNATURE_VERIFY:I


# instance fields
.field sig:Ljava/security/Signature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialise(Ljava/lang/String;ILjava/security/Key;)V
    .locals 2
    .parameter "algorithm"
    .parameter "mode"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 526
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$SignaturerWrapper;->sig:Ljava/security/Signature;

    .line 527
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 528
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$SignaturerWrapper;->sig:Ljava/security/Signature;

    check-cast p3, Ljava/security/PrivateKey;

    .end local p3
    invoke-virtual {v0, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 533
    :goto_0
    return-void

    .line 529
    .restart local p3
    :cond_0
    if-nez p2, :cond_1

    .line 530
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$SignaturerWrapper;->sig:Ljava/security/Signature;

    check-cast p3, Ljava/security/PublicKey;

    .end local p3
    invoke-virtual {v0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    goto :goto_0

    .line 532
    .restart local p3
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Signature - Invalid signature mode specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Sign()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$SignaturerWrapper;->sig:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method public Update([B)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$SignaturerWrapper;->sig:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 551
    return-void
.end method

.method public Verify([B)Z
    .locals 1
    .parameter "signature"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$SignaturerWrapper;->sig:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 567
    const-wide v0, 0x3ff199999999999aL

    return-wide v0
.end method
