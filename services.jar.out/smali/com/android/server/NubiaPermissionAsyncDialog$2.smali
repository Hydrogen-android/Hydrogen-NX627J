.class Lcom/android/server/NubiaPermissionAsyncDialog$2;
.super Ljava/lang/Object;
.source "NubiaPermissionAsyncDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NubiaPermissionAsyncDialog;-><init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/NubiaPermissionDialogReqQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NubiaPermissionAsyncDialog;


# direct methods
.method constructor <init>(Lcom/android/server/NubiaPermissionAsyncDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 181
    iput-object p1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$2;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$2;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$000(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$2;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$000(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    return-void
.end method
