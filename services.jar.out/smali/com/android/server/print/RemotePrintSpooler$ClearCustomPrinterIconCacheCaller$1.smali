.class Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    .line 829
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$1;)V

    return-void
.end method


# virtual methods
.method public customPrinterIconCacheCleared(I)V
    .locals 2
    .param p1, "sequence"    # I

    .line 832
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->access$1100(Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;Ljava/lang/Object;I)V

    .line 833
    return-void
.end method
