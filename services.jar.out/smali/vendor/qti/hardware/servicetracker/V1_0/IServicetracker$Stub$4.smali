.class Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$4;
.super Ljava/lang/Object;
.source "IServicetracker.java"

# interfaces
.implements Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getClientConnectionsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;

    .line 879
    iput-object p1, p0, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$4;->this$0:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;

    iput-object p2, p0, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$4;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/servicetracker/V1_0/ClientConnection;",
            ">;)V"
        }
    .end annotation

    .line 882
    .local p2, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/servicetracker/V1_0/ClientConnection;>;"
    iget-object v0, p0, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$4;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 883
    iget-object v0, p0, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$4;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 884
    iget-object v0, p0, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$4;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-static {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ClientConnection;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 885
    iget-object v0, p0, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$4;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 886
    return-void
.end method
