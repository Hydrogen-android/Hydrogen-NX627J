.class Landroid/view/ThreadedRenderer$ProcessInitializer$1;
.super Landroid/view/IGraphicsStatsCallback$Stub;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer$ProcessInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ThreadedRenderer$ProcessInitializer;


# direct methods
.method constructor <init>(Landroid/view/ThreadedRenderer$ProcessInitializer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ThreadedRenderer$ProcessInitializer;

    .line 1119
    iput-object p1, p0, Landroid/view/ThreadedRenderer$ProcessInitializer$1;->this$0:Landroid/view/ThreadedRenderer$ProcessInitializer;

    invoke-direct {p0}, Landroid/view/IGraphicsStatsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotateGraphicsStatsBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1122
    iget-object v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer$1;->this$0:Landroid/view/ThreadedRenderer$ProcessInitializer;

    invoke-static {v0}, Landroid/view/ThreadedRenderer$ProcessInitializer;->access$1100(Landroid/view/ThreadedRenderer$ProcessInitializer;)V

    .line 1123
    return-void
.end method
