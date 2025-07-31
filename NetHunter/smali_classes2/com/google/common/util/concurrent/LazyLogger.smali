.class final Lcom/google/common/util/concurrent/LazyLogger;
.super Ljava/lang/Object;
.source "LazyLogger.java"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private volatile logger:Ljava/util/logging/Logger;

.field private final loggerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ownerOfLogger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/LazyLogger;->loggerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method get()Ljava/util/logging/Logger;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/LazyLogger;->logger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/LazyLogger;->logger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/LazyLogger;->loggerName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/LazyLogger;->logger:Ljava/util/logging/Logger;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
