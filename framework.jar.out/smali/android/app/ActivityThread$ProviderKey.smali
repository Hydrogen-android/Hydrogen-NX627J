.class final Landroid/app/ActivityThread$ProviderKey;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderKey"
.end annotation


# instance fields
.field final authority:Ljava/lang/String;

.field final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    .line 368
    iput p2, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    .line 369
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 373
    instance-of v0, p1, Landroid/app/ActivityThread$ProviderKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 374
    move-object v0, p1

    check-cast v0, Landroid/app/ActivityThread$ProviderKey;

    .line 375
    .local v0, "other":Landroid/app/ActivityThread$ProviderKey;
    iget-object v2, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    iget v3, v0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 377
    .end local v0    # "other":Landroid/app/ActivityThread$ProviderKey;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 382
    iget-object v0, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    xor-int/2addr v0, v1

    return v0
.end method
