.class public final Landroid/security/net/config/SystemCertificateSource;
.super Landroid/security/net/config/DirectoryCertificateSource;
.source "SystemCertificateSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/SystemCertificateSource$NoPreloadHolder;
    }
.end annotation


# instance fields
.field private final mUserRemovedCaDir:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 35
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANDROID_ROOT"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/etc/security/cacerts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/security/net/config/DirectoryCertificateSource;-><init>(Ljava/io/File;)V

    .line 36
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 37
    .local v0, "configDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "cacerts-removed"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/security/net/config/SystemCertificateSource;->mUserRemovedCaDir:Ljava/io/File;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/security/net/config/SystemCertificateSource$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/security/net/config/SystemCertificateSource$1;

    .line 27
    invoke-direct {p0}, Landroid/security/net/config/SystemCertificateSource;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/security/net/config/SystemCertificateSource;
    .locals 1

    .line 41
    invoke-static {}, Landroid/security/net/config/SystemCertificateSource$NoPreloadHolder;->access$100()Landroid/security/net/config/SystemCertificateSource;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCertificates()Ljava/util/Set;
    .locals 1

    .line 27
    invoke-super {p0}, Landroid/security/net/config/DirectoryCertificateSource;->getCertificates()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleTrustStorageUpdate()V
    .locals 0

    .line 27
    invoke-super {p0}, Landroid/security/net/config/DirectoryCertificateSource;->handleTrustStorageUpdate()V

    return-void
.end method

.method protected isCertMarkedAsRemoved(Ljava/lang/String;)Z
    .locals 2
    .param p1, "caFile"    # Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/security/net/config/SystemCertificateSource;->mUserRemovedCaDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
