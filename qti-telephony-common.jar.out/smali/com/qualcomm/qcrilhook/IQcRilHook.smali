.class public interface abstract Lcom/qualcomm/qcrilhook/IQcRilHook;
.super Ljava/lang/Object;
.source "IQcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/IQcRilHook$QcRilExtendedDbmIntlKddiAocr;
    }
.end annotation


# static fields
.field public static final QCRILHOOK_BASE:I = 0x80000

.field public static final QCRILHOOK_DMS_GET_DEVICE_SERIAL_NUMBERS:I = 0x8100a

.field public static final QCRILHOOK_DMS_GET_FTM_MODE:I = 0x81007

.field public static final QCRILHOOK_DMS_GET_SPC_CHANGE_ENABLED:I = 0x8100b

.field public static final QCRILHOOK_DMS_GET_SW_VERSION:I = 0x81008

.field public static final QCRILHOOK_DMS_SET_SPC_CHANGE_ENABLED:I = 0x8100c

.field public static final QCRILHOOK_DMS_UPDATE_SERVICE_PROGRAMING_CODE:I = 0x81009

.field public static final QCRILHOOK_GO_DORMANT:I = 0x80003

.field public static final QCRILHOOK_ME_DEPERSONALIZATION:I = 0x80004

.field public static final QCRILHOOK_NAS_GET_3GPP2_SUBSCRIPTION_INFO:I = 0x81001

.field public static final QCRILHOOK_NAS_GET_MOB_CAI_REV:I = 0x81003

.field public static final QCRILHOOK_NAS_GET_RTRE_CONFIG:I = 0x81005

.field public static final QCRILHOOK_NAS_SET_3GPP2_SUBSCRIPTION_INFO:I = 0x81002

.field public static final QCRILHOOK_NAS_SET_MOB_CAI_REV:I = 0x81004

.field public static final QCRILHOOK_NAS_SET_RTRE_CONFIG:I = 0x81006

.field public static final QCRILHOOK_NAS_UPDATE_AKEY:I = 0x81000

.field public static final QCRILHOOK_NUBIA_BASE:I = 0x8012c

.field public static final QCRILHOOK_NUBIA_UNSOL_BASE:I = 0x8042e

.field public static final QCRILHOOK_NV_READ:I = 0x80001

.field public static final QCRILHOOK_NV_WRITE:I = 0x80002

.field public static final QCRILHOOK_QMI_OEMHOOK_REQUEST_ID:I = 0x80064

.field public static final QCRILHOOK_REQUEST_ID_BASE:I = 0x80001

.field public static final QCRILHOOK_REQUEST_ID_MAX:I = 0x80063

.field public static final QCRILHOOK_UNSOL_BASE:I = 0x803e8

.field public static final QCRILHOOK_UNSOL_CARD_STATE_CHANGED:I = 0x80406

.field public static final QCRILHOOK_UNSOL_CDMA_BURST_DTMF:I = 0x803e9

.field public static final QCRILHOOK_UNSOL_CDMA_CONT_DTMF_START:I = 0x803ea

.field public static final QCRILHOOK_UNSOL_CDMA_CONT_DTMF_STOP:I = 0x803eb

.field public static final QCRILHOOK_UNSOL_EXTENDED_DBM_INTL:I = 0x803e8

.field public static final QCRILHOOK_UNSOL_LOCAL_RINGBACK_START:I = 0x803ec

.field public static final QCRILHOOK_UNSOL_LOCAL_RINGBACK_STOP:I = 0x803ed

.field public static final QCRILHOOK_UNSOL_MAX:I = 0x8044b

.field public static final QCRILHOOK_UNSOL_MAX_DATA_ALLOWED_CHANGED:I = 0x8041e

.field public static final QCRILHOOK_UNSOL_OEMHOOK:I = 0x8044c

.field public static final QCRILHOOK_UNSOL_PDC_CLEAR_CONFIGS:I = 0x803f9

.field public static final QCRILHOOK_UNSOL_PDC_CONFIG:I = 0x803f6

.field public static final QCRILHOOK_UNSOL_PDC_CONFIG_CHANGE:I = 0x80430

.field public static final QCRILHOOK_UNSOL_PDC_CONFIG_SELECT:I = 0x8042f

.field public static final QCRILHOOK_UNSOL_PDC_LIST_CONFIG:I = 0x80408

.field public static final QCRILHOOK_UNSOL_SIMLOCK_TEMP_UNLOCK_EXPIRED:I = 0x80405

.field public static final QCRILHOOK_UNSOL_SLOT_STATUS_CHANGE_IND:I = 0x80409

.field public static final QCRILHOOK_UNSOL_UICC_PROVISION_STATUS_CHANGED:I = 0x80404

.field public static final QCRILHOOK_VOICE_GET_CONFIG:I = 0x8100e

.field public static final QCRILHOOK_VOICE_SET_CONFIG:I = 0x8100d

.field public static final QCRIL_EVT_HOOK_ABORT_NW_SCAN:I = 0x8005f

.field public static final QCRIL_EVT_HOOK_ACT_CONFIGS:I = 0x80032

.field public static final QCRIL_EVT_HOOK_CARD_POWER_REQ:I = 0x800d7

.field public static final QCRIL_EVT_HOOK_CDMA_AVOID_CUR_NWK:I = 0x8000e

.field public static final QCRIL_EVT_HOOK_CDMA_CLEAR_AVOIDANCE_LIST:I = 0x8000f

.field public static final QCRIL_EVT_HOOK_CDMA_GET_AVOIDANCE_LIST:I = 0x80010

.field public static final QCRIL_EVT_HOOK_DEACTIVATE_CONFIGS_BY_SUB:I = 0x8012e

.field public static final QCRIL_EVT_HOOK_DEACT_CONFIGS:I = 0x8002c

.field public static final QCRIL_EVT_HOOK_DELETE_ALL_CONFIGS:I = 0x8001f

.field public static final QCRIL_EVT_HOOK_ENABLE_ENGINEER_MODE:I = 0x80013

.field public static final QCRIL_EVT_HOOK_ENTER_DEPERSONALIZATION_CODE:I = 0x800d8

.field public static final QCRIL_EVT_HOOK_GET_ADN_RECORD:I = 0x800dd

.field public static final QCRIL_EVT_HOOK_GET_ATR:I = 0x800d3

.field public static final QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS:I = 0x80017

.field public static final QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS_SYNC:I = 0x80131

.field public static final QCRIL_EVT_HOOK_GET_CARD_STATE:I = 0x800d2

.field public static final QCRIL_EVT_HOOK_GET_CONFIG:I = 0x80016

.field public static final QCRIL_EVT_HOOK_GET_CONFIG_INFO:I = 0x8012d

.field public static final QCRIL_EVT_HOOK_GET_CSG_ID:I = 0x80018

.field public static final QCRIL_EVT_HOOK_GET_DEFAULT_CONFIG_INFO:I = 0x80130

.field public static final QCRIL_EVT_HOOK_GET_DEVICE_ID:I = 0x80134

.field public static final QCRIL_EVT_HOOK_GET_MAX_DATA_ALLOWED:I = 0x8005d

.field public static final QCRIL_EVT_HOOK_GET_META_INFO:I = 0x80021

.field public static final QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE:I = 0x80030

.field public static final QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID:I = 0x80031

.field public static final QCRIL_EVT_HOOK_GET_OMH_CALL_PROFILE:I = 0x800ca

.field public static final QCRIL_EVT_HOOK_GET_PAGING_PRIORITY:I = 0x80008

.field public static final QCRIL_EVT_HOOK_GET_PERSONALIZATION_STATUS:I = 0x80402

.field public static final QCRIL_EVT_HOOK_GET_PREFERRED_NETWORK_ACQ_ORDER:I = 0x8001c

.field public static final QCRIL_EVT_HOOK_GET_PREFERRED_NETWORK_BAND_PREF:I = 0x80026

.field public static final QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE:I = 0x8002d

.field public static final QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID:I = 0x8002f

.field public static final QCRIL_EVT_HOOK_GET_SAR_RF_STATE:I = 0x80135

.field public static final QCRIL_EVT_HOOK_GET_SELECTED_OR_PENDING_CONFIG:I = 0x8012f

.field public static final QCRIL_EVT_HOOK_GET_SLOTS_STATUS_REQ:I = 0x800da

.field public static final QCRIL_EVT_HOOK_GET_SLOT_MAPPING:I = 0x800d6

.field public static final QCRIL_EVT_HOOK_GET_TERMINAL_CAPABILITY_LPA_TLV_REQ:I = 0x800db

.field public static final QCRIL_EVT_HOOK_GET_TUNEAWAY:I = 0x80006

.field public static final QCRIL_EVT_HOOK_GET_UICC_ICCID:I = 0x8005c

.field public static final QCRIL_EVT_HOOK_GET_UICC_PROVISION_PREFERENCE:I = 0x8005a

.field public static final QCRIL_EVT_HOOK_INFORM_SHUTDOWN:I = 0x8000a

.field public static final QCRIL_EVT_HOOK_LTE_DIRECT_DISC_REQ:I = 0x80066

.field public static final QCRIL_EVT_HOOK_PERFORM_INCREMENTAL_NW_SCAN:I = 0x80012

.field public static final QCRIL_EVT_HOOK_PROTOBUF_MSG:I = 0x80065

.field public static final QCRIL_EVT_HOOK_SEL_CONFIG:I = 0x80020

.field public static final QCRIL_EVT_HOOK_SEND_APDU_CMD:I = 0x800d4

.field public static final QCRIL_EVT_HOOK_SET_APN_INFO:I = 0x8002a

.field public static final QCRIL_EVT_HOOK_SET_ATEL_UI_STATUS:I = 0x8001a

.field public static final QCRIL_EVT_HOOK_SET_BUILTIN_PLMN_LIST:I = 0x80011

.field public static final QCRIL_EVT_HOOK_SET_CDMA_SUB_SRC_WITH_SPC:I = 0x8000b

.field public static final QCRIL_EVT_HOOK_SET_CONFIG:I = 0x80015

.field public static final QCRIL_EVT_HOOK_SET_DATA_SUBSCRIPTION:I = 0x80027

.field public static final QCRIL_EVT_HOOK_SET_IS_DATA_ENABLED:I = 0x80028

.field public static final QCRIL_EVT_HOOK_SET_IS_DATA_ROAMING_ENABLED:I = 0x80029

.field public static final QCRIL_EVT_HOOK_SET_LTE_TUNE_AWAY:I = 0x8002b

.field public static final QCRIL_EVT_HOOK_SET_PAGING_PRIORITY:I = 0x80007

.field public static final QCRIL_EVT_HOOK_SET_PERSONALIZATION:I = 0x80401

.field public static final QCRIL_EVT_HOOK_SET_PREFERRED_NETWORK_ACQ_ORDER:I = 0x8001b

.field public static final QCRIL_EVT_HOOK_SET_PREFERRED_NETWORK_BAND_PREF:I = 0x80025

.field public static final QCRIL_EVT_HOOK_SET_SAR_RF_STATE:I = 0x80136

.field public static final QCRIL_EVT_HOOK_SET_TERMINAL_CAPABILITY_LPA_TLV_REQ:I = 0x800dc

.field public static final QCRIL_EVT_HOOK_SET_TUNEAWAY:I = 0x80005

.field public static final QCRIL_EVT_HOOK_SET_UICC_PROVISION_PREFERENCE:I = 0x8005b

.field public static final QCRIL_EVT_HOOK_SWITCH_SLOT:I = 0x800d5

.field public static final QCRIL_EVT_HOOK_UNSOL_LTE_DIRECT_DISC:I = 0x80067

.field public static final QCRIL_EVT_HOOK_UNSOL_RAT_RAC_CHANGE_IND:I = 0x8041d

.field public static final QCRIL_EVT_HOOK_UPDATE_ADN_RECORD:I = 0x800de

.field public static final QCRIL_EVT_HOOK_VALIDATE_CONFIG:I = 0x8002e

.field public static final QCRIL_EVT_HOOK_ZTE_COMMON_GET:I = 0x80132

.field public static final QCRIL_EVT_HOOK_ZTE_COMMON_SET:I = 0x80133

.field public static final QCRIL_EVT_REQ_HOOK_GET_L_PLUS_L_FEATURE_SUPPORT_STATUS_REQ:I = 0x8005e

.field public static final QCRIL_EVT_SET_LOCAL_CALL_HOLD:I = 0x81b58

.field public static final SERVICE_PROGRAMMING_BASE:I = 0x1000


# virtual methods
.method public abstract getLpluslSupportStatus()Z
.end method

.method public abstract qcRilCleanupConfigs()Z
.end method

.method public abstract qcRilGetAllConfigs()Z
.end method

.method public abstract qcRilGetAvailableConfigs(Ljava/lang/String;)[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract qcRilGetConfig()Ljava/lang/String;
.end method

.method public abstract qcRilGetCsgId()I
.end method

.method public abstract qcRilGetPrioritySubscription()I
.end method

.method public abstract qcRilGetTuneAway()Z
.end method

.method public abstract qcRilGoDormant(Ljava/lang/String;)Z
.end method

.method public abstract qcRilSendProtocolBufferMessage([BI)[B
.end method

.method public abstract qcRilSetCdmaSubSrcWithSpc(ILjava/lang/String;)Z
.end method

.method public abstract qcRilSetConfig(Ljava/lang/String;)Z
.end method

.method public abstract qcRilSetPrioritySubscription(I)Z
.end method

.method public abstract qcRilSetTuneAway(Z)Z
.end method

.method public abstract registerForExtendedDbmIntl(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForFieldTestData(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sendQcRilHookMsg(I)Landroid/os/AsyncResult;
.end method

.method public abstract sendQcRilHookMsg(IB)Landroid/os/AsyncResult;
.end method

.method public abstract sendQcRilHookMsg(II)Landroid/os/AsyncResult;
.end method

.method public abstract sendQcRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;
.end method

.method public abstract sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;
.end method

.method public abstract unregisterForExtendedDbmIntl(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForFieldTestData(Landroid/os/Handler;)V
.end method
