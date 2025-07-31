.class public final Lcom/offsec/nethunter/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.offsec.nethunter"

.field public static final BUILD_NAME:Ljava/lang/String; = "null"

.field public static final BUILD_TIME:Ljava/util/Date;

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final VERSION_CODE:I = 0x78b35ac4

.field public static final VERSION_NAME:Ljava/lang/String; = "2025.2"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x19707f45dddL

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/offsec/nethunter/BuildConfig;->BUILD_TIME:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
