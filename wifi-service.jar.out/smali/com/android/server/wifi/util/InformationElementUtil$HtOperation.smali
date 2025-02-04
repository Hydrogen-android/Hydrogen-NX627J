.class public Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtOperation"
.end annotation


# instance fields
.field public secondChannelOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 3
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .line 181
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    .line 185
    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element id is not HT_OPERATION, : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCenterFreq0(I)I
    .locals 4
    .param p1, "primaryFrequency"    # I

    .line 166
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 167
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 168
    add-int/lit8 v0, p1, 0xa

    return v0

    .line 169
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 170
    add-int/lit8 v0, p1, -0xa

    return v0

    .line 172
    :cond_1
    const-string v0, "HtOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error on secondChannelOffset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v1

    .line 176
    :cond_2
    return v1
.end method

.method public getChannelWidth()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
