.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->onAdvertisingParametersUpdated(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

.field final synthetic val$advertiserId:I

.field final synthetic val$status:I

.field final synthetic val$txPower:I


# direct methods
.method constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;III)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 605
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;->val$advertiserId:I

    iput p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;->val$txPower:I

    iput p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 608
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v0, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$400(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;->val$advertiserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSet;

    .line 609
    .local v0, "advertisingSet":Landroid/bluetooth/le/AdvertisingSet;
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;->val$txPower:I

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;->val$status:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingParametersUpdated(Landroid/bluetooth/le/AdvertisingSet;II)V

    .line 610
    return-void
.end method
