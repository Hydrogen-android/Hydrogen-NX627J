.class public abstract Landroid/view/InputEventSender;
.super Ljava/lang/Object;
.source "InputEventSender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEventSender"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInputChannel:Landroid/view/InputChannel;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mSenderPtr:J


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 56
    if-eqz p1, :cond_1

    .line 59
    if-eqz p2, :cond_0

    .line 63
    iput-object p1, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    .line 64
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {v0, p1, v1}, Landroid/view/InputEventSender;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    .line 68
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 69
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchInputEventFinished(IZ)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .line 141
    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventSender;->onInputEventFinished(IZ)V

    .line 142
    return-void
.end method

.method private dispose(Z)V
    .locals 4
    .param p1, "finalized"    # Z

    .line 88
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 92
    :cond_0
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 95
    :cond_1
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 96
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    invoke-static {v0, v1}, Landroid/view/InputEventSender;->nativeDispose(J)V

    .line 97
    iput-wide v2, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    .line 99
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    .line 100
    iput-object v0, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    .line 101
    return-void
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/InputEventSender;",
            ">;",
            "Landroid/view/InputChannel;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native nativeSendKeyEvent(JILandroid/view/KeyEvent;)Z
.end method

.method private static native nativeSendMotionEvent(JILandroid/view/MotionEvent;)Z
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/InputEventSender;->dispose(Z)V

    .line 85
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 74
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/InputEventSender;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 77
    nop

    .line 78
    return-void

    .line 76
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public onInputEventFinished(IZ)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "handled"    # Z

    .line 110
    return-void
.end method

.method public final sendInputEvent(ILandroid/view/InputEvent;)Z
    .locals 4
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 122
    if-eqz p2, :cond_2

    .line 125
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 126
    const-string v0, "InputEventSender"

    const-string v1, "Attempted to send an input event but the input event sender has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_0
    instance-of v0, p2, Landroid/view/KeyEvent;

    if-eqz v0, :cond_1

    .line 132
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    move-object v2, p2

    check-cast v2, Landroid/view/KeyEvent;

    invoke-static {v0, v1, p1, v2}, Landroid/view/InputEventSender;->nativeSendKeyEvent(JILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 134
    :cond_1
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    move-object v2, p2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-static {v0, v1, p1, v2}, Landroid/view/InputEventSender;->nativeSendMotionEvent(JILandroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 123
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
