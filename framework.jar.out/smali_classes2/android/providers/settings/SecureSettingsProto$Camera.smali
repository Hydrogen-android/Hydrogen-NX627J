.class public final Landroid/providers/settings/SecureSettingsProto$Camera;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Camera"
.end annotation


# static fields
.field public static final DOUBLE_TAP_POWER_GESTURE_DISABLED:J = 0x10b00000002L

.field public static final DOUBLE_TWIST_TO_FLIP_ENABLED:J = 0x10b00000003L

.field public static final GESTURE_DISABLED:J = 0x10b00000001L

.field public static final LIFT_TRIGGER_ENABLED:J = 0x10b00000004L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/SecureSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/providers/settings/SecureSettingsProto;

    .line 227
    iput-object p1, p0, Landroid/providers/settings/SecureSettingsProto$Camera;->this$0:Landroid/providers/settings/SecureSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
