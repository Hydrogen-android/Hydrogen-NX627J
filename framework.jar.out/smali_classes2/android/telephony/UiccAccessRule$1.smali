.class Landroid/telephony/UiccAccessRule$1;
.super Ljava/lang/Object;
.source "UiccAccessRule.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/UiccAccessRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/UiccAccessRule;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/UiccAccessRule;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 53
    new-instance v0, Landroid/telephony/UiccAccessRule;

    invoke-direct {v0, p1}, Landroid/telephony/UiccAccessRule;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Landroid/telephony/UiccAccessRule$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/UiccAccessRule;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/UiccAccessRule;
    .locals 1
    .param p1, "size"    # I

    .line 58
    new-array v0, p1, [Landroid/telephony/UiccAccessRule;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Landroid/telephony/UiccAccessRule$1;->newArray(I)[Landroid/telephony/UiccAccessRule;

    move-result-object p1

    return-object p1
.end method
