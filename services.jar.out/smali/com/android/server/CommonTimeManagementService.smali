.class Lcom/android/server/CommonTimeManagementService;
.super Landroid/os/Binder;
.source "CommonTimeManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
    }
.end annotation


# static fields
.field private static final ALLOW_WIFI:Z

.field private static final ALLOW_WIFI_PROP:Ljava/lang/String; = "ro.common_time.allow_wifi"

.field private static final AUTO_DISABLE:Z

.field private static final AUTO_DISABLE_PROP:Ljava/lang/String; = "ro.common_time.auto_disable"

.field private static final BASE_SERVER_PRIO:B

.field private static final IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

.field private static final NATIVE_SERVICE_RECONNECT_TIMEOUT:I = 0x1388

.field private static final NO_INTERFACE_TIMEOUT:I

.field private static final NO_INTERFACE_TIMEOUT_PROP:Ljava/lang/String; = "ro.common_time.no_iface_timeout"

.field private static final SERVER_PRIO_PROP:Ljava/lang/String; = "ro.common_time.server_prio"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCTConfig:Landroid/os/CommonTimeConfig;

.field private mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

.field private mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurIface:Ljava/lang/String;

.field private mDetectedAtStartup:Z

.field private mEffectivePrio:B

.field private mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mLock:Ljava/lang/Object;

.field private mNetMgr:Landroid/os/INetworkManagementService;

.field private mNoInterfaceHandler:Landroid/os/Handler;

.field private mNoInterfaceRunnable:Ljava/lang/Runnable;

.field private mReconnectHandler:Landroid/os/Handler;

.field private mReconnectRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 52
    const-class v0, Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "ro.common_time.auto_disable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    .line 67
    const-string/jumbo v0, "ro.common_time.allow_wifi"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    .line 68
    const-string/jumbo v0, "ro.common_time.server_prio"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, "tmp":I
    const-string/jumbo v3, "ro.common_time.no_iface_timeout"

    const v4, 0xea60

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    .line 71
    if-ge v0, v1, :cond_2

    .line 72
    sput-byte v1, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    goto :goto_2

    .line 74
    :cond_2
    const/16 v3, 0x1e

    if-le v0, v3, :cond_3

    .line 75
    sput-byte v3, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    goto :goto_2

    .line 77
    :cond_3
    int-to-byte v3, v0

    sput-byte v3, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    .line 79
    :goto_2
    sget-boolean v3, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    .line 80
    new-array v3, v4, [Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    new-instance v5, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const-string/jumbo v6, "wlan"

    invoke-direct {v5, v6, v1}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    aput-object v5, v3, v2

    new-instance v2, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const-string v5, "eth"

    invoke-direct {v2, v5, v4}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    aput-object v2, v3, v1

    sput-object v3, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    goto :goto_3

    .line 85
    :cond_4
    new-array v1, v1, [Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    new-instance v3, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const-string v5, "eth"

    invoke-direct {v3, v5, v4}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    .line 89
    .end local v0    # "tmp":I
    :goto_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    .line 102
    sget-byte v0, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    iput-byte v0, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    .line 107
    new-instance v0, Lcom/android/server/CommonTimeManagementService$1;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$1;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    .line 126
    new-instance v0, Lcom/android/server/CommonTimeManagementService$2;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$2;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Lcom/android/server/-$$Lambda$CommonTimeManagementService$2pDf0xdhqutmGymQBZY0XdP5zLg;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$CommonTimeManagementService$2pDf0xdhqutmGymQBZY0XdP5zLg;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    .line 136
    new-instance v0, Lcom/android/server/-$$Lambda$CommonTimeManagementService$o7NVT2DAE8gGyUPocEDzMJMp3rY;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$CommonTimeManagementService$o7NVT2DAE8gGyUPocEDzMJMp3rY;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/android/server/-$$Lambda$CommonTimeManagementService$G4hdVfmKjXahO1EZQGCi66JNtFI;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$CommonTimeManagementService$G4hdVfmKjXahO1EZQGCi66JNtFI;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    .line 144
    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/CommonTimeManagementService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/CommonTimeManagementService;

    .line 48
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V

    return-void
.end method

.method private cleanupTimeConfig()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    invoke-virtual {v0}, Landroid/os/CommonTimeConfig;->release()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    .line 221
    :cond_0
    return-void
.end method

.method private connectToTimeConfig()V
    .locals 4

    .line 227
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->cleanupTimeConfig()V

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :try_start_1
    new-instance v1, Landroid/os/CommonTimeConfig;

    invoke-direct {v1}, Landroid/os/CommonTimeConfig;-><init>()V

    iput-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    .line 231
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    invoke-virtual {v1, v2}, Landroid/os/CommonTimeConfig;->setServerDiedListener(Landroid/os/CommonTimeConfig$OnServerDiedListener;)V

    .line 232
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    invoke-virtual {v1}, Landroid/os/CommonTimeConfig;->getInterfaceBinding()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    sget-boolean v2, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    invoke-virtual {v1, v2}, Landroid/os/CommonTimeConfig;->setAutoDisable(Z)I

    .line 234
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-byte v2, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    invoke-virtual {v1, v2}, Landroid/os/CommonTimeConfig;->setMasterElectionPriority(B)I

    .line 235
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :try_start_2
    sget v0, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    if-ltz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 244
    goto :goto_0

    .line 235
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private handleNoInterfaceTimeout()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v1, "Timeout waiting for interface to come up.  Forcing networkless master mode."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v0, -0x7

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    invoke-virtual {v1}, Landroid/os/CommonTimeConfig;->forceNetworklessMasterMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    .line 262
    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/CommonTimeManagementService;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/CommonTimeManagementService;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->connectToTimeConfig()V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/CommonTimeManagementService;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->handleNoInterfaceTimeout()V

    return-void
.end method

.method private reevaluateServiceState()V
    .locals 13

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "bindIface":Ljava/lang/String;
    const/4 v1, -0x1

    .line 291
    .local v1, "bestScore":B
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "ifaceList":[Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 293
    array-length v4, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v5, v1

    move-object v1, v0

    move v0, v2

    .end local v0    # "bindIface":Ljava/lang/String;
    .local v1, "bindIface":Ljava/lang/String;
    .local v5, "bestScore":B
    :goto_0
    if-ge v0, v4, :cond_5

    :try_start_1
    aget-object v6, v3, v0

    .line 295
    .local v6, "iface":Ljava/lang/String;
    const/4 v7, -0x1

    .line 296
    .local v7, "thisScore":B
    sget-object v8, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    array-length v9, v8

    move v10, v2

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v11, v8, v10

    .line 297
    .local v11, "r":Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
    iget-object v12, v11, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mPrefix:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 298
    iget-byte v8, v11, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mScore:B

    move v7, v8

    .line 299
    goto :goto_2

    .line 296
    .end local v11    # "r":Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 303
    :cond_1
    :goto_2
    if-gt v7, v5, :cond_2

    .line 304
    goto :goto_3

    .line 306
    :cond_2
    iget-object v8, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    invoke-interface {v8, v6}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v8

    .line 307
    .local v8, "config":Landroid/net/InterfaceConfiguration;
    if-nez v8, :cond_3

    .line 308
    goto :goto_3

    .line 310
    :cond_3
    invoke-virtual {v8}, Landroid/net/InterfaceConfiguration;->isActive()Z

    move-result v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v9, :cond_4

    .line 311
    move-object v1, v6

    .line 312
    move v5, v7

    .line 293
    .end local v6    # "iface":Ljava/lang/String;
    .end local v7    # "thisScore":B
    .end local v8    # "config":Landroid/net/InterfaceConfiguration;
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v3    # "ifaceList":[Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 323
    :cond_5
    move-object v0, v1

    move v1, v5

    .end local v5    # "bestScore":B
    .restart local v0    # "bindIface":Ljava/lang/String;
    .local v1, "bestScore":B
    :cond_6
    goto :goto_5

    .line 317
    :catch_1
    move-exception v3

    move v5, v1

    move-object v1, v0

    move-object v0, v3

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    .local v1, "bindIface":Ljava/lang/String;
    .restart local v5    # "bestScore":B
    :goto_4
    const/4 v0, 0x0

    .line 325
    .end local v1    # "bindIface":Ljava/lang/String;
    .local v0, "bindIface":Ljava/lang/String;
    move v1, v5

    .end local v5    # "bestScore":B
    .local v1, "bestScore":B
    :goto_5
    const/4 v3, 0x1

    .line 326
    .local v3, "doRebind":Z
    iget-object v4, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 327
    const/4 v5, 0x1

    if-eqz v0, :cond_7

    :try_start_2
    iget-object v6, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-nez v6, :cond_7

    .line 328
    sget-object v6, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v7, "Binding common time service to %s."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    goto :goto_6

    .line 342
    :catchall_0
    move-exception v2

    goto/16 :goto_9

    .line 331
    :cond_7
    if-nez v0, :cond_8

    iget-object v6, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 332
    sget-object v2, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v5, "Unbinding common time service."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    goto :goto_6

    .line 335
    :cond_8
    if-eqz v0, :cond_9

    iget-object v6, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 336
    sget-object v6, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v7, "Switching common time service binding from %s to %s."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    aput-object v9, v8, v2

    aput-object v0, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    goto :goto_6

    .line 340
    :cond_9
    const/4 v2, 0x0

    .line 342
    .end local v3    # "doRebind":Z
    .local v2, "doRebind":Z
    move v3, v2

    .end local v2    # "doRebind":Z
    .restart local v3    # "doRebind":Z
    :goto_6
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-eqz v2, :cond_d

    .line 345
    if-lez v1, :cond_a

    .line 346
    sget-byte v2, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    mul-int/2addr v2, v1

    int-to-byte v2, v2

    goto :goto_7

    .line 347
    :cond_a
    sget-byte v2, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    .line 348
    .local v2, "newPrio":B
    :goto_7
    iget-byte v4, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    if-eq v2, v4, :cond_b

    .line 349
    iput-byte v2, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    .line 350
    iget-object v4, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-byte v5, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    invoke-virtual {v4, v5}, Landroid/os/CommonTimeConfig;->setMasterElectionPriority(B)I

    .line 353
    :cond_b
    iget-object v4, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-object v5, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/CommonTimeConfig;->setNetworkBinding(Ljava/lang/String;)I

    move-result v4

    .line 354
    .local v4, "res":I
    if-eqz v4, :cond_c

    .line 355
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    goto :goto_8

    .line 357
    :cond_c
    sget v5, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    if-ltz v5, :cond_d

    .line 358
    iget-object v5, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 359
    iget-object v5, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-nez v5, :cond_d

    .line 360
    iget-object v5, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    sget v7, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    .end local v2    # "newPrio":B
    .end local v4    # "res":I
    :cond_d
    :goto_8
    return-void

    .line 342
    :goto_9
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private scheduleTimeConfigReconnect()V
    .locals 5

    .line 248
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->cleanupTimeConfig()V

    .line 249
    sget-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v1, "Native service died, will reconnect in %d mSec"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 250
    const/16 v3, 0x1388

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 249
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    if-nez v0, :cond_1

    .line 180
    const-string v0, "Native Common Time service was not detected at startup.  Service is unavailable"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    const-string v1, "Current Common Time Management Service Config:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    const-string v1, "  Native service     : %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 188
    iget-object v4, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-nez v4, :cond_2

    const-string/jumbo v4, "reconnecting"

    goto :goto_0

    .line 189
    :cond_2
    const-string v4, "alive"

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 187
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    const-string v1, "  Bound interface    : %s"

    new-array v3, v2, [Ljava/lang/Object;

    .line 191
    iget-object v4, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string/jumbo v4, "unbound"

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    :goto_1
    aput-object v4, v3, v5

    .line 190
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    const-string v1, "  Allow WiFi         : %s"

    new-array v3, v2, [Ljava/lang/Object;

    sget-boolean v4, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "yes"

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "no"

    :goto_2
    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    const-string v1, "  Allow Auto Disable : %s"

    new-array v3, v2, [Ljava/lang/Object;

    sget-boolean v4, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "yes"

    goto :goto_3

    :cond_5
    const-string/jumbo v4, "no"

    :goto_3
    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    const-string v1, "  Server Priority    : %d"

    new-array v3, v2, [Ljava/lang/Object;

    iget-byte v4, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    const-string v1, "  No iface timeout   : %d"

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method systemRunning()V
    .locals 4

    .line 148
    const-string v0, "common_time.config"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    sget-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v1, "No common time service detected on this platform.  Common time services will be unavailable."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    .line 156
    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 157
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    :catch_0
    move-exception v1

    .line 167
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->connectToTimeConfig()V

    .line 173
    return-void
.end method
