.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic val$session:Landroid/media/tv/TvInputManager$Session;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;Landroid/media/tv/TvInputManager$Session;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 562
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;->val$session:Landroid/media/tv/TvInputManager$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 565
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$000(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$1;->val$session:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$SessionCallback;->onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V

    .line 566
    return-void
.end method
