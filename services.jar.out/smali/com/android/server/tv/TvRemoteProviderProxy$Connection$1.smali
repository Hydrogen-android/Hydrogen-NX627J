.class Lcom/android/server/tv/TvRemoteProviderProxy$Connection$1;
.super Ljava/lang/Object;
.source "TvRemoteProviderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->register()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 286
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$1;->this$1:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$1;->this$1:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    iget-object v0, v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$1;->this$1:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    invoke-static {v0, v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$100(Lcom/android/server/tv/TvRemoteProviderProxy;Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    .line 290
    return-void
.end method
