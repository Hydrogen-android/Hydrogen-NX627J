.class Landroid/app/SystemServiceRegistry$70;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/media/tv/TvInputManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 789
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/media/tv/TvInputManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 792
    const-string/jumbo v0, "tv_input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 793
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/tv/ITvInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManager;

    move-result-object v1

    .line 794
    .local v1, "service":Landroid/media/tv/ITvInputManager;
    new-instance v2, Landroid/media/tv/TvInputManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/media/tv/TvInputManager;-><init>(Landroid/media/tv/ITvInputManager;I)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 789
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$70;->createService(Landroid/app/ContextImpl;)Landroid/media/tv/TvInputManager;

    move-result-object p1

    return-object p1
.end method
