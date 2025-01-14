.class Landroid/animation/FloatKeyframeSet;
.super Landroid/animation/KeyframeSet;
.source "FloatKeyframeSet.java"

# interfaces
.implements Landroid/animation/Keyframes$FloatKeyframes;


# direct methods
.method public varargs constructor <init>([Landroid/animation/Keyframe$FloatKeyframe;)V
    .locals 0
    .param p1, "keyframes"    # [Landroid/animation/Keyframe$FloatKeyframe;

    .line 35
    invoke-direct {p0, p1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    .line 36
    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/FloatKeyframeSet;
    .locals 5

    .line 45
    iget-object v0, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    .line 46
    .local v0, "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    iget-object v1, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 47
    .local v1, "numKeyframes":I
    new-array v2, v1, [Landroid/animation/Keyframe$FloatKeyframe;

    .line 48
    .local v2, "newKeyframes":[Landroid/animation/Keyframe$FloatKeyframe;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 49
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe;

    invoke-virtual {v4}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v4, v2, v3

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Landroid/animation/FloatKeyframeSet;

    invoke-direct {v3, v2}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    .line 52
    .local v3, "newSet":Landroid/animation/FloatKeyframeSet;
    return-object v3
.end method

.method public bridge synthetic clone()Landroid/animation/KeyframeSet;
    .locals 1

    .line 33
    invoke-virtual {p0}, Landroid/animation/FloatKeyframeSet;->clone()Landroid/animation/FloatKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframes;
    .locals 1

    .line 33
    invoke-virtual {p0}, Landroid/animation/FloatKeyframeSet;->clone()Landroid/animation/FloatKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroid/animation/FloatKeyframeSet;->clone()Landroid/animation/FloatKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue(F)F
    .locals 11
    .param p1, "fraction"    # F

    .line 57
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_2

    .line 58
    iget-object v0, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$FloatKeyframe;

    .line 59
    .local v0, "prevKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    iget-object v1, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframe$FloatKeyframe;

    .line 60
    .local v1, "nextKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    invoke-virtual {v0}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v2

    .line 61
    .local v2, "prevValue":F
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v3

    .line 62
    .local v3, "nextValue":F
    invoke-virtual {v0}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v4

    .line 63
    .local v4, "prevFraction":F
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v5

    .line 64
    .local v5, "nextFraction":F
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v6

    .line 65
    .local v6, "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v6, :cond_0

    .line 66
    invoke-interface {v6, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 68
    :cond_0
    sub-float v7, p1, v4

    sub-float v8, v5, v4

    div-float/2addr v7, v8

    .line 69
    .local v7, "intervalFraction":F
    iget-object v8, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v8, :cond_1

    .line 70
    sub-float v8, v3, v2

    mul-float/2addr v8, v7

    add-float/2addr v8, v2

    goto :goto_0

    .line 72
    :cond_1
    iget-object v8, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 71
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v8, v7, v9, v10}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    .line 72
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 69
    :goto_0
    return v8

    .line 73
    .end local v0    # "prevKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    .end local v1    # "nextKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    .end local v2    # "prevValue":F
    .end local v3    # "nextValue":F
    .end local v4    # "prevFraction":F
    .end local v5    # "nextFraction":F
    .end local v6    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v7    # "intervalFraction":F
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_5

    .line 74
    iget-object v0, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v1, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$FloatKeyframe;

    .line 75
    .restart local v0    # "prevKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    iget-object v1, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v3, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframe$FloatKeyframe;

    .line 76
    .restart local v1    # "nextKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    invoke-virtual {v0}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v2

    .line 77
    .restart local v2    # "prevValue":F
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v3

    .line 78
    .restart local v3    # "nextValue":F
    invoke-virtual {v0}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v4

    .line 79
    .restart local v4    # "prevFraction":F
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v5

    .line 80
    .restart local v5    # "nextFraction":F
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v6

    .line 81
    .restart local v6    # "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v6, :cond_3

    .line 82
    invoke-interface {v6, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 84
    :cond_3
    sub-float v7, p1, v4

    sub-float v8, v5, v4

    div-float/2addr v7, v8

    .line 85
    .restart local v7    # "intervalFraction":F
    iget-object v8, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v8, :cond_4

    .line 86
    sub-float v8, v3, v2

    mul-float/2addr v8, v7

    add-float/2addr v8, v2

    goto :goto_1

    .line 88
    :cond_4
    iget-object v8, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 87
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v8, v7, v9, v10}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    .line 88
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 85
    :goto_1
    return v8

    .line 90
    .end local v0    # "prevKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    .end local v1    # "nextKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    .end local v2    # "prevValue":F
    .end local v3    # "nextValue":F
    .end local v4    # "prevFraction":F
    .end local v5    # "nextFraction":F
    .end local v6    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v7    # "intervalFraction":F
    :cond_5
    iget-object v0, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe$FloatKeyframe;

    .line 91
    .restart local v0    # "prevKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    move-object v1, v0

    move v0, v2

    .local v0, "i":I
    .local v1, "prevKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    :goto_2
    iget v3, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    if-ge v0, v3, :cond_9

    .line 92
    iget-object v3, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$FloatKeyframe;

    .line 93
    .local v3, "nextKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    invoke-virtual {v3}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_8

    .line 94
    invoke-virtual {v3}, Landroid/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    .line 95
    .local v2, "interpolator":Landroid/animation/TimeInterpolator;
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v4

    sub-float v4, p1, v4

    .line 96
    invoke-virtual {v3}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v5

    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    .line 97
    .local v4, "intervalFraction":F
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v5

    .line 98
    .local v5, "prevValue":F
    invoke-virtual {v3}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v6

    .line 100
    .local v6, "nextValue":F
    if-eqz v2, :cond_6

    .line 101
    invoke-interface {v2, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    .line 103
    :cond_6
    iget-object v7, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v7, :cond_7

    .line 104
    sub-float v7, v6, v5

    mul-float/2addr v7, v4

    add-float/2addr v7, v5

    goto :goto_3

    .line 106
    :cond_7
    iget-object v7, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 105
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v7, v4, v8, v9}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    .line 106
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 103
    :goto_3
    return v7

    .line 108
    .end local v2    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v4    # "intervalFraction":F
    .end local v5    # "prevValue":F
    .end local v6    # "nextValue":F
    :cond_8
    move-object v1, v3

    .line 91
    .end local v3    # "nextKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 111
    .end local v0    # "i":I
    :cond_9
    iget-object v0, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v3, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .line 116
    const-class v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F

    .line 40
    invoke-virtual {p0, p1}, Landroid/animation/FloatKeyframeSet;->getFloatValue(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
