.class final Landroid/app/Activity$ManagedCursor;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ManagedCursor"
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private mReleased:Z

.field private mUpdated:Z


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    iput-object p1, p0, Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;

    .line 846
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    .line 847
    iput-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    .line 848
    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity$ManagedCursor;

    .line 843
    iget-object v0, p0, Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/Activity$ManagedCursor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity$ManagedCursor;

    .line 843
    iget-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    return v0
.end method

.method static synthetic access$202(Landroid/app/Activity$ManagedCursor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity$ManagedCursor;
    .param p1, "x1"    # Z

    .line 843
    iput-boolean p1, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    return p1
.end method

.method static synthetic access$300(Landroid/app/Activity$ManagedCursor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity$ManagedCursor;

    .line 843
    iget-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    return v0
.end method

.method static synthetic access$302(Landroid/app/Activity$ManagedCursor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity$ManagedCursor;
    .param p1, "x1"    # Z

    .line 843
    iput-boolean p1, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    return p1
.end method
