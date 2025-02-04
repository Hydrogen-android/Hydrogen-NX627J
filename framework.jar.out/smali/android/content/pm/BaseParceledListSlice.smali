.class abstract Landroid/content/pm/BaseParceledListSlice;
.super Ljava/lang/Object;
.source "BaseParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MAX_IPC_SIZE:I = 0x10000

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mInlineCountLimit:I

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "ParceledListSlice"

    sput-object v0, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 17
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .local p0, "this":Landroid/content/pm/BaseParceledListSlice;, "Landroid/content/pm/BaseParceledListSlice<TT;>;"
    move-object/from16 v1, p0

    .line 60
    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const v0, 0x7fffffff

    iput v0, v1, Landroid/content/pm/BaseParceledListSlice;->mInlineCountLimit:I

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 62
    .local v3, "N":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    .line 63
    sget-boolean v0, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " items"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    if-gtz v3, :cond_1

    .line 65
    return-void

    .line 68
    :cond_1
    invoke-virtual/range {p0 .. p2}, Landroid/content/pm/BaseParceledListSlice;->readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v4

    .line 69
    .local v4, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    const/4 v0, 0x0

    .line 71
    .local v0, "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move-object v6, v0

    move v0, v5

    .line 72
    .local v0, "i":I
    .local v6, "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const/4 v7, 0x1

    if-ge v0, v3, :cond_5

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_2

    .line 74
    goto :goto_2

    .line 77
    :cond_2
    move-object/from16 v8, p1

    invoke-direct {v1, v4, v8, v2}, Landroid/content/pm/BaseParceledListSlice;->readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v9

    .line 78
    .local v9, "parcelable":Ljava/lang/Object;, "TT;"
    if-nez v6, :cond_3

    .line 79
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/content/pm/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 84
    :goto_1
    iget-object v10, v1, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-boolean v10, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    if-eqz v10, :cond_4

    sget-object v10, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Read inline #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    iget-object v13, v1, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v7

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 88
    .end local v9    # "parcelable":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 89
    :cond_5
    :goto_2
    move-object/from16 v8, p1

    if-lt v0, v3, :cond_6

    .line 90
    return-void

    .line 92
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    move v10, v0

    .line 93
    .end local v0    # "i":I
    .local v9, "retriever":Landroid/os/IBinder;
    .local v10, "i":I
    :goto_3
    if-ge v10, v3, :cond_a

    .line 94
    sget-boolean v0, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Reading more @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": retriever="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 96
    .local v11, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 97
    .local v12, "reply":Landroid/os/Parcel;
    invoke-virtual {v11, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    :try_start_0
    invoke-interface {v9, v7, v11, v12, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    nop

    .line 104
    :goto_4
    if-ge v10, v3, :cond_9

    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 105
    invoke-direct {v1, v4, v12, v2}, Landroid/content/pm/BaseParceledListSlice;->readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    .local v0, "parcelable":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/content/pm/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 108
    iget-object v13, v1, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-boolean v13, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    if-eqz v13, :cond_8

    sget-object v13, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Read extra #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    iget-object v5, v1, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 112
    .end local v0    # "parcelable":Ljava/lang/Object;, "TT;"
    nop

    .line 104
    const/4 v5, 0x0

    goto :goto_4

    .line 113
    :cond_9
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 115
    .end local v11    # "data":Landroid/os/Parcel;
    .end local v12    # "reply":Landroid/os/Parcel;
    nop

    .line 92
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 100
    .restart local v11    # "data":Landroid/os/Parcel;
    .restart local v12    # "reply":Landroid/os/Parcel;
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v5, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failure retrieving array; only received "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " of "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    return-void

    .line 116
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v11    # "data":Landroid/os/Parcel;
    .end local v12    # "reply":Landroid/os/Parcel;
    :cond_a
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice;, "Landroid/content/pm/BaseParceledListSlice<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const v0, 0x7fffffff

    iput v0, p0, Landroid/content/pm/BaseParceledListSlice;->mInlineCountLimit:I

    .line 56
    iput-object p1, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    .line 57
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 41
    sget-boolean v0, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/pm/BaseParceledListSlice;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/BaseParceledListSlice;

    .line 41
    iget-object v0, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 41
    invoke-static {p0, p1}, Landroid/content/pm/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method private readCreator(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 2
    .param p2, "p"    # Landroid/os/Parcel;
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable$Creator<",
            "*>;",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 119
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice;, "Landroid/content/pm/BaseParceledListSlice<TT;>;"
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    instance-of v0, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v0, :cond_0

    .line 120
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 122
    .local v0, "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    invoke-interface {v0, p2, p3}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 124
    .end local v0    # "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    :cond_0
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 128
    .local p0, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "actual":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t unparcel type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in list of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 136
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice;, "Landroid/content/pm/BaseParceledListSlice<TT;>;"
    iget-object v0, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    return-object v0
.end method

.method protected abstract readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation
.end method

.method public setInlineCountLimit(I)V
    .locals 0
    .param p1, "maxCount"    # I

    .line 144
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice;, "Landroid/content/pm/BaseParceledListSlice<TT;>;"
    iput p1, p0, Landroid/content/pm/BaseParceledListSlice;->mInlineCountLimit:I

    .line 145
    return-void
.end method

.method protected abstract writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation
.end method

.method protected abstract writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 154
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice;, "Landroid/content/pm/BaseParceledListSlice<TT;>;"
    iget-object v0, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 155
    .local v0, "N":I
    move v1, p2

    .line 156
    .local v1, "callFlags":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    sget-boolean v2, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    if-lez v0, :cond_4

    .line 159
    iget-object v2, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 160
    .local v2, "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Landroid/content/pm/BaseParceledListSlice;->writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V

    .line 161
    move v4, v3

    .line 162
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    iget v5, p0, Landroid/content/pm/BaseParceledListSlice;->mInlineCountLimit:I

    if-ge v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    const/high16 v6, 0x10000

    if-ge v5, v6, :cond_2

    .line 163
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v5, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 166
    .local v5, "parcelable":Ljava/lang/Object;, "TT;"
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/content/pm/BaseParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 167
    invoke-virtual {p0, v5, p1, v1}, Landroid/content/pm/BaseParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 169
    sget-boolean v6, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrote inline #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/content/pm/BaseParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 171
    .end local v5    # "parcelable":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 172
    :cond_2
    if-ge v4, v0, :cond_4

    .line 173
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    new-instance v3, Landroid/content/pm/BaseParceledListSlice$1;

    invoke-direct {v3, p0, v0, v2, v1}, Landroid/content/pm/BaseParceledListSlice$1;-><init>(Landroid/content/pm/BaseParceledListSlice;ILjava/lang/Class;I)V

    .line 200
    .local v3, "retriever":Landroid/os/Binder;
    sget-boolean v5, Landroid/content/pm/BaseParceledListSlice;->DEBUG:Z

    if-eqz v5, :cond_3

    sget-object v5, Landroid/content/pm/BaseParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Breaking @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": retriever="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 204
    .end local v2    # "listElementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "retriever":Landroid/os/Binder;
    .end local v4    # "i":I
    :cond_4
    return-void
.end method
