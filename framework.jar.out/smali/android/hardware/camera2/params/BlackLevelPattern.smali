.class public final Landroid/hardware/camera2/params/BlackLevelPattern;
.super Ljava/lang/Object;
.source "BlackLevelPattern.java"


# static fields
.field public static final COUNT:I = 0x4


# instance fields
.field private final mCfaOffsets:[I


# direct methods
.method public constructor <init>([I)V
    .locals 2
    .param p1, "offsets"    # [I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p1, :cond_1

    .line 51
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 54
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    .line 55
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid offsets array length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null offsets array passed to constructor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public copyTo([II)V
    .locals 4
    .param p1, "destination"    # [I
    .param p2, "offset"    # I

    .line 87
    const-string v0, "destination must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    if-ltz p2, :cond_2

    .line 91
    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 95
    add-int v2, p2, v0

    iget-object v3, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    aget v3, v3, v0

    aput v3, p1, v2

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "destination too small to fit elements"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null offset passed to copyTo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 108
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 109
    return v0

    .line 110
    :cond_0
    if-ne p0, p1, :cond_1

    .line 111
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_1
    instance-of v1, p1, Landroid/hardware/camera2/params/BlackLevelPattern;

    if-eqz v1, :cond_2

    .line 113
    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/BlackLevelPattern;

    .line 114
    .local v0, "other":Landroid/hardware/camera2/params/BlackLevelPattern;
    iget-object v1, v0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    iget-object v2, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    return v1

    .line 116
    .end local v0    # "other":Landroid/hardware/camera2/params/BlackLevelPattern;
    :cond_2
    return v0
.end method

.method public getOffsetForIndex(II)I
    .locals 3
    .param p1, "column"    # I
    .param p2, "row"    # I

    .line 67
    if-ltz p2, :cond_0

    if-ltz p1, :cond_0

    .line 70
    iget-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    and-int/lit8 v1, p2, 0x1

    shl-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, p1, 0x1

    or-int/2addr v1, v2

    aget v0, v0, v1

    return v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column, row arguments must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 124
    iget-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 142
    const-string v0, "BlackLevelPattern([%d, %d], [%d, %d])"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 142
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method