.class public final Landroid/media/MediaCodec$CryptoInfo$Pattern;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec$CryptoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pattern"
.end annotation


# instance fields
.field private mEncryptBlocks:I

.field private mSkipBlocks:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "blocksToEncrypt"    # I
    .param p2, "blocksToSkip"    # I

    .line 2485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2486
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 2487
    return-void
.end method


# virtual methods
.method public getEncryptBlocks()I
    .locals 1

    .line 2509
    iget v0, p0, Landroid/media/MediaCodec$CryptoInfo$Pattern;->mEncryptBlocks:I

    return v0
.end method

.method public getSkipBlocks()I
    .locals 1

    .line 2502
    iget v0, p0, Landroid/media/MediaCodec$CryptoInfo$Pattern;->mSkipBlocks:I

    return v0
.end method

.method public set(II)V
    .locals 0
    .param p1, "blocksToEncrypt"    # I
    .param p2, "blocksToSkip"    # I

    .line 2494
    iput p1, p0, Landroid/media/MediaCodec$CryptoInfo$Pattern;->mEncryptBlocks:I

    .line 2495
    iput p2, p0, Landroid/media/MediaCodec$CryptoInfo$Pattern;->mSkipBlocks:I

    .line 2496
    return-void
.end method
