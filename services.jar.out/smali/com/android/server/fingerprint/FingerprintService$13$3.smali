.class Lcom/android/server/fingerprint/FingerprintService$13$3;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$13;->onAuthenticated(JIILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$13;

.field final synthetic val$deviceId:J

.field final synthetic val$fingerId:I

.field final synthetic val$groupId:I

.field final synthetic val$token:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$13;JIILjava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$13;

    .line 1348
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$13$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$13;

    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$13$3;->val$deviceId:J

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$13$3;->val$fingerId:I

    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$13$3;->val$groupId:I

    iput-object p6, p0, Lcom/android/server/fingerprint/FingerprintService$13$3;->val$token:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1351
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$13$3;->this$1:Lcom/android/server/fingerprint/FingerprintService$13;

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$13;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService$13$3;->val$deviceId:J

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$13$3;->val$fingerId:I

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService$13$3;->val$groupId:I

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$13$3;->val$token:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->handleAuthenticated(JIILjava/util/ArrayList;)V

    .line 1352
    return-void
.end method
