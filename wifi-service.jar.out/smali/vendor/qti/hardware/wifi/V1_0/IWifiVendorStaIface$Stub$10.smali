.class Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$10;
.super Ljava/lang/Object;
.source "IWifiVendorStaIface.java"

# interfaces
.implements Landroid/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;

    .line 1480
    iput-object p1, p0, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$10;->this$0:Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub;

    iput-object p2, p0, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$10;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/V1_0/WifiStatus;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;",
            ">;)V"
        }
    .end annotation

    .line 1483
    .local p2, "fates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;>;"
    iget-object v0, p0, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$10;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1484
    iget-object v0, p0, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$10;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1485
    iget-object v0, p0, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$10;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-static {v0, p2}, Landroid/hardware/wifi/V1_0/WifiDebugRxPacketFateReport;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1486
    iget-object v0, p0, Lvendor/qti/hardware/wifi/V1_0/IWifiVendorStaIface$Stub$10;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 1487
    return-void
.end method
