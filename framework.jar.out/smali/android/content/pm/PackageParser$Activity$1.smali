.class Landroid/content/pm/PackageParser$Activity$1;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/PackageParser$Activity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageParser$Activity;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 7646
    new-instance v0, Landroid/content/pm/PackageParser$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/os/Parcel;Landroid/content/pm/PackageParser$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 7644
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Activity$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageParser$Activity;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/content/pm/PackageParser$Activity;
    .locals 1
    .param p1, "size"    # I

    .line 7650
    new-array v0, p1, [Landroid/content/pm/PackageParser$Activity;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 7644
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Activity$1;->newArray(I)[Landroid/content/pm/PackageParser$Activity;

    move-result-object p1

    return-object p1
.end method
