.class Lcn/nubia/server/appmgmt/EyeProtectionController$4;
.super Landroid/content/BroadcastReceiver;
.source "EyeProtectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/EyeProtectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/EyeProtectionController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 229
    iput-object p1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$4;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 232
    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$4;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$300(Lcn/nubia/server/appmgmt/EyeProtectionController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 234
    :cond_0
    const-string v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$4;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$300(Lcn/nubia/server/appmgmt/EyeProtectionController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 237
    :cond_1
    :goto_0
    return-void
.end method
