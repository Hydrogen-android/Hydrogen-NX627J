.class Landroid/widget/Editor$5;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;

    .line 2924
    iput-object p1, p0, Landroid/widget/Editor$5;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 2927
    iget-object v0, p0, Landroid/widget/Editor$5;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performMenuItemAction(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2928
    const/4 v0, 0x1

    return v0

    .line 2930
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$5;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method
