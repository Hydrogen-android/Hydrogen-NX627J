.class public final synthetic Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$CSjtYSyNiQ_mC6mOyQ4Gpky-lqY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$CSjtYSyNiQ_mC6mOyQ4Gpky-lqY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$CSjtYSyNiQ_mC6mOyQ4Gpky-lqY;

    invoke-direct {v0}, Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$CSjtYSyNiQ_mC6mOyQ4Gpky-lqY;-><init>()V

    sput-object v0, Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$CSjtYSyNiQ_mC6mOyQ4Gpky-lqY;->INSTANCE:Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$CSjtYSyNiQ_mC6mOyQ4Gpky-lqY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wifi/ScanDetail;

    invoke-static {p1}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->lambda$dump$0(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/ScanResult;

    move-result-object p1

    return-object p1
.end method
