.class public Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$SecureRandomWrapper;
.super Ljava/lang/Object;
.source "CipherWrapper.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "SecureRandom"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/agraham/encryption/CipherWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureRandomWrapper"
.end annotation


# instance fields
.field srnd:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$SecureRandomWrapper;->srnd:Ljava/security/SecureRandom;

    .line 271
    return-void
.end method


# virtual methods
.method public GetRandomBytes([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 281
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$SecureRandomWrapper;->srnd:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 282
    return-void
.end method

.method public SetRandomSeed(J)V
    .locals 1
    .parameter "seed"

    .prologue
    .line 291
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$SecureRandomWrapper;->srnd:Ljava/security/SecureRandom;

    .line 292
    iget-object v0, p0, Lanywheresoftware/b4a/agraham/encryption/CipherWrapper$SecureRandomWrapper;->srnd:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, p2}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 293
    return-void
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 300
    const-wide v0, 0x3ff199999999999aL

    return-wide v0
.end method
