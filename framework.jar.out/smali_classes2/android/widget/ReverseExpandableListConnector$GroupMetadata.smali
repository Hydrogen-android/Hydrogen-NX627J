.class Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
.super Ljava/lang/Object;
.source "ReverseExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ReverseExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/widget/ReverseExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/ReverseExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field static final REFRESH:I = -0x1


# instance fields
.field flPos:I

.field gId:J

.field gPos:I

.field lastChildFlPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 931
    new-instance v0, Landroid/widget/ReverseExpandableListConnector$GroupMetadata$1;

    invoke-direct {v0}, Landroid/widget/ReverseExpandableListConnector$GroupMetadata$1;-><init>()V

    sput-object v0, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    return-void
.end method

.method static obtain(IIIJ)Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    .locals 1
    .param p0, "flPos"    # I
    .param p1, "lastChildFlPos"    # I
    .param p2, "gPos"    # I
    .param p3, "gId"    # J

    .line 904
    new-instance v0, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    invoke-direct {v0}, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;-><init>()V

    .line 905
    .local v0, "gm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    iput p0, v0, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->flPos:I

    .line 906
    iput p1, v0, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 907
    iput p2, v0, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    .line 908
    iput-wide p3, v0, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gId:J

    .line 909
    return-object v0
.end method


# virtual methods
.method public compareTo(Landroid/widget/ReverseExpandableListConnector$GroupMetadata;)I
    .locals 2
    .param p1, "another"    # Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    .line 913
    if-eqz p1, :cond_0

    .line 917
    iget v0, p0, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    iget v1, p1, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v0, v1

    return v0

    .line 914
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 876
    check-cast p1, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    invoke-virtual {p0, p1}, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->compareTo(Landroid/widget/ReverseExpandableListConnector$GroupMetadata;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    .line 921
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 925
    iget v0, p0, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->flPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    iget v0, p0, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    iget v0, p0, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    iget-wide v0, p0, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->gId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 929
    return-void
.end method
