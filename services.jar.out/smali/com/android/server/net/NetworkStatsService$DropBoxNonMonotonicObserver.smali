.class Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/net/NetworkStats$NonMonotonicObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropBoxNonMonotonicObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/NetworkStats$NonMonotonicObserver<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    .line 1771
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p2, "x1"    # Lcom/android/server/net/NetworkStatsService$1;

    .line 1771
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V
    .locals 6

    .line 1771
    move-object v5, p5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/String;)V

    return-void
.end method

.method public foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/String;)V
    .locals 4
    .param p1, "left"    # Landroid/net/NetworkStats;
    .param p2, "leftIndex"    # I
    .param p3, "right"    # Landroid/net/NetworkStats;
    .param p4, "rightIndex"    # I
    .param p5, "cookie"    # Ljava/lang/String;

    .line 1775
    const-string v0, "NetworkStats"

    const-string v1, "Found non-monotonic values; saving to dropbox"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1779
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found non-monotonic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " values at left["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] - right["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    const-string/jumbo v1, "left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1782
    const-string/jumbo v2, "right="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1784
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$1400(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/DropBoxManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    const-string/jumbo v2, "netstats_error"

    .line 1785
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1784
    invoke-virtual {v1, v2, v3}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    return-void
.end method

.method public bridge synthetic foundNonMonotonic(Landroid/net/NetworkStats;ILjava/lang/Object;)V
    .locals 0

    .line 1771
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILjava/lang/String;)V

    return-void
.end method

.method public foundNonMonotonic(Landroid/net/NetworkStats;ILjava/lang/String;)V
    .locals 4
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .param p2, "statsIndex"    # I
    .param p3, "cookie"    # Ljava/lang/String;

    .line 1791
    const-string v0, "NetworkStats"

    const-string v1, "Found non-monotonic values; saving to dropbox"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1794
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found non-monotonic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " values at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    const-string/jumbo v1, "stats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1797
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$1400(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/DropBoxManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    const-string/jumbo v2, "netstats_error"

    .line 1798
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1797
    invoke-virtual {v1, v2, v3}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    return-void
.end method
