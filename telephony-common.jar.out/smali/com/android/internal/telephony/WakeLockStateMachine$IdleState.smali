.class Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WakeLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WakeLockStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/WakeLockStateMachine;

    .line 138
    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/WakeLockStateMachine;->sendMessageDelayed(IJ)V

    .line 142
    return-void
.end method

.method public exit()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$000(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v1, "acquired wakelock, leaving Idle state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 173
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$000(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$000(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v2, "mWakeLock is still held after release"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v2, "mWakeLock released"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    .line 170
    :goto_0
    return v1

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->handleSmsMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    iget-object v2, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-static {v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$100(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 158
    :cond_3
    return v1
.end method
