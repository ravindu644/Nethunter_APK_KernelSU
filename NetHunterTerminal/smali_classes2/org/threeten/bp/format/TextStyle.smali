.class public final enum Lorg/threeten/bp/format/TextStyle;
.super Ljava/lang/Enum;
.source "TextStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/format/TextStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/format/TextStyle;

.field public static final enum FULL:Lorg/threeten/bp/format/TextStyle;

.field public static final enum FULL_STANDALONE:Lorg/threeten/bp/format/TextStyle;

.field public static final enum NARROW:Lorg/threeten/bp/format/TextStyle;

.field public static final enum NARROW_STANDALONE:Lorg/threeten/bp/format/TextStyle;

.field public static final enum SHORT:Lorg/threeten/bp/format/TextStyle;

.field public static final enum SHORT_STANDALONE:Lorg/threeten/bp/format/TextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/threeten/bp/format/TextStyle;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/TextStyle;->FULL:Lorg/threeten/bp/format/TextStyle;

    new-instance v1, Lorg/threeten/bp/format/TextStyle;

    const-string v3, "FULL_STANDALONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/threeten/bp/format/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/threeten/bp/format/TextStyle;->FULL_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    new-instance v3, Lorg/threeten/bp/format/TextStyle;

    const-string v5, "SHORT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/threeten/bp/format/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/threeten/bp/format/TextStyle;->SHORT:Lorg/threeten/bp/format/TextStyle;

    new-instance v5, Lorg/threeten/bp/format/TextStyle;

    const-string v7, "SHORT_STANDALONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/threeten/bp/format/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/threeten/bp/format/TextStyle;->SHORT_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    new-instance v7, Lorg/threeten/bp/format/TextStyle;

    const-string v9, "NARROW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/threeten/bp/format/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/threeten/bp/format/TextStyle;->NARROW:Lorg/threeten/bp/format/TextStyle;

    new-instance v9, Lorg/threeten/bp/format/TextStyle;

    const-string v11, "NARROW_STANDALONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/threeten/bp/format/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/threeten/bp/format/TextStyle;->NARROW_STANDALONE:Lorg/threeten/bp/format/TextStyle;

    const/4 v11, 0x6

    new-array v11, v11, [Lorg/threeten/bp/format/TextStyle;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lorg/threeten/bp/format/TextStyle;->$VALUES:[Lorg/threeten/bp/format/TextStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/format/TextStyle;
    .locals 1

    const-class v0, Lorg/threeten/bp/format/TextStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/threeten/bp/format/TextStyle;

    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/format/TextStyle;
    .locals 1

    sget-object v0, Lorg/threeten/bp/format/TextStyle;->$VALUES:[Lorg/threeten/bp/format/TextStyle;

    invoke-virtual {v0}, [Lorg/threeten/bp/format/TextStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/format/TextStyle;

    return-object v0
.end method


# virtual methods
.method public asNormal()Lorg/threeten/bp/format/TextStyle;
    .locals 2

    invoke-static {}, Lorg/threeten/bp/format/TextStyle;->values()[Lorg/threeten/bp/format/TextStyle;

    move-result-object v0

    invoke-virtual {p0}, Lorg/threeten/bp/format/TextStyle;->ordinal()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public asStandalone()Lorg/threeten/bp/format/TextStyle;
    .locals 2

    invoke-static {}, Lorg/threeten/bp/format/TextStyle;->values()[Lorg/threeten/bp/format/TextStyle;

    move-result-object v0

    invoke-virtual {p0}, Lorg/threeten/bp/format/TextStyle;->ordinal()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isStandalone()Z
    .locals 2

    invoke-virtual {p0}, Lorg/threeten/bp/format/TextStyle;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
