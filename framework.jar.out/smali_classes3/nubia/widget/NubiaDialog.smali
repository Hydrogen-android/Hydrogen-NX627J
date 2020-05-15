.class public Lnubia/widget/NubiaDialog;
.super Ljava/lang/Object;
.source "NubiaDialog.java"

# interfaces
.implements Lnubia/widget/IDialog;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lnubia/widget/NubiaDialog;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "styleId"    # I
    .param p3, "defaultId"    # I

    .line 47
    const v0, 0x30700a5

    return v0
.end method

.method public getAlertTitleId()I
    .locals 1

    .line 67
    const v0, 0x3080077

    return v0
.end method

.method public getButtonPanelId()I
    .locals 1

    .line 97
    const v0, 0x308007a

    return v0
.end method

.method public getContentPanelId()I
    .locals 1

    .line 72
    const v0, 0x308007e

    return v0
.end method

.method public getCustomId()I
    .locals 1

    .line 92
    const v0, 0x308007f

    return v0
.end method

.method public getCustomPanelId()I
    .locals 1

    .line 87
    const v0, 0x3080080

    return v0
.end method

.method public getMessageId()I
    .locals 1

    .line 82
    const v0, 0x3080083

    return v0
.end method

.method public getParentPanelId()I
    .locals 1

    .line 102
    const v0, 0x3080086

    return v0
.end method

.method public getScrollViewId()I
    .locals 1

    .line 77
    const v0, 0x3080088

    return v0
.end method

.method public getTitleTemplateId()I
    .locals 1

    .line 62
    const v0, 0x308008c

    return v0
.end method

.method public getTopPanelId()I
    .locals 1

    .line 57
    const v0, 0x308008d

    return v0
.end method

.method public isResetDialogButtonStyle()Z
    .locals 1

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public resetAlertDialogLayout()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;

    .line 29
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 30
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 31
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 32
    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 34
    return-void
.end method

.method public setBlankViewOnClickEvent()Z
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public setCanceledOnTouchOutside(Lcom/android/internal/app/AlertController;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "alert"    # Lcom/android/internal/app/AlertController;
    .param p2, "flag"    # Ljava/lang/Boolean;

    .line 38
    return-void
.end method

.method public setExitAnimation(Landroid/app/Activity;II)V
    .locals 0
    .param p1, "actv"    # Landroid/app/Activity;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I

    .line 52
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 53
    return-void
.end method
