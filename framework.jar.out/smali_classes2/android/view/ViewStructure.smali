.class public abstract Landroid/view/ViewStructure;
.super Ljava/lang/Object;
.source "ViewStructure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewStructure$HtmlInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addChildCount(I)I
.end method

.method public abstract asyncCommit()V
.end method

.method public abstract asyncNewChild(I)Landroid/view/ViewStructure;
.end method

.method public abstract getAutofillId()Landroid/view/autofill/AutofillId;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getExtras()Landroid/os/Bundle;
.end method

.method public abstract getHint()Ljava/lang/CharSequence;
.end method

.method public abstract getTempRect()Landroid/graphics/Rect;
.end method

.method public abstract getText()Ljava/lang/CharSequence;
.end method

.method public abstract getTextSelectionEnd()I
.end method

.method public abstract getTextSelectionStart()I
.end method

.method public abstract hasExtras()Z
.end method

.method public abstract newChild(I)Landroid/view/ViewStructure;
.end method

.method public abstract newHtmlInfoBuilder(Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;
.end method

.method public abstract setAccessibilityFocused(Z)V
.end method

.method public abstract setActivated(Z)V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setAssistBlocked(Z)V
.end method

.method public abstract setAutofillHints([Ljava/lang/String;)V
.end method

.method public abstract setAutofillId(Landroid/view/autofill/AutofillId;)V
.end method

.method public abstract setAutofillId(Landroid/view/autofill/AutofillId;I)V
.end method

.method public abstract setAutofillOptions([Ljava/lang/CharSequence;)V
.end method

.method public abstract setAutofillType(I)V
.end method

.method public abstract setAutofillValue(Landroid/view/autofill/AutofillValue;)V
.end method

.method public abstract setCheckable(Z)V
.end method

.method public abstract setChecked(Z)V
.end method

.method public abstract setChildCount(I)V
.end method

.method public abstract setClassName(Ljava/lang/String;)V
.end method

.method public abstract setClickable(Z)V
.end method

.method public abstract setContentDescription(Ljava/lang/CharSequence;)V
.end method

.method public abstract setContextClickable(Z)V
.end method

.method public abstract setDataIsSensitive(Z)V
.end method

.method public abstract setDimens(IIIIII)V
.end method

.method public abstract setElevation(F)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setFocusable(Z)V
.end method

.method public abstract setFocused(Z)V
.end method

.method public abstract setHint(Ljava/lang/CharSequence;)V
.end method

.method public abstract setHtmlInfo(Landroid/view/ViewStructure$HtmlInfo;)V
.end method

.method public abstract setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setImportantForAutofill(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 360
    return-void
.end method

.method public abstract setInputType(I)V
.end method

.method public abstract setLocaleList(Landroid/os/LocaleList;)V
.end method

.method public abstract setLongClickable(Z)V
.end method

.method public setMaxTextEms(I)V
    .locals 0
    .param p1, "maxEms"    # I

    .line 406
    return-void
.end method

.method public setMaxTextLength(I)V
    .locals 0
    .param p1, "maxLength"    # I

    .line 414
    return-void
.end method

.method public setMinTextEms(I)V
    .locals 0
    .param p1, "minEms"    # I

    .line 398
    return-void
.end method

.method public abstract setOpaque(Z)V
.end method

.method public abstract setSelected(Z)V
.end method

.method public abstract setText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setText(Ljava/lang/CharSequence;II)V
.end method

.method public setTextIdEntry(Ljava/lang/String;)V
    .locals 0
    .param p1, "entryName"    # Ljava/lang/String;

    .line 222
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method public abstract setTextLines([I[I)V
.end method

.method public abstract setTextStyle(FIII)V
.end method

.method public abstract setTransformation(Landroid/graphics/Matrix;)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract setWebDomain(Ljava/lang/String;)V
.end method
