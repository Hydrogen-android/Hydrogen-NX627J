.class Lcn/nubia/server/policy/edge/ActionStateMachine$4;
.super Ljava/lang/Object;
.source "ActionStateMachine.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/ActionStateMachine;->registerGestureEnableListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/ActionStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/ActionStateMachine;

    .line 135
    iput-object p1, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$4;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 138
    if-nez p1, :cond_0

    .line 139
    const-string v0, "ActionStateMachine"

    const-string v1, "edge gesture change to be disable"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcn/nubia/server/policy/edge/ActionStateMachine$4;->this$0:Lcn/nubia/server/policy/edge/ActionStateMachine;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/ActionStateMachine;->access$000(Lcn/nubia/server/policy/edge/ActionStateMachine;)V

    .line 142
    :cond_0
    return-void
.end method
