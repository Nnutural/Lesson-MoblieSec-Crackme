.class public Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$MacWrapper;
.super Ljava/lang/Object;
.source "CipherWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Mac"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MacWrapper"
.end annotation


# instance fields
.field mac:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialise(Ljava/lang/String;Ljava/security/Key;)V
    .locals 1
    .parameter "algorithm"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 598
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$MacWrapper;->mac:Ljavax/crypto/Mac;

    .line 599
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$MacWrapper;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 600
    return-void
.end method

.method public Sign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 608
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$MacWrapper;->mac:Ljavax/crypto/Mac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

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
    .line 617
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$MacWrapper;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 618
    return-void
.end method

.method public Verify([B)Z
    .locals 3
    .parameter "signature"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 626
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$MacWrapper;->mac:Ljavax/crypto/Mac;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 627
    .local v0, sig:[B
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 636
    const-wide v0, 0x3ff199999999999aL

    return-wide v0
.end method
