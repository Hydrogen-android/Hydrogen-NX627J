.class public Landroid/renderscript/ProgramFragment$Builder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 54
    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 55
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramFragment;
    .locals 8

    .line 64
    iget-object v0, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 65
    iget v0, p0, Landroid/renderscript/ProgramFragment$Builder;->mInputCount:I

    iget v1, p0, Landroid/renderscript/ProgramFragment$Builder;->mOutputCount:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/ProgramFragment$Builder;->mConstantCount:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/ProgramFragment$Builder;->mTextureCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    .line 66
    .local v0, "tmp":[J
    iget v1, p0, Landroid/renderscript/ProgramFragment$Builder;->mTextureCount:I

    new-array v1, v1, [Ljava/lang/String;

    .line 67
    .local v1, "texNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 69
    .local v2, "idx":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "idx":I
    :goto_0
    iget v5, p0, Landroid/renderscript/ProgramFragment$Builder;->mInputCount:I

    if-ge v2, v5, :cond_0

    .line 70
    add-int/lit8 v5, v4, 0x1

    .local v5, "idx":I
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v6, v6

    aput-wide v6, v0, v4

    .line 71
    .end local v4    # "idx":I
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "idx":I
    iget-object v6, p0, Landroid/renderscript/ProgramFragment$Builder;->mInputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v2

    iget-object v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 69
    .end local v5    # "idx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "i":I
    :cond_0
    move v2, v3

    .restart local v2    # "i":I
    :goto_1
    iget v5, p0, Landroid/renderscript/ProgramFragment$Builder;->mOutputCount:I

    if-ge v2, v5, :cond_1

    .line 74
    add-int/lit8 v5, v4, 0x1

    .restart local v5    # "idx":I
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v6, v6

    aput-wide v6, v0, v4

    .line 75
    .end local v4    # "idx":I
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "idx":I
    iget-object v6, p0, Landroid/renderscript/ProgramFragment$Builder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v2

    iget-object v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 73
    .end local v5    # "idx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 77
    .end local v2    # "i":I
    :cond_1
    move v2, v3

    .restart local v2    # "i":I
    :goto_2
    iget v5, p0, Landroid/renderscript/ProgramFragment$Builder;->mConstantCount:I

    if-ge v2, v5, :cond_2

    .line 78
    add-int/lit8 v5, v4, 0x1

    .restart local v5    # "idx":I
    sget-object v6, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v6, v6

    aput-wide v6, v0, v4

    .line 79
    .end local v4    # "idx":I
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "idx":I
    iget-object v6, p0, Landroid/renderscript/ProgramFragment$Builder;->mConstants:[Landroid/renderscript/Type;

    aget-object v6, v6, v2

    iget-object v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 77
    .end local v5    # "idx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 81
    .end local v2    # "i":I
    :cond_2
    nop

    .local v3, "i":I
    :goto_3
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget v3, p0, Landroid/renderscript/ProgramFragment$Builder;->mTextureCount:I

    if-ge v2, v3, :cond_3

    .line 82
    add-int/lit8 v3, v4, 0x1

    .local v3, "idx":I
    sget-object v5, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v5, v5, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v4

    .line 83
    .end local v4    # "idx":I
    add-int/lit8 v4, v3, 0x1

    .restart local v4    # "idx":I
    iget-object v5, p0, Landroid/renderscript/ProgramFragment$Builder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/renderscript/Program$TextureType;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v3

    .line 84
    .end local v3    # "idx":I
    iget-object v3, p0, Landroid/renderscript/ProgramFragment$Builder;->mTextureNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    .line 81
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_3

    .line 87
    .end local v3    # "i":I
    :cond_3
    iget-object v2, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/ProgramFragment$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Landroid/renderscript/RenderScript;->nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide v2

    .line 88
    .local v2, "id":J
    new-instance v5, Landroid/renderscript/ProgramFragment;

    iget-object v6, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v5, v2, v3, v6}, Landroid/renderscript/ProgramFragment;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 89
    .local v5, "pf":Landroid/renderscript/ProgramFragment;
    invoke-virtual {p0, v5}, Landroid/renderscript/ProgramFragment$Builder;->initProgram(Landroid/renderscript/Program;)V

    .line 90
    return-object v5
.end method
