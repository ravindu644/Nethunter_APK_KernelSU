.class final Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Swipeable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.material.SwipeableKt$PreUpPostDownNestedScrollConnection$1"
    f = "Swipeable.kt"
    i = {
        0x0
    }
    l = {
        0x366
    }
    m = "onPreFling-QWom1Mo"
    n = {
        "available"
    }
    s = {
        "J$0"
    }
.end annotation


# instance fields
.field J$0:J

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;


# direct methods
.method constructor <init>(Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->this$0:Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->label:I

    iget-object p1, p0, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1$onPreFling$1;->this$0:Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;

    const-wide/16 v0, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/compose/material/SwipeableKt$PreUpPostDownNestedScrollConnection$1;->onPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
