.class public Landroid/text/style/TtsSpan$CardinalBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardinalBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$CardinalBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 683
    const-string v0, "android.type.cardinal"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "number"    # J

    .line 693
    invoke-direct {p0}, Landroid/text/style/TtsSpan$CardinalBuilder;-><init>()V

    .line 694
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TtsSpan$CardinalBuilder;->setNumber(J)Landroid/text/style/TtsSpan$CardinalBuilder;

    .line 695
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .line 704
    invoke-direct {p0}, Landroid/text/style/TtsSpan$CardinalBuilder;-><init>()V

    .line 705
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$CardinalBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$CardinalBuilder;

    .line 706
    return-void
.end method


# virtual methods
.method public setNumber(J)Landroid/text/style/TtsSpan$CardinalBuilder;
    .locals 1
    .param p1, "number"    # J

    .line 715
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$CardinalBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$CardinalBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$CardinalBuilder;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 725
    const-string v0, "android.arg.number"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$CardinalBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$CardinalBuilder;

    return-object v0
.end method
