.class final Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WapPushOverSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecodedResult"
.end annotation


# instance fields
.field contentType:Ljava/lang/String;

.field contentTypeParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field header:[B

.field intentData:[B

.field mimeType:Ljava/lang/String;

.field parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field pduType:I

.field phoneId:I

.field statusCode:I

.field subId:I

.field final synthetic this$0:Lcom/android/internal/telephony/WapPushOverSms;

.field transactionId:I

.field wapAppId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/WapPushOverSms;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/WapPushOverSms;Lcom/android/internal/telephony/WapPushOverSms$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/WapPushOverSms;
    .param p2, "x1"    # Lcom/android/internal/telephony/WapPushOverSms$1;

    .line 656
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;-><init>(Lcom/android/internal/telephony/WapPushOverSms;)V

    return-void
.end method
