.class Landroid/view/ViewDebug$5;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$exception:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1694
    iput-object p1, p0, Landroid/view/ViewDebug$5;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Landroid/view/ViewDebug$5;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Landroid/view/ViewDebug$5;->val$view:Landroid/view/View;

    iput-object p4, p0, Landroid/view/ViewDebug$5;->val$args:[Ljava/lang/Object;

    iput-object p5, p0, Landroid/view/ViewDebug$5;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p6, p0, Landroid/view/ViewDebug$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1698
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewDebug$5;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Landroid/view/ViewDebug$5;->val$method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/view/ViewDebug$5;->val$view:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewDebug$5;->val$args:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1701
    :catch_0
    move-exception v0

    .line 1702
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/view/ViewDebug$5;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1699
    :catch_1
    move-exception v0

    .line 1700
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    iget-object v1, p0, Landroid/view/ViewDebug$5;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1703
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    nop

    .line 1705
    :goto_1
    iget-object v0, p0, Landroid/view/ViewDebug$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1706
    return-void
.end method
