.class public interface abstract Lcom/android/internal/telephony/cat/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final AID:Ljava/lang/String; = "aid"

.field public static final ALPHA_STRING:Ljava/lang/String; = "alpha_string"

.field public static final CARD_STATUS:Ljava/lang/String; = "card_status"

.field public static final CAT_ALPHA_NOTIFY_ACTION:Ljava/lang/String; = "com.android.internal.stk.alpha_notify"

.field public static final CAT_CMD_ACTION:Ljava/lang/String; = "com.android.internal.stk.command"

.field public static final CAT_ICC_STATUS_CHANGE:Ljava/lang/String; = "com.android.internal.stk.icc_status_change"

.field public static final CAT_SESSION_END_ACTION:Ljava/lang/String; = "com.android.internal.stk.session_end"

.field public static final REFRESH_RESULT:Ljava/lang/String; = "refresh_result"

.field public static final STK_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_STK_COMMANDS"


# direct methods
.method public static getDefaultSTKApplication()Landroid/content/ComponentName;
    .locals 1

    .line 56
    const-string v0, "com.android.stk/.StkCmdReceiver"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method
