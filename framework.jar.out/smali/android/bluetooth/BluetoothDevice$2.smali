.class Landroid/bluetooth/BluetoothDevice$2;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 952
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 950
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice$2;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p1, "size"    # I

    .line 956
    new-array v0, p1, [Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 950
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice$2;->newArray(I)[Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method
