.class Lcom/android/server/display/ColorDisplayService$1;
.super Landroid/database/ContentObserver;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/ColorDisplayService;->onUserChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ColorDisplayService;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/ColorDisplayService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 162
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$1;->this$0:Lcom/android/server/display/ColorDisplayService;

    iput-object p3, p0, Lcom/android/server/display/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 165
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$1;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$100(Lcom/android/server/display/ColorDisplayService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/ColorDisplayService;->access$200(Landroid/content/ContentResolver;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$1;->this$0:Lcom/android/server/display/ColorDisplayService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/ColorDisplayService;->access$302(Lcom/android/server/display/ColorDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 169
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$1;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/ColorDisplayService;->access$400(Lcom/android/server/display/ColorDisplayService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$1;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/ColorDisplayService;->access$500(Lcom/android/server/display/ColorDisplayService;)V

    .line 173
    :cond_0
    return-void
.end method
