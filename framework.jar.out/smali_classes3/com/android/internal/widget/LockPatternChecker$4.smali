.class Lcom/android/internal/widget/LockPatternChecker$4;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private mThrottleTimeout:I

.field final synthetic val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

.field final synthetic val$challenge:J

.field final synthetic val$isPattern:Z

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$password:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$isPattern:Z

    iput-wide p4, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$challenge:J

    iput p6, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$userId:I

    iput-object p7, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 203
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$4;->doInBackground([Ljava/lang/Void;)[B

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 6
    .param p1, "args"    # [Ljava/lang/Void;

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$password:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$isPattern:Z

    iget-wide v3, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$challenge:J

    iget v5, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$userId:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyTiedProfileChallenge(Ljava/lang/String;ZJI)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "ex":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->mThrottleTimeout:I

    .line 212
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 203
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$4;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 2
    .param p1, "result"    # [B

    .line 218
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    iget v1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->mThrottleTimeout:I

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;->onVerified([BI)V

    .line 219
    return-void
.end method
