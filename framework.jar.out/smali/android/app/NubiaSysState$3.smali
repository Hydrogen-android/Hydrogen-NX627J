.class Landroid/app/NubiaSysState$3;
.super Lnubia/os/ITaskCallback$Stub;
.source "NubiaSysState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NubiaSysState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/NubiaSysState;


# direct methods
.method constructor <init>(Landroid/app/NubiaSysState;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/NubiaSysState;

    .line 87
    iput-object p1, p0, Landroid/app/NubiaSysState$3;->this$0:Landroid/app/NubiaSysState;

    invoke-direct {p0}, Lnubia/os/ITaskCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 89
    iget-object v0, p0, Landroid/app/NubiaSysState$3;->this$0:Landroid/app/NubiaSysState;

    invoke-static {v0}, Landroid/app/NubiaSysState;->access$100(Landroid/app/NubiaSysState;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/app/NubiaSysState$3;->this$0:Landroid/app/NubiaSysState;

    invoke-static {v0}, Landroid/app/NubiaSysState;->access$100(Landroid/app/NubiaSysState;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    :cond_0
    return-void
.end method
