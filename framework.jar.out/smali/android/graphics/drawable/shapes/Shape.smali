.class public abstract Landroid/graphics/drawable/shapes/Shape;
.super Ljava/lang/Object;
.source "Shape.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 116
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/Shape;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    return-object v0
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public final getHeight()F
    .locals 1

    .line 49
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 0
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 112
    return-void
.end method

.method public final getWidth()F
    .locals 1

    .line 42
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method protected onResize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 102
    return-void
.end method

.method public final resize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 71
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 72
    const/4 p1, 0x0

    .line 74
    :cond_0
    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    .line 75
    const/4 p2, 0x0

    .line 77
    :cond_1
    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    iget v0, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_3

    .line 78
    :cond_2
    iput p1, p0, Landroid/graphics/drawable/shapes/Shape;->mWidth:F

    .line 79
    iput p2, p0, Landroid/graphics/drawable/shapes/Shape;->mHeight:F

    .line 80
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/shapes/Shape;->onResize(FF)V

    .line 82
    :cond_3
    return-void
.end method
