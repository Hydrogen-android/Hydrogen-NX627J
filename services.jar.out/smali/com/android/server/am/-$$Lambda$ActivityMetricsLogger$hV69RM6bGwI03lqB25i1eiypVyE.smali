.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$hV69RM6bGwI03lqB25i1eiypVyE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ActivityMetricsLogger;

.field private final synthetic f$1:Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$hV69RM6bGwI03lqB25i1eiypVyE;->f$0:Lcom/android/server/am/ActivityMetricsLogger;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$hV69RM6bGwI03lqB25i1eiypVyE;->f$1:Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$hV69RM6bGwI03lqB25i1eiypVyE;->f$0:Lcom/android/server/am/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$hV69RM6bGwI03lqB25i1eiypVyE;->f$1:Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->lambda$logAppTransitionReportedDrawn$2(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method
