.class public abstract Landroid/service/dreams/DreamManagerInternal;
.super Ljava/lang/Object;
.source "DreamManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract advanceRemoveView()V
.end method

.method public abstract isDreaming()Z
.end method

.method public abstract notifyScreenStateChangeForAOD(II)V
.end method

.method public abstract startDream(Z)V
.end method

.method public abstract stopDream(Z)V
.end method
