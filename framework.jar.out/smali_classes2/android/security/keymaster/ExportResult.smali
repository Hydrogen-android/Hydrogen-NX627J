.class public Landroid/security/keymaster/ExportResult;
.super Ljava/lang/Object;
.source "ExportResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/ExportResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final exportData:[B

.field public final resultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Landroid/security/keymaster/ExportResult$1;

    invoke-direct {v0}, Landroid/security/keymaster/ExportResult$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/ExportResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keymaster/ExportResult;->resultCode:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keymaster/ExportResult;->exportData:[B

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 53
    iget v0, p0, Landroid/security/keymaster/ExportResult;->resultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Landroid/security/keymaster/ExportResult;->exportData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 55
    return-void
.end method
