.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;
.super Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationDrawableTransition"
.end annotation


# instance fields
.field private final mAnim:Landroid/animation/ObjectAnimator;

.field private final mHasReversibleFlag:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .locals 8
    .param p1, "ad"    # Landroid/graphics/drawable/AnimationDrawable;
    .param p2, "reversed"    # Z
    .param p3, "hasReversibleFlag"    # Z

    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable$1;)V

    .line 275
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 276
    .local v0, "frameCount":I
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 277
    .local v2, "fromFrame":I
    :goto_0
    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v0, -0x1

    .line 278
    .local v3, "toFrame":I
    :goto_1
    new-instance v4, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;

    invoke-direct {v4, p1, p2}, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    .line 279
    .local v4, "interp":Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;
    const-string v5, "currentIndex"

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v2, v6, v1

    const/4 v1, 0x1

    aput v3, v6, v1

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 280
    .local v5, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 281
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedStateListDrawable$FrameInterpolator;->getTotalDuration()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 282
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 283
    iput-boolean p3, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mHasReversibleFlag:Z

    .line 284
    iput-object v5, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    .line 285
    return-void
.end method


# virtual methods
.method public canReverse()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mHasReversibleFlag:Z

    return v0
.end method

.method public reverse()V
    .locals 1

    .line 299
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 300
    return-void
.end method

.method public start()V
    .locals 1

    .line 294
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 295
    return-void
.end method

.method public stop()V
    .locals 1

    .line 304
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimationDrawableTransition;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 305
    return-void
.end method
