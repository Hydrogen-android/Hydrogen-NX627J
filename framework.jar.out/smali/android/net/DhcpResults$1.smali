.class Landroid/net/DhcpResults$1;
.super Ljava/lang/Object;
.source "DhcpResults.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/DhcpResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpResults;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 117
    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0}, Landroid/net/DhcpResults;-><init>()V

    .line 118
    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    invoke-static {v0, p1}, Landroid/net/DhcpResults;->access$000(Landroid/net/DhcpResults;Landroid/os/Parcel;)V

    .line 119
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Landroid/net/DhcpResults$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpResults;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/DhcpResults;
    .locals 1
    .param p1, "size"    # I

    .line 123
    new-array v0, p1, [Landroid/net/DhcpResults;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Landroid/net/DhcpResults$1;->newArray(I)[Landroid/net/DhcpResults;

    move-result-object p1

    return-object p1
.end method
