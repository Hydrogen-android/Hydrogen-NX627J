.class Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;
.super Landroid/location/IGnssNavigationMessageListener$Stub;
.source "GnssNavigationMessageCallbackTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssNavigationMessageCallbackTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/GnssNavigationMessageCallbackTransport;


# direct methods
.method private constructor <init>(Landroid/location/GnssNavigationMessageCallbackTransport;)V
    .locals 0

    .line 52
    iput-object p1, p0, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;->this$0:Landroid/location/GnssNavigationMessageCallbackTransport;

    invoke-direct {p0}, Landroid/location/IGnssNavigationMessageListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/GnssNavigationMessageCallbackTransport;Landroid/location/GnssNavigationMessageCallbackTransport$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/location/GnssNavigationMessageCallbackTransport;
    .param p2, "x1"    # Landroid/location/GnssNavigationMessageCallbackTransport$1;

    .line 52
    invoke-direct {p0, p1}, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;-><init>(Landroid/location/GnssNavigationMessageCallbackTransport;)V

    return-void
.end method


# virtual methods
.method public onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V
    .locals 2
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .line 55
    new-instance v0, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport$1;-><init>(Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;Landroid/location/GnssNavigationMessage;)V

    .line 63
    .local v0, "operation":Landroid/location/LocalListenerHelper$ListenerOperation;, "Landroid/location/LocalListenerHelper$ListenerOperation<Landroid/location/GnssNavigationMessage$Callback;>;"
    iget-object v1, p0, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;->this$0:Landroid/location/GnssNavigationMessageCallbackTransport;

    invoke-virtual {v1, v0}, Landroid/location/GnssNavigationMessageCallbackTransport;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    .line 64
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2
    .param p1, "status"    # I

    .line 68
    new-instance v0, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport$2;

    invoke-direct {v0, p0, p1}, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport$2;-><init>(Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;I)V

    .line 76
    .local v0, "operation":Landroid/location/LocalListenerHelper$ListenerOperation;, "Landroid/location/LocalListenerHelper$ListenerOperation<Landroid/location/GnssNavigationMessage$Callback;>;"
    iget-object v1, p0, Landroid/location/GnssNavigationMessageCallbackTransport$ListenerTransport;->this$0:Landroid/location/GnssNavigationMessageCallbackTransport;

    invoke-virtual {v1, v0}, Landroid/location/GnssNavigationMessageCallbackTransport;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    .line 77
    return-void
.end method
