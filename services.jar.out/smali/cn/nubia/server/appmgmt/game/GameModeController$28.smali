.class Lcn/nubia/server/appmgmt/game/GameModeController$28;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;->showTouchGameKeyMapOptionNX629V1s(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 1824
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$28;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iput-object p2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$28;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1827
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$28;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$28;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$5000(Lcn/nubia/server/appmgmt/game/GameModeController;Ljava/lang/String;)V

    .line 1828
    return-void
.end method
