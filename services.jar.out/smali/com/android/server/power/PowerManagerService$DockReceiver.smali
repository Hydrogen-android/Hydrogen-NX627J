.class final Lcom/android/server/power/PowerManagerService$DockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 4120
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .line 4120
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4123
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4124
    :try_start_0
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4126
    .local v1, "dockState":I
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 4127
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, v1}, Lcom/android/server/power/PowerManagerService;->access$2602(Lcom/android/server/power/PowerManagerService;I)I

    .line 4128
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v3, 0x400

    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$1376(Lcom/android/server/power/PowerManagerService;I)I

    .line 4129
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)V

    .line 4131
    .end local v1    # "dockState":I
    :cond_0
    monitor-exit v0

    .line 4132
    return-void

    .line 4131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
