.class public Lcn/nubia/server/policy/edge/effects/animation/opengl/BgShaderProgram;
.super Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;
.source "BgShaderProgram.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "program"    # I

    .line 8
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/opengl/ShaderProgram;-><init>(I)V

    .line 9
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/BgShaderProgram;->mId:I

    const-string/jumbo v1, "uBgDim"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/opengl/BgShaderProgram;->mBgDimHandle:I

    .line 10
    return-void
.end method
