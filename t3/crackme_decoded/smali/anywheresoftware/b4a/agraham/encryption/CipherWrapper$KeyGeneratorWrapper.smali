.class public Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;
.super Ljava/lang/Object;
.source "CipherWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "KeyGenerator"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGeneratorWrapper"
.end annotation


# instance fields
.field private key:Ljavax/crypto/SecretKey;

.field private kgen:Ljavax/crypto/KeyGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GenerateKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->kgen:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->key:Ljavax/crypto/SecretKey;

    .line 335
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->key:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public Initialize(Ljava/lang/String;)V
    .locals 1
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 325
    invoke-static {p1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->kgen:Ljavax/crypto/KeyGenerator;

    .line 326
    return-void
.end method

.method public KeyFromBytes([B)V
    .locals 2
    .parameter "keydata"

    .prologue
    .line 352
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->kgen:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->key:Ljavax/crypto/SecretKey;

    .line 353
    return-void
.end method

.method public KeyToBytes()[B
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->key:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->key:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->key:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 380
    const-wide v0, 0x3ff199999999999aL

    return-wide v0
.end method

.method public setKey(Ljavax/crypto/SecretKey;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 372
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;->key:Ljavax/crypto/SecretKey;

    .line 373
    return-void
.end method
