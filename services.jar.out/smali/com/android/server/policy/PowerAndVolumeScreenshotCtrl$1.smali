.class Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;
.super Ljava/lang/Object;
.source "PowerAndVolumeScreenshotCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    .line 86
    iput-object p1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 89
    const-string/jumbo v0, "supersnapshot"

    const-string/jumbo v1, "long press timeout: POWER + VOLDOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$002(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;Z)Z

    .line 91
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-static {v0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$100(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)V

    .line 92
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-static {v0}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$300(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    invoke-static {v1}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$200(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    iget-object v0, p0, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl$1;->this$0:Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;->access$402(Lcom/android/server/policy/PowerAndVolumeScreenshotCtrl;Z)Z

    .line 94
    return-void
.end method
