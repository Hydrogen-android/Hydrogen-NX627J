.class Landroid/net/metrics/ApfProgramEvent$1;
.super Ljava/lang/Object;
.source "ApfProgramEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/ApfProgramEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/metrics/ApfProgramEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/ApfProgramEvent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    new-instance v0, Landroid/net/metrics/ApfProgramEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/metrics/ApfProgramEvent;-><init>(Landroid/os/Parcel;Landroid/net/metrics/ApfProgramEvent$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Landroid/net/metrics/ApfProgramEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/ApfProgramEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/metrics/ApfProgramEvent;
    .locals 1
    .param p1, "size"    # I

    .line 98
    new-array v0, p1, [Landroid/net/metrics/ApfProgramEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Landroid/net/metrics/ApfProgramEvent$1;->newArray(I)[Landroid/net/metrics/ApfProgramEvent;

    move-result-object p1

    return-object p1
.end method
