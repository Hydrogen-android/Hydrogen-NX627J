.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
.super Ljava/lang/Object;
.source "QtiCardInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardInfo"
.end annotation


# instance fields
.field private mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

.field private mIccId:Ljava/lang/String;

.field private mMCCMNCLoaded:Z

.field private mMccMnc:Ljava/lang/String;

.field private mProvisionState:I

.field private mUpdateCardTypeState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .line 87
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .param p1, "x1"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    .line 87
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    return-object p1
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .line 87
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMCCMNCLoaded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .param p1, "x1"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMCCMNCLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .line 87
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->reset()V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .line 87
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    return v0
.end method

.method static synthetic access$602(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .param p1, "x1"    # I

    .line 87
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    return p1
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .line 87
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    return v0
.end method

.method static synthetic access$702(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .param p1, "x1"    # I

    .line 87
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    return p1
.end method

.method static synthetic access$800(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .line 87
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .line 87
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    return-object p1
.end method

.method private reset()V
    .locals 1

    .line 96
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    .line 101
    return-void
.end method


# virtual methods
.method public getCardIccId()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getMccMnc()Ljava/lang/String;
    .locals 1

    .line 122
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setPrimaryCardOnDeAct()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionState()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    return v0
.end method

.method public isCardInfoAvailable(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .line 148
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mUpdateCardTypeState:I

    if-eq v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 151
    .local v0, "isAvailable":Z
    :goto_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isPermanentlyUnlocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 153
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 155
    .local v2, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    if-ne v3, v1, :cond_2

    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 159
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 161
    .local v1, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isPersoLocked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 162
    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMCCMNCLoaded:Z

    and-int/2addr v0, v3

    .line 165
    :cond_1
    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMCCMNCLoaded:Z

    if-nez v3, :cond_2

    .line 166
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMccMnc:Ljava/lang/String;

    .line 170
    .end local v1    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_2
    return v0
.end method

.method public isCardTypeSame(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cardType"    # Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setPrimaryCardOnDeAct()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mProvisionState:I

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mCardType:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMccMncLoaded()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->mMCCMNCLoaded:Z

    return v0
.end method
