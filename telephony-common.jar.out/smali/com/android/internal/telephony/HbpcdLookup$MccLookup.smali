.class public Lcom/android/internal/telephony/HbpcdLookup$MccLookup;
.super Ljava/lang/Object;
.source "HbpcdLookup.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HbpcdLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MccLookup"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNTRY_CODE:Ljava/lang/String; = "Country_Code"

.field public static final COUNTRY_NAME:Ljava/lang/String; = "Country_Name"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "MCC ASC"

.field public static final GMT_DST_HIGH:Ljava/lang/String; = "GMT_DST_High"

.field public static final GMT_DST_LOW:Ljava/lang/String; = "GMT_DST_Low"

.field public static final GMT_OFFSET_HIGH:Ljava/lang/String; = "GMT_Offset_High"

.field public static final GMT_OFFSET_LOW:Ljava/lang/String; = "GMT_Offset_Low"

.field public static final MCC:Ljava/lang/String; = "MCC"

.field public static final NANPS:Ljava/lang/String; = "NANPS"

.field public static final NDD:Ljava/lang/String; = "NDD"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-string v0, "content://hbpcd_lookup/lookup"

    .line 60
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HbpcdLookup$MccLookup;->CONTENT_URI:Landroid/net/Uri;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
