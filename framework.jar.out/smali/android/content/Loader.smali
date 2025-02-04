.class public Landroid/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Loader$OnLoadCanceledListener;,
        Landroid/content/Loader$OnLoadCompleteListener;,
        Landroid/content/Loader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroid/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader$OnLoadCompleteListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader$OnLoadCanceledListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 62
    iput-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/Loader;->mReset:Z

    .line 64
    iput-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 65
    iput-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Loader;->mContext:Landroid/content/Context;

    .line 146
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 1

    .line 416
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 417
    invoke-virtual {p0}, Landroid/content/Loader;->onAbandon()V

    .line 418
    return-void
.end method

.method public cancelLoad()Z
    .locals 1

    .line 333
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-virtual {p0}, Landroid/content/Loader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method public commitContentChanged()V
    .locals 1

    .line 488
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 489
    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 528
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 529
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 530
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public deliverCancellation()V
    .locals 1

    .line 168
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    invoke-interface {v0, p0}, Landroid/content/Loader$OnLoadCanceledListener;->onLoadCanceled(Landroid/content/Loader;)V

    .line 171
    :cond_0
    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 156
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    invoke-interface {v0, p0, p1}, Landroid/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 159
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 553
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/Loader;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 554
    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 555
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    if-eqz v0, :cond_1

    .line 556
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 557
    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 558
    const-string v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 560
    :cond_1
    iget-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    if-eqz v0, :cond_3

    .line 561
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 562
    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 564
    :cond_3
    return-void
.end method

.method public forceLoad()V
    .locals 0

    .line 360
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-virtual {p0}, Landroid/content/Loader;->onForceLoad()V

    .line 361
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 177
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 184
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget v0, p0, Landroid/content/Loader;->mId:I

    return v0
.end method

.method public isAbandoned()Z
    .locals 1

    .line 266
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    return v0
.end method

.method public isReset()Z
    .locals 1

    .line 275
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 257
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    return v0
.end method

.method protected onAbandon()V
    .locals 0

    .line 430
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected onCancelLoad()Z
    .locals 1

    .line 348
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 1

    .line 513
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    goto :goto_0

    .line 519
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 521
    :goto_0
    return-void
.end method

.method protected onForceLoad()V
    .locals 0

    .line 368
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected onReset()V
    .locals 0

    .line 466
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .line 312
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 402
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method public registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 195
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p2, "listener":Landroid/content/Loader$OnLoadCompleteListener;, "Landroid/content/Loader$OnLoadCompleteListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-nez v0, :cond_0

    .line 198
    iput-object p2, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    .line 199
    iput p1, p0, Landroid/content/Loader;->mId:I

    .line 200
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 227
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "listener":Landroid/content/Loader$OnLoadCanceledListener;, "Landroid/content/Loader$OnLoadCanceledListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    if-nez v0, :cond_0

    .line 230
    iput-object p1, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    .line 231
    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 451
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-virtual {p0}, Landroid/content/Loader;->onReset()V

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 454
    iput-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 455
    iput-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 456
    iput-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 457
    return-void
.end method

.method public rollbackContentChanged()V
    .locals 1

    .line 499
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Landroid/content/Loader;->onContentChanged()V

    .line 502
    :cond_0
    return-void
.end method

.method public final startLoading()V
    .locals 1

    .line 300
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    .line 302
    iput-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 303
    invoke-virtual {p0}, Landroid/content/Loader;->onStartLoading()V

    .line 304
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 391
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 392
    invoke-virtual {p0}, Landroid/content/Loader;->onStopLoading()V

    .line 393
    return-void
.end method

.method public takeContentChanged()Z
    .locals 2

    .line 474
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 475
    .local v0, "res":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 476
    iget-boolean v1, p0, Landroid/content/Loader;->mProcessingChange:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 477
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 536
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 537
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 538
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    iget v1, p0, Landroid/content/Loader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 208
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "listener":Landroid/content/Loader$OnLoadCompleteListener;, "Landroid/content/Loader$OnLoadCompleteListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-ne v0, p1, :cond_0

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    .line 215
    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 242
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "listener":Landroid/content/Loader$OnLoadCanceledListener;, "Landroid/content/Loader$OnLoadCanceledListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    if-ne v0, p1, :cond_0

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    .line 249
    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
