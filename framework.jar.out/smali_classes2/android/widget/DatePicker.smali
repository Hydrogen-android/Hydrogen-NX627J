.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$ValidationCallback;,
        Landroid/widget/DatePicker$AbstractDatePickerDelegate;,
        Landroid/widget/DatePicker$DatePickerDelegate;,
        Landroid/widget/DatePicker$OnDateChangedListener;,
        Landroid/widget/DatePicker$DatePickerMode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MODE_CALENDAR:I = 0x2

.field public static final MODE_SPINNER:I = 0x1


# instance fields
.field private final mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

.field private final mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 144
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 155
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getImportantForAutofill()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0, v1}, Landroid/widget/DatePicker;->setImportantForAutofill(I)V

    .line 159
    :cond_0
    sget-object v0, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 161
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 162
    .local v2, "isDialogMode":Z
    const/16 v4, 0x10

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 163
    .local v1, "requestedMode":I
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 164
    .local v3, "firstDayOfWeek":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    if-eqz v2, :cond_1

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00df

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Landroid/widget/DatePicker;->mMode:I

    goto :goto_0

    .line 171
    :cond_1
    iput v1, p0, Landroid/widget/DatePicker;->mMode:I

    .line 174
    :goto_0
    iget v5, p0, Landroid/widget/DatePicker;->mMode:I

    if-eq v5, v4, :cond_2

    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/DatePicker;->createSpinnerUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    goto :goto_1

    .line 176
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/DatePicker;->createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    .line 177
    nop

    .line 184
    :goto_1
    if-eqz v3, :cond_3

    .line 185
    invoke-virtual {p0, v3}, Landroid/widget/DatePicker;->setFirstDayOfWeek(I)V

    .line 188
    :cond_3
    iget-object v4, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    new-instance v5, Landroid/widget/-$$Lambda$DatePicker$AnJPL5BrPXPJa-Oc-WUAB-HJq84;

    invoke-direct {v5, p0, p1}, Landroid/widget/-$$Lambda$DatePicker$AnJPL5BrPXPJa-Oc-WUAB-HJq84;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    invoke-interface {v4, v5}, Landroid/widget/DatePicker$DatePickerDelegate;->setAutoFillChangeListener(Landroid/widget/DatePicker$OnDateChangedListener;)V

    .line 194
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 203
    new-instance v6, Landroid/widget/DatePickerCalendarDelegate;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePickerCalendarDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v6
.end method

.method private createSpinnerUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 198
    new-instance v6, Landroid/widget/DatePickerSpinnerDelegate;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v6
.end method

.method public static synthetic lambda$new$0(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/widget/DatePicker;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/widget/DatePicker;
    .param p3, "y"    # I
    .param p4, "m"    # I
    .param p5, "d"    # I

    .line 189
    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 190
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 1
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 810
    invoke-virtual {p0}, Landroid/widget/DatePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->autofill(Landroid/view/autofill/AutofillValue;)V

    .line 813
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 353
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 1
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 804
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 805
    invoke-virtual {p0, p1, p2}, Landroid/widget/DatePicker;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 806
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 499
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 500
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 365
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    .line 817
    invoke-virtual {p0}, Landroid/widget/DatePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    .line 822
    invoke-virtual {p0}, Landroid/widget/DatePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 447
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getCalendarView()Landroid/widget/CalendarView;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getCalendarViewShown()Z

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 273
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 412
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 312
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getMaxDate()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 287
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getMinDate()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    .line 216
    iget v0, p0, Landroid/widget/DatePicker;->mMode:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 266
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getMonth()I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 478
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getSpinnersShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 259
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getYear()I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .line 231
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/DatePicker$DatePickerDelegate;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 232
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 347
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 370
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 371
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 372
    return-void
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 359
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 360
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 361
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 510
    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 511
    .local v0, "ss":Landroid/view/View$BaseSavedState;
    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 512
    iget-object v1, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v1, v0}, Landroid/widget/DatePicker$DatePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 513
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 504
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 505
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v1, v0}, Landroid/widget/DatePicker$DatePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method public setCalendarViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 463
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setCalendarViewShown(Z)V

    .line 464
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 338
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 339
    return-void

    .line 341
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 342
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setEnabled(Z)V

    .line 343
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2
    .param p1, "firstDayOfWeek"    # I

    .line 390
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 393
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setFirstDayOfWeek(I)V

    .line 394
    return-void

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxDate(J)V
    .locals 1
    .param p1, "maxDate"    # J

    .line 323
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2}, Landroid/widget/DatePicker$DatePickerDelegate;->setMaxDate(J)V

    .line 324
    return-void
.end method

.method public setMinDate(J)V
    .locals 1
    .param p1, "minDate"    # J

    .line 298
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2}, Landroid/widget/DatePicker$DatePickerDelegate;->setMinDate(J)V

    .line 299
    return-void
.end method

.method public setOnDateChangedListener(Landroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 1
    .param p1, "onDateChangedListener"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .line 241
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setOnDateChangedListener(Landroid/widget/DatePicker$OnDateChangedListener;)V

    .line 242
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 1
    .param p1, "shown"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 494
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setSpinnersShown(Z)V

    .line 495
    return-void
.end method

.method public setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/widget/DatePicker$ValidationCallback;

    .line 333
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V

    .line 334
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 252
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerDelegate;->updateDate(III)V

    .line 253
    return-void
.end method
