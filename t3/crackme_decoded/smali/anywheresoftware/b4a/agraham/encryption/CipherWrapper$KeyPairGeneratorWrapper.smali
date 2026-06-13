.class public Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;
.super Ljava/lang/Object;
.source "CipherWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "KeyPairGenerator"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyPairGeneratorWrapper"
.end annotation


# instance fields
.field keypair:Ljava/security/KeyPair;

.field kpgen:Ljava/security/KeyPairGenerator;

.field privatekey:Ljava/security/PrivateKey;

.field publickey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GenerateKey()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->kpgen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->keypair:Ljava/security/KeyPair;

    .line 418
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->keypair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->publickey:Ljava/security/PublicKey;

    .line 419
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->keypair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->privatekey:Ljava/security/PrivateKey;

    .line 420
    return-void
.end method

.method public Initialize(Ljava/lang/String;I)V
    .locals 1
    .parameter "algorithm"
    .parameter "keysize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 405
    invoke-static {p1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->kpgen:Ljava/security/KeyPairGenerator;

    .line 406
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->kpgen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0, p2}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 407
    return-void
.end method

.method public PrivateKeyFromBytes([B)V
    .locals 3
    .parameter "keydata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 455
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 456
    .local v1, prvKeySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    iget-object v2, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->kpgen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 457
    .local v0, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    iput-object v2, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->privatekey:Ljava/security/PrivateKey;

    .line 458
    return-void
.end method

.method public PrivateKeyToBytes()[B
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->privatekey:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public PublicKeyFromBytes([B)V
    .locals 3
    .parameter "keydata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 445
    .local v1, pubKeySpec:Ljava/security/spec/X509EncodedKeySpec;
    iget-object v2, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->kpgen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 446
    .local v0, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    iput-object v2, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->publickey:Ljava/security/PublicKey;

    .line 447
    return-void
.end method

.method public PublicKeyToBytes()[B
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->publickey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormats()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 483
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->publickey:Ljava/security/PublicKey;

    invoke-interface {v2}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->privatekey:Ljava/security/PrivateKey;

    invoke-interface {v2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->privatekey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;->publickey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 491
    const-wide v0, 0x3ff199999999999aL

    return-wide v0
.end method
