.class final Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOnState;
.super Lcom/android/internal/util/State;
.source "ColorfulLightStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenOnState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;


# direct methods
.method private constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOnState;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;
    .param p2, "x1"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$1;

    .line 255
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOnState;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 258
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ColorfulLight] ScreenOnState: msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLightLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-static {}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->access$400()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v2, 0x69

    if-eq v0, v2, :cond_0

    .line 270
    const/4 v0, 0x0

    return v0

    .line 266
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOnState;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-static {v0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->access$1600(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Landroid/os/Message;)V

    .line 267
    return v1

    .line 262
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOnState;->this$0:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->access$1500(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;)V

    .line 263
    return v1
.end method
