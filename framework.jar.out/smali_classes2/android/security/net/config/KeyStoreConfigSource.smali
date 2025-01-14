.class Landroid/security/net/config/KeyStoreConfigSource;
.super Ljava/lang/Object;
.source "KeyStoreConfigSource.java"

# interfaces
.implements Landroid/security/net/config/ConfigSource;


# instance fields
.field private final mConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 4
    .param p1, "ks"    # Ljava/security/KeyStore;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;-><init>()V

    new-instance v1, Landroid/security/net/config/CertificatesEntryRef;

    new-instance v2, Landroid/security/net/config/KeyStoreCertificateSource;

    invoke-direct {v2, p1}, Landroid/security/net/config/KeyStoreCertificateSource;-><init>(Ljava/security/KeyStore;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;Z)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/security/net/config/KeyStoreConfigSource;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 37
    return-void
.end method


# virtual methods
.method public getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .locals 1

    .line 46
    iget-object v0, p0, Landroid/security/net/config/KeyStoreConfigSource;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v0
.end method

.method public getPerDomainConfigs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method
