.class public final Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;
.super Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrintServiceRecommendationsChangeListenerWrapper"
.end annotation


# instance fields
.field private final mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1393
    invoke-direct {p0}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;-><init>()V

    .line 1394
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 1395
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 1396
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1408
    iget-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1409
    return-void
.end method

.method public onRecommendationsChanged()V
    .locals 3

    .line 1400
    iget-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1401
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    .line 1402
    .local v1, "listener":Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1403
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/print/-$$Lambda$KZ41E_yXUNYMY9k_Xeus1UG_cS8;

    invoke-direct {v2, v1}, Landroid/print/-$$Lambda$KZ41E_yXUNYMY9k_Xeus1UG_cS8;-><init>(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1405
    :cond_0
    return-void
.end method
