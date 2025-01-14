.class final Lcom/android/server/AppOpsService$Constants;
.super Landroid/database/ContentObserver;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Constants"
.end annotation


# static fields
.field private static final KEY_BG_STATE_SETTLE_TIME:Ljava/lang/String; = "bg_state_settle_time"

.field private static final KEY_FG_SERVICE_STATE_SETTLE_TIME:Ljava/lang/String; = "fg_service_state_settle_time"

.field private static final KEY_TOP_STATE_SETTLE_TIME:Ljava/lang/String; = "top_state_settle_time"


# instance fields
.field public BG_STATE_SETTLE_TIME:J

.field public FG_SERVICE_STATE_SETTLE_TIME:J

.field public TOP_STATE_SETTLE_TIME:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .line 275
    iput-object p1, p0, Lcom/android/server/AppOpsService$Constants;->this$0:Lcom/android/server/AppOpsService;

    .line 276
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 272
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {p1, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 277
    invoke-direct {p0}, Lcom/android/server/AppOpsService$Constants;->updateConstants()V

    .line 278
    return-void
.end method

.method private updateConstants()V
    .locals 6

    .line 294
    iget-object v0, p0, Lcom/android/server/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "app_ops_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_0
    const-string v0, ""

    .line 297
    .local v0, "value":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$Constants;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v1

    .line 299
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    goto :goto_1

    .line 311
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 300
    :catch_0
    move-exception v2

    .line 303
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v3, "AppOps"

    const-string v4, "Bad app ops settings"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    iget-object v2, p0, Lcom/android/server/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "top_state_settle_time"

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    .line 307
    iget-object v2, p0, Lcom/android/server/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "fg_service_state_settle_time"

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    .line 309
    iget-object v2, p0, Lcom/android/server/AppOpsService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "bg_state_settle_time"

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 311
    monitor-exit v1

    .line 312
    return-void

    .line 311
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 315
    const-string v0, "  Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "top_state_settle_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget-wide v0, p0, Lcom/android/server/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 319
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 320
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fg_service_state_settle_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget-wide v0, p0, Lcom/android/server/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 322
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 323
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "bg_state_settle_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    iget-wide v0, p0, Lcom/android/server/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 325
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 326
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 290
    invoke-direct {p0}, Lcom/android/server/AppOpsService$Constants;->updateConstants()V

    .line 291
    return-void
.end method

.method public startMonitoring(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 281
    iput-object p1, p0, Lcom/android/server/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 282
    iget-object v0, p0, Lcom/android/server/AppOpsService$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "app_ops_constants"

    .line 283
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 282
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 285
    invoke-direct {p0}, Lcom/android/server/AppOpsService$Constants;->updateConstants()V

    .line 286
    return-void
.end method
