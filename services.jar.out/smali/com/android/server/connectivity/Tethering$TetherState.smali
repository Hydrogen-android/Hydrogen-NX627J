.class Lcom/android/server/connectivity/Tethering$TetherState;
.super Ljava/lang/Object;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TetherState"
.end annotation


# instance fields
.field public lastError:I

.field public lastState:I

.field public final stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 1
    .param p1, "sm"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 178
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    .line 180
    return-void
.end method


# virtual methods
.method public isCurrentlyServing()Z
    .locals 1

    .line 183
    iget v0, p0, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    packed-switch v0, :pswitch_data_0

    .line 188
    const/4 v0, 0x0

    return v0

    .line 186
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
