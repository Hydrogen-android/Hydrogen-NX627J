.class Lcom/android/server/wm/WindowManagerService$13;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->resetRemoteCloseAni()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .line 7375
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$13;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 7378
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$13;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mRemoteCloseAni:Z

    .line 7379
    return-void
.end method
