.class Lcom/android/internal/view/RotationPolicy$RotationPolicyListener$1;
.super Landroid/database/ContentObserver;
.source "RotationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method constructor <init>(Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 208
    iput-object p1, p0, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener$1;->this$0:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 211
    iget-object v0, p0, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener$1;->this$0:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-virtual {v0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->onChange()V

    .line 212
    return-void
.end method
