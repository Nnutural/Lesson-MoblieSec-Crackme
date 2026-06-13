.class public Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;
.super Ljava/lang/Object;
.source "CipherWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$Author;
    value = "Andrew Graham"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Cipher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyGeneratorWrapper;,
        Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$KeyPairGeneratorWrapper;,
        Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$MacWrapper;,
        Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$MessageDigestWrapper;,
        Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$SecureRandomWrapper;,
        Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$SignaturerWrapper;
    }
.end annotation


# static fields
.field private static final version:D = 1.1


# instance fields
.field cipher:Ljavax/crypto/Cipher;

.field iv:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doFinal(I[BLjava/security/Key;Z)[B
    .locals 2
    .parameter "mode"
    .parameter "data"
    .parameter "key"
    .parameter "useIV"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    if-eqz p4, :cond_0

    .line 135
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 136
    .local v0, ips:Ljavax/crypto/spec/IvParameterSpec;
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 140
    .end local v0           #ips:Ljavax/crypto/spec/IvParameterSpec;
    :goto_0
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1

    .line 139
    :cond_0
    iget-object v1, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_0
.end method


# virtual methods
.method public Decrypt([BLjava/security/Key;Z)[B
    .locals 1
    .parameter "data"
    .parameter "key"
    .parameter "useIV"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;->doFinal(I[BLjava/security/Key;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public Encrypt([BLjava/security/Key;Z)[B
    .locals 1
    .parameter "data"
    .parameter "key"
    .parameter "useIV"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;->doFinal(I[BLjava/security/Key;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public GetAlgorithms(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "servicename"

    .prologue
    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/security/Security;->getAlgorithms(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 172
    .local v1, algos:[Ljava/lang/Object;
    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v5, :cond_0

    .line 177
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 178
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 172
    .restart local p0
    :cond_0
    aget-object v2, v1, v6

    .line 174
    .local v2, o:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 175
    .local v4, svc:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public GetServices()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 187
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    .line 189
    .local v3, providers:[Ljava/security/Provider;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v3

    if-lt v1, v7, :cond_0

    .line 199
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 200
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 191
    .restart local p0
    :cond_0
    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v6

    .line 192
    .local v6, svcs:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/Provider$Service;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 194
    .local v2, o:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Ljava/security/Provider$Service;

    move-object v5, v0

    .line 195
    .local v5, svc:Ljava/security/Provider$Service;
    invoke-virtual {v5}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 196
    invoke-virtual {v5}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public Initialize(Ljava/lang/String;)V
    .locals 1
    .parameter "transformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;->cipher:Ljavax/crypto/Cipher;

    .line 128
    return-void
.end method

.method public LIBRARY_DOC()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public getInitialisationVector()[B
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;->iv:[B

    return-object v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 208
    const-wide v0, 0x3ff199999999999aL

    return-wide v0
.end method

.method public setInitialisationVector([B)V
    .locals 0
    .parameter "iv"

    .prologue
    .line 220
    iput-object p1, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;->iv:[B

    .line 221
    return-void
.end method
