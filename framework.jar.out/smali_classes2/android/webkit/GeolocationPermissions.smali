.class public Landroid/webkit/GeolocationPermissions;
.super Ljava/lang/Object;
.source "GeolocationPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/GeolocationPermissions$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/webkit/GeolocationPermissions;
    .locals 1

    .line 72
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getGeolocationPermissions()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allow(Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .line 124
    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .line 115
    return-void
.end method

.method public clearAll()V
    .locals 0

    .line 131
    return-void
.end method

.method public getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public getOrigins(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 91
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/util/Set<Ljava/lang/String;>;>;"
    return-void
.end method
