.class public Lcom/android/internal/view/menu/IconMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "IconMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;
    }
.end annotation


# static fields
.field private static final OPEN_SUBMENU_KEY:Ljava/lang/String; = "android:menu:icon:submenu"

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:menu:icon"


# instance fields
.field private mMaxItems:I

.field private mMoreView:Lcom/android/internal/view/menu/IconMenuItemView;

.field mOpenSubMenu:Lcom/android/internal/view/menu/MenuDialogHelper;

.field mOpenSubMenuId:I

.field mSubMenuPresenterCallback:Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10303ee

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v1, 0x1090071

    const v2, 0x1090070

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMaxItems:I

    .line 41
    new-instance v0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;-><init>(Lcom/android/internal/view/menu/IconMenuPresenter;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mSubMenuPresenterCallback:Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;

    .line 51
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "childIndex"    # I

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/IconMenuItemView;

    .line 82
    .local v0, "v":Lcom/android/internal/view/menu/IconMenuItemView;
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Lcom/android/internal/view/menu/IconMenuView;

    .line 84
    .local v1, "parent":Lcom/android/internal/view/menu/IconMenuView;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/IconMenuItemView;->setIconMenuView(Lcom/android/internal/view/menu/IconMenuView;)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/IconMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 86
    invoke-virtual {v1}, Lcom/android/internal/view/menu/IconMenuView;->getItemBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/IconMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 88
    return-void
.end method

.method public bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .locals 3
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 61
    move-object v0, p2

    check-cast v0, Lcom/android/internal/view/menu/IconMenuItemView;

    .line 62
    .local v0, "view":Lcom/android/internal/view/menu/IconMenuItemView;
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setItemData(Lcom/android/internal/view/menu/MenuItemImpl;)V

    .line 64
    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/IconMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/IconMenuItemView;->setVisibility(I)V

    .line 67
    invoke-virtual {v0}, Lcom/android/internal/view/menu/IconMenuItemView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/IconMenuItemView;->setEnabled(Z)V

    .line 68
    invoke-virtual {v0}, Lcom/android/internal/view/menu/IconMenuItemView;->getTextAppropriateLayoutParams()Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/IconMenuItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    return-void
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/IconMenuItemView;

    if-eq v0, v1, :cond_0

    .line 128
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    return v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNumActualItemsShown()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Lcom/android/internal/view/menu/IconMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/IconMenuView;->getNumActualItemsShown()I

    move-result v0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 55
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMaxItems:I

    .line 57
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 175
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 176
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 167
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenuId:I

    if-lez v1, :cond_1

    .line 168
    const-string v1, "android:menu:icon:submenu"

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenuId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    :cond_1
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 95
    :cond_0
    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 96
    .local v0, "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mSubMenuPresenterCallback:Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 98
    iput-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenuId:I

    .line 100
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 101
    const/4 v1, 0x1

    return v1
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "inState"    # Landroid/os/Bundle;

    .line 146
    const-string v0, "android:menu:icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 147
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 150
    :cond_0
    const-string v1, "android:menu:icon:submenu"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 151
    .local v1, "subMenuId":I
    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 153
    .local v2, "item":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    .line 154
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/IconMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 157
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_1
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 139
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 142
    :cond_0
    const-string v1, "android:menu:icon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 143
    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 73
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 74
    .local v0, "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMaxItems:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMaxItems:I

    if-lt p1, v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMaxItems:I

    sub-int/2addr v1, v4

    if-ge p1, v1, :cond_2

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    .line 76
    .local v1, "fits":Z
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v2

    if-nez v2, :cond_3

    move v3, v4

    nop

    :cond_3
    return v3
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .line 106
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Lcom/android/internal/view/menu/IconMenuView;

    .line 107
    .local v0, "menuView":Lcom/android/internal/view/menu/IconMenuView;
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMaxItems:I

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/IconMenuView;->getMaxItems()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMaxItems:I

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 109
    .local v1, "itemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMaxItems:I

    const/4 v4, 0x1

    if-le v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 110
    .local v2, "needsMore":Z
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 112
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/IconMenuItemView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/IconMenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, v0, :cond_4

    .line 113
    :cond_2
    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/IconMenuItemView;

    if-nez v3, :cond_3

    .line 114
    invoke-virtual {v0}, Lcom/android/internal/view/menu/IconMenuView;->createMoreItemView()Lcom/android/internal/view/menu/IconMenuItemView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/IconMenuItemView;

    .line 115
    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/IconMenuView;->getItemBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/view/menu/IconMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_3
    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-virtual {v0, v3}, Lcom/android/internal/view/menu/IconMenuView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 118
    :cond_4
    if-nez v2, :cond_5

    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/IconMenuItemView;

    if-eqz v3, :cond_5

    .line 119
    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMoreView:Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-virtual {v0, v3}, Lcom/android/internal/view/menu/IconMenuView;->removeView(Landroid/view/View;)V

    .line 122
    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    iget v3, p0, Lcom/android/internal/view/menu/IconMenuPresenter;->mMaxItems:I

    sub-int/2addr v3, v4

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/internal/view/menu/IconMenuView;->setNumActualItemsShown(I)V

    .line 123
    return-void
.end method
