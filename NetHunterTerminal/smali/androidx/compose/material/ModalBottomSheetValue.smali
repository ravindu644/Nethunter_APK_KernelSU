.class public final enum Landroidx/compose/material/ModalBottomSheetValue;
.super Ljava/lang/Enum;
.source "ModalBottomSheet.kt"


# annotations
.annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/material/ModalBottomSheetValue;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/material/ModalBottomSheetValue;",
        "",
        "(Ljava/lang/String;I)V",
        "Hidden",
        "Expanded",
        "HalfExpanded",
        "material_release"
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
.field private static final synthetic $VALUES:[Landroidx/compose/material/ModalBottomSheetValue;

.field public static final enum Expanded:Landroidx/compose/material/ModalBottomSheetValue;

.field public static final enum HalfExpanded:Landroidx/compose/material/ModalBottomSheetValue;

.field public static final enum Hidden:Landroidx/compose/material/ModalBottomSheetValue;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/material/ModalBottomSheetValue;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/compose/material/ModalBottomSheetValue;

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/material/ModalBottomSheetValue;->Hidden:Landroidx/compose/material/ModalBottomSheetValue;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/compose/material/ModalBottomSheetValue;->Expanded:Landroidx/compose/material/ModalBottomSheetValue;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/compose/material/ModalBottomSheetValue;->HalfExpanded:Landroidx/compose/material/ModalBottomSheetValue;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/material/ModalBottomSheetValue;

    const-string v1, "Hidden"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/ModalBottomSheetValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material/ModalBottomSheetValue;->Hidden:Landroidx/compose/material/ModalBottomSheetValue;

    new-instance v0, Landroidx/compose/material/ModalBottomSheetValue;

    const-string v1, "Expanded"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/ModalBottomSheetValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material/ModalBottomSheetValue;->Expanded:Landroidx/compose/material/ModalBottomSheetValue;

    new-instance v0, Landroidx/compose/material/ModalBottomSheetValue;

    const-string v1, "HalfExpanded"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/ModalBottomSheetValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material/ModalBottomSheetValue;->HalfExpanded:Landroidx/compose/material/ModalBottomSheetValue;

    invoke-static {}, Landroidx/compose/material/ModalBottomSheetValue;->$values()[Landroidx/compose/material/ModalBottomSheetValue;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/ModalBottomSheetValue;->$VALUES:[Landroidx/compose/material/ModalBottomSheetValue;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/material/ModalBottomSheetValue;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroidx/compose/material/ModalBottomSheetValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/ModalBottomSheetValue;

    return-object p0
.end method

.method public static values()[Landroidx/compose/material/ModalBottomSheetValue;
    .locals 2

    sget-object v0, Landroidx/compose/material/ModalBottomSheetValue;->$VALUES:[Landroidx/compose/material/ModalBottomSheetValue;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/material/ModalBottomSheetValue;

    return-object v0
.end method
