.class final Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SwipeToDismiss.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SwipeToDismissKt;->SwipeToDismiss(Landroidx/compose/material/DismissState;Landroidx/compose/ui/Modifier;Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/material/DismissDirection;",
        "Landroidx/compose/material/FractionalThreshold;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$1;

    invoke-direct {v0}, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$1;-><init>()V

    sput-object v0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$1;->INSTANCE:Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/material/DismissDirection;)Landroidx/compose/material/FractionalThreshold;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/compose/material/FractionalThreshold;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p1, v0}, Landroidx/compose/material/FractionalThreshold;-><init>(F)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/material/DismissDirection;

    invoke-virtual {p0, p1}, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$1;->invoke(Landroidx/compose/material/DismissDirection;)Landroidx/compose/material/FractionalThreshold;

    move-result-object p1

    return-object p1
.end method
