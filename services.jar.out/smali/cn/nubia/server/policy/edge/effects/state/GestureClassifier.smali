.class public Lcn/nubia/server/policy/edge/effects/state/GestureClassifier;
.super Ljava/lang/Object;
.source "GestureClassifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPreSingleLoop(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 2
    .param p0, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "isPreSingleLoop":Z
    iget v1, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 170
    :sswitch_0
    const/4 v0, 0x1

    .line 171
    nop

    .line 175
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x3005 -> :sswitch_0
        0x3006 -> :sswitch_0
        0x4006 -> :sswitch_0
        0x4007 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isPreSingleSlide(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 2
    .param p0, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, "isPreSingleSide":Z
    iget v1, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 136
    :sswitch_0
    const/4 v0, 0x1

    .line 137
    nop

    .line 141
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1005 -> :sswitch_0
        0x1006 -> :sswitch_0
        0x4004 -> :sswitch_0
        0x4005 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isPressDownState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 2
    .param p0, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 231
    iget v0, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x4002

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSingleFailState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 2
    .param p0, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 220
    iget v0, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x1003

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x3003

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v1, 0x4003

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const v1, 0x10001

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const v1, 0x10002

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const v1, 0x40001

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const v1, 0x40002

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isStartDoubleSlide(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 2
    .param p0, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, "isStartDoubleSlide":Z
    iget v1, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    const/4 v0, 0x1

    .line 202
    nop

    .line 206
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x2001
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isStartSingleLoop(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 3
    .param p0, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "isStartSingleLoop":Z
    iget v1, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    const/16 v2, 0x3001

    if-eq v1, v2, :cond_0

    const/16 v2, 0x400a

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    const/4 v0, 0x1

    .line 186
    nop

    .line 190
    :goto_0
    return v0
.end method

.method public static isStartSingleSlide(I)Z
    .locals 1
    .param p0, "status"    # I

    .line 116
    sparse-switch p0, :sswitch_data_0

    .line 123
    const/4 v0, 0x0

    return v0

    .line 121
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_0
        0x4008 -> :sswitch_0
        0x4009 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isStartSingleSlide(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 2
    .param p0, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "isStartSingleSide":Z
    iget v1, p0, Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;->mAction:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 153
    :sswitch_0
    const/4 v0, 0x1

    .line 154
    nop

    .line 158
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_0
        0x4008 -> :sswitch_0
        0x4009 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isStartState(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z
    .locals 1
    .param p0, "gesture"    # Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;

    .line 214
    invoke-static {p0}, Lcn/nubia/server/policy/edge/effects/state/GestureClassifier;->isStartSingleSlide(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    invoke-static {p0}, Lcn/nubia/server/policy/edge/effects/state/GestureClassifier;->isStartSingleLoop(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    invoke-static {p0}, Lcn/nubia/server/policy/edge/effects/state/GestureClassifier;->isStartDoubleSlide(Lcn/nubia/server/policy/edge/effectsutil/EffectsEdgeGesture;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 214
    :goto_1
    return v0
.end method
