.class public Landroid/net/netlink/NetlinkSocket;
.super Ljava/lang/Object;
.source "NetlinkSocket.java"


# static fields
.field public static final DEFAULT_RECV_BUFSIZE:I = 0x2000

.field public static final SOCKET_RECV_BUFSIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "NetlinkSocket"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkTimeout(J)V
    .locals 2
    .param p0, "timeoutMs"    # J

    .line 114
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 117
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative timeouts not permitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static connectToKernel(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 110
    new-instance v0, Landroid/system/NetlinkSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    invoke-static {p0, v0}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 111
    return-void
.end method

.method public static forProto(I)Ljava/io/FileDescriptor;
    .locals 4
    .param p0, "nlProto"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 104
    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    invoke-static {v0, v1, p0}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 105
    .local v0, "fd":Ljava/io/FileDescriptor;
    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_RCVBUF:I

    const/high16 v3, 0x10000

    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 106
    return-object v0
.end method

.method public static recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bufsize"    # I
    .param p2, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 127
    invoke-static {p2, p3}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    .line 129
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v1, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p2, p3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 131
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 132
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {p0, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 133
    .local v1, "length":I
    if-ne v1, p1, :cond_0

    .line 134
    const-string v2, "NetlinkSocket"

    const-string/jumbo v3, "maximum read"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 137
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 138
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 139
    return-object v0
.end method

.method public static sendMessage(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 151
    invoke-static {p4, p5}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    .line 152
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v1, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p4, p5}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 153
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public static sendOneShotKernelMessage(I[B)V
    .locals 10
    .param p0, "nlProto"    # I
    .param p1, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 59
    const-string v0, "Error in NetlinkSocket.sendOneShotKernelMessage"

    .line 60
    .local v0, "errPrefix":Ljava/lang/String;
    const-wide/16 v1, 0x12c

    .line 62
    .local v1, "IO_TIMEOUT":J
    invoke-static {p0}, Landroid/net/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v3

    .line 65
    .local v3, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    invoke-static {v3}, Landroid/net/netlink/NetlinkSocket;->connectToKernel(Ljava/io/FileDescriptor;)V

    .line 66
    const/4 v6, 0x0

    array-length v7, p1

    const-wide/16 v8, 0x12c

    move-object v4, v3

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Landroid/net/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    .line 67
    const/16 v4, 0x2000

    const-wide/16 v5, 0x12c

    invoke-static {v3, v4, v5, v6}, Landroid/net/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 69
    .local v4, "bytes":Ljava/nio/ByteBuffer;
    invoke-static {v4}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v5

    .line 70
    .local v5, "response":Landroid/net/netlink/NetlinkMessage;
    if-eqz v5, :cond_1

    instance-of v6, v5, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Landroid/net/netlink/NetlinkErrorMessage;

    .line 71
    invoke-virtual {v6}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 72
    move-object v6, v5

    check-cast v6, Landroid/net/netlink/NetlinkErrorMessage;

    invoke-virtual {v6}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v6

    iget v6, v6, Landroid/net/netlink/StructNlMsgErr;->error:I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .local v6, "errno":I
    if-nez v6, :cond_0

    .line 81
    .end local v6    # "errno":I
    nop

    .line 99
    .end local v4    # "bytes":Ljava/nio/ByteBuffer;
    .end local v5    # "response":Landroid/net/netlink/NetlinkMessage;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 100
    nop

    .line 101
    return-void

    .line 77
    .restart local v4    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v5    # "response":Landroid/net/netlink/NetlinkMessage;
    .restart local v6    # "errno":I
    :cond_0
    :try_start_1
    const-string v7, "NetlinkSocket"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in NetlinkSocket.sendOneShotKernelMessage, errmsg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v7, Landroid/system/ErrnoException;

    invoke-virtual {v5}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 83
    .end local v6    # "errno":I
    :cond_1
    if-nez v5, :cond_2

    .line 84
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "raw bytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "errmsg":Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v6    # "errmsg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    .restart local v6    # "errmsg":Ljava/lang/String;
    :goto_0
    const-string v7, "NetlinkSocket"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in NetlinkSocket.sendOneShotKernelMessage, errmsg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v7, Landroid/system/ErrnoException;

    sget v8, Landroid/system/OsConstants;->EPROTO:I

    invoke-direct {v7, v6, v8}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v7
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .end local v4    # "bytes":Ljava/nio/ByteBuffer;
    .end local v5    # "response":Landroid/net/netlink/NetlinkMessage;
    .end local v6    # "errmsg":Ljava/lang/String;
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 95
    :catch_0
    move-exception v4

    .line 96
    .local v4, "e":Ljava/net/SocketException;
    :try_start_2
    const-string v5, "NetlinkSocket"

    const-string v6, "Error in NetlinkSocket.sendOneShotKernelMessage"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    new-instance v5, Landroid/system/ErrnoException;

    const-string v6, "Error in NetlinkSocket.sendOneShotKernelMessage"

    sget v7, Landroid/system/OsConstants;->EIO:I

    invoke-direct {v5, v6, v7, v4}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v5

    .line 92
    .end local v4    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v4

    .line 93
    .local v4, "e":Ljava/io/InterruptedIOException;
    const-string v5, "NetlinkSocket"

    const-string v6, "Error in NetlinkSocket.sendOneShotKernelMessage"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    new-instance v5, Landroid/system/ErrnoException;

    const-string v6, "Error in NetlinkSocket.sendOneShotKernelMessage"

    sget v7, Landroid/system/OsConstants;->ETIMEDOUT:I

    invoke-direct {v5, v6, v7, v4}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .end local v4    # "e":Ljava/io/InterruptedIOException;
    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v4
.end method
