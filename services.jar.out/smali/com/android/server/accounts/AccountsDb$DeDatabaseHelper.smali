.class Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AccountsDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountsDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeDatabaseHelper"
.end annotation


# instance fields
.field private volatile mCeAttached:Z

.field private final mUserId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "deDatabaseName"    # Ljava/lang/String;

    .line 506
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 507
    iput p2, p0, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mUserId:I

    .line 508
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/android/server/accounts/AccountsDb$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/android/server/accounts/AccountsDb$1;

    .line 500
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 500
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mCeAttached:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;
    .param p1, "x1"    # Z

    .line 500
    iput-boolean p1, p0, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mCeAttached:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;
    .param p1, "x1"    # Ljava/io/File;

    .line 500
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->migratePreNDbToDe(Ljava/io/File;)V

    return-void
.end method

.method private createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 547
    const-string v0, " CREATE TRIGGER accountsDelete DELETE ON accounts BEGIN   DELETE FROM grants     WHERE accounts_id=OLD._id ; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method private createAccountsDeletionVisibilityCleanupTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 585
    const-string v0, " CREATE TRIGGER accountsDeleteVisibility DELETE ON accounts BEGIN   DELETE FROM visibility     WHERE accounts_id=OLD._id ; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method private createAccountsVisibilityTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 565
    const-string v0, "CREATE TABLE visibility ( accounts_id INTEGER NOT NULL, _package TEXT NOT NULL, value INTEGER, PRIMARY KEY(accounts_id,_package))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method static createDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DATETIME,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX timestamp_index ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method private createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 556
    const-string v0, "CREATE TABLE grants (  accounts_id INTEGER NOT NULL, auth_token_type STRING NOT NULL,  uid INTEGER NOT NULL,  UNIQUE (accounts_id,auth_token_type,uid))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method private createSharedAccountsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 539
    const-string v0, "CREATE TABLE shared_accounts ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, UNIQUE(name,type))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method private migratePreNDbToDe(Ljava/io/File;)V
    .locals 3
    .param p1, "preNDbFile"    # Ljava/io/File;

    .line 640
    const-string v0, "AccountsDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migrate pre-N database to DE preNDbFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 642
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTACH DATABASE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' AS preNDb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 645
    const-string v1, "INSERT INTO accounts(_id,name,type, previous_name, last_password_entry_time_millis_epoch) SELECT _id,name,type, previous_name, last_password_entry_time_millis_epoch FROM preNDb.accounts"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 653
    const-string v1, "INSERT INTO shared_accounts(_id,name,type) SELECT _id,name,type FROM preNDb.shared_accounts"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM preNDb."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-static {}, Lcom/android/server/accounts/AccountsDb;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 667
    const-string v1, "INSERT INTO grants(accounts_id,auth_token_type,uid) SELECT accounts_id,auth_token_type,uid FROM preNDb.grants"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 673
    const-string v1, "INSERT INTO meta(key,value) SELECT key,value FROM preNDb.meta"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 677
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 679
    const-string v1, "DETACH DATABASE preNDb"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 680
    return-void
.end method


# virtual methods
.method public getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 619
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mCeAttached:Z

    if-nez v0, :cond_0

    .line 620
    const-string v0, "AccountsDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReadableDatabaseUserIsUnlocked called while user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is still locked. CE database is not yet available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 627
    iget-boolean v0, p0, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mCeAttached:Z

    if-nez v0, :cond_0

    .line 628
    const-string v0, "AccountsDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWritableDatabaseUserIsUnlocked called while user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is still locked. CE database is not yet available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 517
    const-string v0, "AccountsDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating DE database for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v0, "CREATE TABLE accounts ( _id INTEGER PRIMARY KEY, name TEXT NOT NULL, type TEXT NOT NULL, previous_name TEXT, last_password_entry_time_millis_epoch INTEGER DEFAULT 0, UNIQUE(name,type))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 526
    const-string v0, "CREATE TABLE meta ( key TEXT PRIMARY KEY NOT NULL, value TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 530
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 531
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->createSharedAccountsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 532
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 533
    invoke-static {p1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->createDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 534
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->createAccountsVisibilityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 535
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->createAccountsDeletionVisibilityCleanupTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 536
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 636
    const-string v0, "AccountsDb"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountsDb"

    const-string/jumbo v1, "opened database accounts_de.db"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 596
    const-string v0, "AccountsDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upgrade from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 599
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->createAccountsVisibilityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 600
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->createAccountsDeletionVisibilityCleanupTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 601
    const/4 p2, 0x3

    .line 604
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 606
    const-string v0, "DROP TRIGGER IF EXISTS accountsDeleteVisibility"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 607
    const-string v0, "DROP TABLE IF EXISTS visibility"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 608
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->createAccountsVisibilityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 609
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->createAccountsDeletionVisibilityCleanupTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 610
    add-int/lit8 p2, p2, 0x1

    .line 613
    :cond_1
    if-eq p2, p3, :cond_2

    .line 614
    const-string v0, "AccountsDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to upgrade version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_2
    return-void
.end method