.class public Lcom/android/internal/app/MediaRouteControllerDialogFragment;
.super Landroid/app/DialogFragment;
.source "MediaRouteControllerDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->setCancelable(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteControllerDialog;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    new-instance v0, Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->getTheme()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteControllerDialog;

    move-result-object v0

    return-object v0
.end method
