.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$-rUlE92hVFfa3_rbq614fss7Bp8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$-rUlE92hVFfa3_rbq614fss7Bp8;->f$0:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AppWindowContainerController$-rUlE92hVFfa3_rbq614fss7Bp8;->f$0:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-static {v0}, Lcom/android/server/wm/AppWindowContainerController;->lambda$removeStartingWindow$3(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V

    return-void
.end method
