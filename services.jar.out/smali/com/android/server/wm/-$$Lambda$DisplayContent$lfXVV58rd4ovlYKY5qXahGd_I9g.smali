.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$lfXVV58rd4ovlYKY5qXahGd_I9g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$lfXVV58rd4ovlYKY5qXahGd_I9g;->f$0:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$lfXVV58rd4ovlYKY5qXahGd_I9g;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$onCheckStatusDrawPending$24(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
