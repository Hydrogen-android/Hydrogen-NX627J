.class public Lcom/android/internal/widget/ViewClippingUtil;
.super Ljava/lang/Object;
.source "ViewClippingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;
    }
.end annotation


# static fields
.field private static final CLIP_CHILDREN_TAG:I = 0x10201ff

.field private static final CLIP_CLIPPING_SET:I = 0x10201fe

.field private static final CLIP_TO_PADDING:I = 0x1020201


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V
    .locals 7
    .param p0, "transformedView"    # Landroid/view/View;
    .param p1, "deactivated"    # Z
    .param p2, "clippingParameters"    # Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    .line 36
    if-nez p1, :cond_0

    invoke-interface {p2, p0}, Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;->isClippingEnablingAllowed(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 40
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 44
    .local v0, "parent":Landroid/view/ViewGroup;
    :goto_0
    if-nez p1, :cond_2

    invoke-interface {p2, p0}, Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;->isClippingEnablingAllowed(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    return-void

    .line 47
    :cond_2
    const v1, 0x10201fe

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 48
    .local v2, "clipSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    if-nez v2, :cond_3

    .line 49
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    .line 52
    :cond_3
    const v3, 0x10201ff

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 53
    .local v4, "clipChildren":Ljava/lang/Boolean;
    if-nez v4, :cond_4

    .line 54
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 55
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    .line 57
    :cond_4
    const v3, 0x1020201

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 58
    .local v5, "clipToPadding":Ljava/lang/Boolean;
    if-nez v5, :cond_5

    .line 59
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 60
    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    .line 62
    :cond_5
    if-nez p1, :cond_6

    .line 63
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 65
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 66
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 67
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    .line 68
    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;->onClippingStateChanged(Landroid/view/View;Z)V

    goto :goto_1

    .line 71
    :cond_6
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 72
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 74
    invoke-interface {p2, v0, v1}, Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;->onClippingStateChanged(Landroid/view/View;Z)V

    .line 76
    :cond_7
    :goto_1
    invoke-interface {p2, v0}, Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;->shouldFinish(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 77
    return-void

    .line 79
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 80
    .local v1, "viewParent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_9

    .line 81
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    .line 85
    .end local v1    # "viewParent":Landroid/view/ViewParent;
    .end local v2    # "clipSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    .end local v4    # "clipChildren":Ljava/lang/Boolean;
    .end local v5    # "clipToPadding":Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 83
    .restart local v1    # "viewParent":Landroid/view/ViewParent;
    .restart local v2    # "clipSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/View;>;"
    .restart local v4    # "clipChildren":Ljava/lang/Boolean;
    .restart local v5    # "clipToPadding":Ljava/lang/Boolean;
    :cond_9
    return-void
.end method
