.class public final Landroidx/compose/ui/node/OwnerSnapshotObserver;
.super Ljava/lang/Object;
.source "OwnerSnapshotObserver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001B.\u0012\'\u0010\u0002\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0010\tJ\u0015\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0001H\u0000\u00a2\u0006\u0002\u0008\u0011J\r\u0010\u0012\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\u0013J#\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\r2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0000\u00a2\u0006\u0002\u0008\u0017J#\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\r2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0000\u00a2\u0006\u0002\u0008\u0019JC\u0010\u001a\u001a\u00020\u0005\"\u0008\u0008\u0000\u0010\u001b*\u00020\u001c2\u0006\u0010\u0010\u001a\u0002H\u001b2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u00020\u00050\u00032\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008!J\r\u0010\"\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008#J\u001b\u0010$\u001a\u00020\u00052\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0000\u00a2\u0006\u0002\u0008%R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Landroidx/compose/ui/node/OwnerSnapshotObserver;",
        "",
        "onChangedExecutor",
        "Lkotlin/Function1;",
        "Lkotlin/Function0;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "callback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "observer",
        "Landroidx/compose/runtime/snapshots/SnapshotStateObserver;",
        "onCommitAffectingLayout",
        "Landroidx/compose/ui/node/LayoutNode;",
        "onCommitAffectingMeasure",
        "clear",
        "target",
        "clear$ui_release",
        "clearInvalidObservations",
        "clearInvalidObservations$ui_release",
        "observeLayoutSnapshotReads",
        "node",
        "block",
        "observeLayoutSnapshotReads$ui_release",
        "observeMeasureSnapshotReads",
        "observeMeasureSnapshotReads$ui_release",
        "observeReads",
        "T",
        "Landroidx/compose/ui/node/OwnerScope;",
        "onChanged",
        "observeReads$ui_release",
        "(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V",
        "startObserving",
        "startObserving$ui_release",
        "stopObserving",
        "stopObserving$ui_release",
        "withNoSnapshotReadObservation",
        "withNoSnapshotReadObservation$ui_release",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

.field private final onCommitAffectingLayout:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onCommitAffectingMeasure:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onChangedExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingMeasure$1;->INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingMeasure$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingMeasure:Lkotlin/jvm/functions/Function1;

    sget-object p1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayout:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final clear$ui_release(Ljava/lang/Object;)V
    .locals 1

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->clear(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearInvalidObservations$ui_release()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    sget-object v1, Landroidx/compose/ui/node/OwnerSnapshotObserver$clearInvalidObservations$1;->INSTANCE:Landroidx/compose/ui/node/OwnerSnapshotObserver$clearInvalidObservations$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->clearIf(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final observeLayoutSnapshotReads$ui_release(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/node/OwnerScope;

    iget-object v0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingLayout:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final observeMeasureSnapshotReads$ui_release(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/node/OwnerScope;

    iget-object v0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->onCommitAffectingMeasure:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/compose/ui/node/OwnerScope;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onChanged"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final startObserving$ui_release()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->start()V

    return-void
.end method

.method public final stopObserving$ui_release()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->stop()V

    iget-object v0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->clear()V

    return-void
.end method

.method public final withNoSnapshotReadObservation$ui_release(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->withNoObservations(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
