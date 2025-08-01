.class public abstract Lcom/llamalab/safs/internal/AbstractWatchKey;
.super Ljava/lang/Object;
.source "AbstractWatchKey.java"

# interfaces
.implements Lcom/llamalab/safs/WatchKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/llamalab/safs/internal/AbstractWatchKey$Event;,
        Lcom/llamalab/safs/internal/AbstractWatchKey$State;
    }
.end annotation


# instance fields
.field private final eventLock:Ljava/lang/Object;

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/llamalab/safs/WatchEvent<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final overflowLimit:I

.field private final service:Lcom/llamalab/safs/internal/AbstractWatchService;

.field private state:Lcom/llamalab/safs/internal/AbstractWatchKey$State;

.field private final watchable:Lcom/llamalab/safs/Watchable;


# direct methods
.method public constructor <init>(Lcom/llamalab/safs/internal/AbstractWatchService;Lcom/llamalab/safs/Watchable;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->eventLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->events:Ljava/util/List;

    sget-object v0, Lcom/llamalab/safs/internal/AbstractWatchKey$State;->READY:Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    iput-object v0, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->state:Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    iput-object p1, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->service:Lcom/llamalab/safs/internal/AbstractWatchService;

    iput-object p2, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->watchable:Lcom/llamalab/safs/Watchable;

    iput p3, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->overflowLimit:I

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->service:Lcom/llamalab/safs/internal/AbstractWatchService;

    invoke-virtual {v0}, Lcom/llamalab/safs/internal/AbstractWatchService;->isOpen()Z

    move-result v0

    return v0
.end method

.method public final pollEvents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/llamalab/safs/WatchEvent<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->eventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->events:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->events:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final reset()Z
    .locals 3

    iget-object v0, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->eventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/llamalab/safs/internal/AbstractWatchKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v1, Lcom/llamalab/safs/internal/AbstractWatchKey$State;->SIGNALLED:Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    iget-object v2, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->state:Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/llamalab/safs/internal/AbstractWatchKey$State;->READY:Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    iput-object v1, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->state:Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->service:Lcom/llamalab/safs/internal/AbstractWatchService;

    invoke-virtual {v1, p0}, Lcom/llamalab/safs/internal/AbstractWatchService;->offer(Lcom/llamalab/safs/WatchKey;)V

    :cond_2
    :goto_0
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final service()Lcom/llamalab/safs/internal/AbstractWatchService;
    .locals 1

    iget-object v0, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->service:Lcom/llamalab/safs/internal/AbstractWatchService;

    return-object v0
.end method

.method protected final signalEvent(Lcom/llamalab/safs/WatchEvent$Kind;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/llamalab/safs/WatchEvent$Kind<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->eventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->events:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/llamalab/safs/internal/AbstractWatchKey$Event;

    sget-object v3, Lcom/llamalab/safs/StandardWatchEventKinds;->OVERFLOW:Lcom/llamalab/safs/WatchEvent$Kind;

    invoke-static {v2}, Lcom/llamalab/safs/internal/AbstractWatchKey$Event;->access$000(Lcom/llamalab/safs/internal/AbstractWatchKey$Event;)Lcom/llamalab/safs/WatchEvent$Kind;

    move-result-object v4

    if-eq v3, v4, :cond_0

    invoke-static {v2}, Lcom/llamalab/safs/internal/AbstractWatchKey$Event;->access$000(Lcom/llamalab/safs/internal/AbstractWatchKey$Event;)Lcom/llamalab/safs/WatchEvent$Kind;

    move-result-object v3

    if-ne v3, p1, :cond_1

    invoke-static {v2}, Lcom/llamalab/safs/internal/AbstractWatchKey$Event;->access$100(Lcom/llamalab/safs/internal/AbstractWatchKey$Event;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/llamalab/safs/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/llamalab/safs/internal/AbstractWatchKey$Event;->access$204(Lcom/llamalab/safs/internal/AbstractWatchKey$Event;)I

    monitor-exit v0

    return-void

    :cond_1
    iget v2, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->overflowLimit:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->events:Ljava/util/List;

    new-instance v2, Lcom/llamalab/safs/internal/AbstractWatchKey$Event;

    invoke-direct {v2, p1, p2}, Lcom/llamalab/safs/internal/AbstractWatchKey$Event;-><init>(Lcom/llamalab/safs/WatchEvent$Kind;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->events:Ljava/util/List;

    new-instance p2, Lcom/llamalab/safs/internal/AbstractWatchKey$Event;

    sget-object v1, Lcom/llamalab/safs/StandardWatchEventKinds;->OVERFLOW:Lcom/llamalab/safs/WatchEvent$Kind;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2}, Lcom/llamalab/safs/internal/AbstractWatchKey$Event;-><init>(Lcom/llamalab/safs/WatchEvent$Kind;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object p1, Lcom/llamalab/safs/internal/AbstractWatchKey$State;->READY:Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    iget-object p2, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->state:Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    if-ne p1, p2, :cond_3

    sget-object p1, Lcom/llamalab/safs/internal/AbstractWatchKey$State;->SIGNALLED:Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    iput-object p1, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->state:Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    iget-object p1, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->service:Lcom/llamalab/safs/internal/AbstractWatchService;

    invoke-virtual {p1, p0}, Lcom/llamalab/safs/internal/AbstractWatchService;->offer(Lcom/llamalab/safs/WatchKey;)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final watchable()Lcom/llamalab/safs/Watchable;
    .locals 1

    iget-object v0, p0, Lcom/llamalab/safs/internal/AbstractWatchKey;->watchable:Lcom/llamalab/safs/Watchable;

    return-object v0
.end method
