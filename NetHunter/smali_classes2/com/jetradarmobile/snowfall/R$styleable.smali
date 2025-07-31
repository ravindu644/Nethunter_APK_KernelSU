.class public final Lcom/jetradarmobile/snowfall/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jetradarmobile/snowfall/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SnowfallView:[I

.field public static final SnowfallView_snowflakeAlphaMax:I = 0x0

.field public static final SnowfallView_snowflakeAlphaMin:I = 0x1

.field public static final SnowfallView_snowflakeAngleMax:I = 0x2

.field public static final SnowfallView_snowflakeImage:I = 0x3

.field public static final SnowfallView_snowflakeSizeMax:I = 0x4

.field public static final SnowfallView_snowflakeSizeMin:I = 0x5

.field public static final SnowfallView_snowflakeSpeedMax:I = 0x6

.field public static final SnowfallView_snowflakeSpeedMin:I = 0x7

.field public static final SnowfallView_snowflakesAlreadyFalling:I = 0x8

.field public static final SnowfallView_snowflakesFadingEnabled:I = 0x9

.field public static final SnowfallView_snowflakesNum:I = 0xa


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView:[I

    return-void

    :array_0
    .array-data 4
        0x7f04039e
        0x7f04039f
        0x7f0403a0
        0x7f0403a1
        0x7f0403a2
        0x7f0403a3
        0x7f0403a4
        0x7f0403a5
        0x7f0403a6
        0x7f0403a7
        0x7f0403a8
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
