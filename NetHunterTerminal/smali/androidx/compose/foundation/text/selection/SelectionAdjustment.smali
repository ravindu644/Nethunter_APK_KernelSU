.class public final enum Landroidx/compose/foundation/text/selection/SelectionAdjustment;
.super Ljava/lang/Enum;
.source "SelectionRegistrar.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "",
        "(Ljava/lang/String;I)V",
        "NONE",
        "CHARACTER",
        "WORD",
        "PARAGRAPH",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/foundation/text/selection/SelectionAdjustment;

.field public static final enum CHARACTER:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

.field public static final enum NONE:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

.field public static final enum PARAGRAPH:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

.field public static final enum WORD:Landroidx/compose/foundation/text/selection/SelectionAdjustment;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->NONE:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->CHARACTER:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->WORD:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->PARAGRAPH:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionAdjustment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->NONE:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    const-string v1, "CHARACTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionAdjustment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->CHARACTER:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    const-string v1, "WORD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionAdjustment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->WORD:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    const-string v1, "PARAGRAPH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionAdjustment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->PARAGRAPH:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->$values()[Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->$VALUES:[Landroidx/compose/foundation/text/selection/SelectionAdjustment;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    return-object p0
.end method

.method public static values()[Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .locals 2

    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->$VALUES:[Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    return-object v0
.end method
