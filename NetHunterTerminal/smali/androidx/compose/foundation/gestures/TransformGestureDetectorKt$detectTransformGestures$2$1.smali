.class final Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "TransformGestureDetector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransformGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformGestureDetector.kt\nandroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,261:1\n63#2,2:262\n28#2,6:264\n65#2:270\n28#2,6:271\n63#2,2:277\n28#2,6:279\n65#2:285\n*S KotlinDebug\n*F\n+ 1 TransformGestureDetector.kt\nandroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1\n*L\n66#1:262,2\n66#1:264,6\n66#1:270\n100#1:271,6\n107#1:277,2\n107#1:279,6\n107#1:285\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.TransformGestureDetectorKt$detectTransformGestures$2$1"
    f = "TransformGestureDetector.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x3f,
        0x41
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitPointerEventScope",
        "rotation",
        "zoom",
        "pan",
        "pastTouchSlop",
        "touchSlop",
        "lockedToPanZoom",
        "$this$awaitPointerEventScope",
        "rotation",
        "zoom",
        "pan",
        "pastTouchSlop",
        "touchSlop",
        "lockedToPanZoom"
    }
    s = {
        "L$0",
        "F$0",
        "F$1",
        "J$0",
        "I$0",
        "F$2",
        "I$1",
        "L$0",
        "F$0",
        "F$1",
        "J$0",
        "I$0",
        "F$2",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $onGesture:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $panZoomLock:Z

.field F$0:F

.field F$1:F

.field F$2:F

.field I$0:I

.field I$1:I

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZLkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->$panZoomLock:Z

    iput-object p2, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->$onGesture:Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;

    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->$panZoomLock:Z

    iget-object v2, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->$onGesture:Lkotlin/jvm/functions/Function4;

    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;-><init>(ZLkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->label:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$1:I

    iget v8, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$2:F

    iget v9, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$0:I

    iget-wide v10, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->J$0:J

    iget v12, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$1:F

    iget v13, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$0:F

    iget-object v14, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->L$0:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    move-object v15, v0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v2, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$1:I

    iget v8, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$2:F

    iget v9, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$0:I

    iget-wide v10, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->J$0:J

    iget v12, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$1:F

    iget v13, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$0:F

    iget-object v14, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->L$0:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->L$0:Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v10

    invoke-interface {v14}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    move-result v8

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object v14, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$0:F

    iput v3, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$1:F

    iput-wide v10, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->J$0:J

    iput v6, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$0:I

    iput v8, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$2:F

    iput v6, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$1:I

    iput v7, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->label:I

    invoke-static {v14, v6, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    :goto_0
    move-object v15, v0

    :goto_1
    move-object v3, v15

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v14, v15, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->L$0:Ljava/lang/Object;

    iput v13, v15, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$0:F

    iput v12, v15, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$1:F

    iput-wide v10, v15, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->J$0:J

    iput v9, v15, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$0:I

    iput v8, v15, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->F$2:F

    iput v2, v15, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->I$1:I

    iput v4, v15, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->label:I

    const/4 v4, 0x0

    invoke-static {v14, v4, v3, v7, v4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope$DefaultImpls;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    if-ltz v5, :cond_7

    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v6, v7, 0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {v7}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    if-le v6, v5, :cond_6

    goto :goto_4

    :cond_6
    move v7, v6

    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    :goto_4
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_14

    invoke-static {v3}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateZoom(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    move-result v5

    invoke-static {v3}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateRotation(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    move-result v6

    move-object/from16 p1, v1

    invoke-static {v3}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculatePan(Landroidx/compose/ui/input/pointer/PointerEvent;)J

    move-result-wide v0

    if-nez v9, :cond_b

    mul-float v12, v12, v5

    add-float/2addr v13, v6

    invoke-static {v10, v11, v0, v1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v10

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroidSize(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    move-result v20

    move/from16 v17, v2

    const/4 v7, 0x1

    int-to-float v2, v7

    sub-float/2addr v2, v12

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v2, v2, v20

    const v21, 0x40490fdb    # (float)Math.PI

    mul-float v21, v21, v13

    mul-float v21, v21, v20

    const/high16 v20, 0x43340000    # 180.0f

    div-float v21, v21, v20

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v20

    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v21

    cmpl-float v2, v2, v8

    if-gtz v2, :cond_9

    cmpl-float v2, v20, v8

    if-gtz v2, :cond_9

    cmpl-float v2, v21, v8

    if-lez v2, :cond_8

    goto :goto_6

    :cond_8
    move/from16 v2, v17

    goto :goto_8

    :cond_9
    :goto_6
    iget-boolean v2, v15, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->$panZoomLock:Z

    if-eqz v2, :cond_a

    cmpg-float v2, v20, v8

    if-gez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    :goto_7
    const/4 v9, 0x1

    goto :goto_8

    :cond_b
    move/from16 v17, v2

    const/4 v7, 0x1

    :goto_8
    if-eqz v9, :cond_15

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroid(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    move-result-wide v21

    if-eqz v2, :cond_c

    const/4 v6, 0x0

    :cond_c
    const/16 v18, 0x0

    cmpg-float v17, v6, v18

    if-nez v17, :cond_d

    const/16 v17, 0x1

    goto :goto_9

    :cond_d
    const/16 v17, 0x0

    :goto_9
    if-eqz v17, :cond_10

    const/high16 v16, 0x3f800000    # 1.0f

    cmpg-float v17, v5, v16

    if-nez v17, :cond_e

    const/16 v17, 0x1

    goto :goto_a

    :cond_e
    const/16 v17, 0x0

    :goto_a
    if-eqz v17, :cond_f

    sget-object v17, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    move/from16 v19, v8

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v7

    invoke-static {v0, v1, v7, v8}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_b

    :cond_f
    move/from16 v19, v8

    goto :goto_b

    :cond_10
    move/from16 v19, v8

    const/high16 v16, 0x3f800000    # 1.0f

    :goto_b
    iget-object v7, v15, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2$1;->$onGesture:Lkotlin/jvm/functions/Function4;

    invoke-static/range {v21 .. v22}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v8

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v7, v8, v0, v1, v5}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_16

    const/4 v7, 0x0

    :goto_c
    add-int/lit8 v5, v7, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChanged(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->consumeAllChanges(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    :cond_12
    if-le v5, v1, :cond_13

    goto :goto_d

    :cond_13
    move v7, v5

    goto :goto_c

    :cond_14
    move-object/from16 p1, v1

    move/from16 v17, v2

    :cond_15
    move/from16 v19, v8

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    :cond_16
    :goto_d
    if-nez v4, :cond_1b

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_19

    const/4 v7, 0x0

    :goto_e
    add-int/lit8 v3, v7, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v7, 0x1

    goto :goto_10

    :cond_17
    if-le v3, v1, :cond_18

    goto :goto_f

    :cond_18
    move v7, v3

    goto :goto_e

    :cond_19
    :goto_f
    const/4 v7, 0x0

    :goto_10
    if-nez v7, :cond_1a

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, v19

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_1b
    :goto_11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
