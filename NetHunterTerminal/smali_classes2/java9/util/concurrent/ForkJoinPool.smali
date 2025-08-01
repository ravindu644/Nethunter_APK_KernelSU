.class public Ljava9/util/concurrent/ForkJoinPool;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/concurrent/ForkJoinPool$MemBar;,
        Ljava9/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;,
        Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;,
        Ljava9/util/concurrent/ForkJoinPool$WorkQueue;,
        Ljava9/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;,
        Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ACTCLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final ADD_WORKER:J = 0x800000000000L

.field private static final ASHIFT:I

.field private static final COMMON_MAX_SPARES:I

.field static final COMMON_PARALLELISM:I

.field private static final CTL:J

.field private static final DEFAULT_COMMON_MAX_SPARES:I = 0x100

.field private static final DEFAULT_KEEPALIVE:J = 0xea60L

.field static final DORMANT:I = -0x40000000

.field static final FIFO:I = 0x10000

.field static final MAX_CAP:I = 0x7fff

.field private static final MODE:J

.field static final OWNED:I = 0x1

.field static final POLL_LIMIT:I = 0x400

.field static final QLOCK:I = 0x1

.field static final QUIET:I = 0x40000000

.field private static final RC_MASK:J = -0x1000000000000L

.field private static final RC_SHIFT:I = 0x30

.field private static final RC_UNIT:J = 0x1000000000000L

.field private static final SEED_INCREMENT:I = -0x61c88647

.field static final SHUTDOWN:I = 0x40000

.field static final SMASK:I = 0xffff

.field private static final SP_MASK:J = 0xffffffffL

.field static final SQMASK:I = 0x7e

.field static final SS_SEQ:I = 0x10000

.field static final STOP:I = -0x80000000

.field static final SWIDTH:I = 0x10

.field private static final TC_MASK:J = 0xffff00000000L

.field private static final TC_SHIFT:I = 0x20

.field private static final TC_UNIT:J = 0x100000000L

.field static final TERMINATED:I = 0x80000

.field private static final TIMEOUT_SLOP:J = 0x14L

.field private static final U:Lsun/misc/Unsafe;

.field private static final UC_MASK:J = -0x100000000L

.field static final UNSIGNALLED:I = -0x80000000

.field static final common:Ljava9/util/concurrent/ForkJoinPool;

.field public static final defaultForkJoinWorkerThreadFactory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field static final modifyThreadPermission:Ljava/lang/RuntimePermission;

.field private static poolNumberSequence:I


# instance fields
.field final bounds:I

.field volatile ctl:J

.field final factory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field indexSeed:I

.field final keepAlive:J

.field volatile mode:I

.field volatile pad00:J

.field volatile pad01:J

.field volatile pad02:J

.field volatile pad03:J

.field volatile pad04:J

.field volatile pad05:J

.field volatile pad06:J

.field volatile pad07:J

.field volatile pad08:J

.field volatile pad09:J

.field volatile pad0a:J

.field volatile pad0b:J

.field volatile pad0c:J

.field volatile pad0d:J

.field volatile pad0e:J

.field volatile pad0f:J

.field volatile pad10:J

.field volatile pad11:J

.field volatile pad12:J

.field volatile pad13:J

.field volatile pad14:J

.field volatile pad15:J

.field volatile pad16:J

.field volatile pad17:J

.field volatile pad18:J

.field volatile pad19:J

.field volatile pad1a:J

.field volatile pad1b:J

.field volatile pad1c:J

.field volatile pad1d:J

.field volatile pad1e:J

.field final saturate:Ljava9/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/Predicate<",
            "-",
            "Ljava9/util/concurrent/ForkJoinPool;",
            ">;"
        }
    .end annotation
.end field

.field volatile stealCount:J

.field final ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

.field final workerNamePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Ljava9/util/concurrent/ForkJoinPool;

    sget-object v1, Ljava9/util/concurrent/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v1, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    :try_start_0
    const-string v2, "ctl"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    const-string v2, "mode"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/concurrent/ForkJoinPool;->MODE:J

    const-class v0, [Ljava9/util/concurrent/ForkJoinTask;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljava9/util/concurrent/ForkJoinPool;->ABASE:I

    const-class v0, [Ljava9/util/concurrent/ForkJoinTask;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    sput v0, Ljava9/util/concurrent/ForkJoinPool;->ASHIFT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    const/16 v0, 0x100

    :try_start_1
    const-string v1, "java.util.concurrent.ForkJoinPool.common.maximumSpares"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    sput v0, Ljava9/util/concurrent/ForkJoinPool;->COMMON_MAX_SPARES:I

    new-instance v0, Ljava9/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    invoke-direct {v0}, Ljava9/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>()V

    sput-object v0, Ljava9/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "modifyThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava9/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    new-instance v0, Ljava9/util/concurrent/ForkJoinPool$1;

    invoke-direct {v0}, Ljava9/util/concurrent/ForkJoinPool$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/concurrent/ForkJoinPool;

    sput-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    iget v0, v0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Ljava9/util/concurrent/ForkJoinPool;->COMMON_PARALLELISM:I

    const/4 v0, 0x0

    :try_start_2
    const-string v1, "java9.util.concurrent.CompletableFuture$AsynchronousCompletionTask"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sput-object v0, Ljava9/util/concurrent/ForkJoinPool;->ACTCLASS:Ljava/lang/Class;

    throw v1

    :catch_1
    :goto_0
    sput-object v0, Ljava9/util/concurrent/ForkJoinPool;->ACTCLASS:Ljava/lang/Class;

    return-void

    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "array index scale not a power of two"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 14

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/16 v1, 0x7fff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget-object v4, Ljava9/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide/32 v11, 0xea60

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Ljava9/util/concurrent/ForkJoinPool;-><init>(ILjava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ZIIILjava9/util/function/Predicate;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method constructor <init>(B)V
    .locals 10

    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    const/4 p1, -0x1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.util.concurrent.ForkJoinPool.common.parallelism"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :cond_0
    const-string v1, "java.util.concurrent.ForkJoinPool.common.threadFactory"

    invoke-static {v1}, Ljava9/util/concurrent/ForkJoinPool;->newInstanceFromSystemProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "java.util.concurrent.ForkJoinPool.common.exceptionHandler"

    invoke-static {v2}, Ljava9/util/concurrent/ForkJoinPool;->newInstanceFromSystemProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :catch_1
    nop

    move-object v1, v0

    :goto_0
    move-object v2, v0

    :goto_1
    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Ljava9/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    goto :goto_2

    :cond_1
    new-instance v1, Ljava9/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;

    invoke-direct {v1}, Ljava9/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;-><init>()V

    :cond_2
    :goto_2
    const/4 v3, 0x1

    if-gez p1, :cond_3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    sub-int/2addr p1, v3

    if-gtz p1, :cond_3

    const/4 p1, 0x1

    :cond_3
    const/16 v4, 0x7fff

    if-le p1, v4, :cond_4

    const/16 p1, 0x7fff

    :cond_4
    neg-int v4, p1

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long v6, v4, v6

    const-wide v8, 0xffff00000000L

    and-long/2addr v6, v8

    const/16 v8, 0x30

    shl-long/2addr v4, v8

    const-wide/high16 v8, -0x1000000000000L

    and-long/2addr v4, v8

    or-long/2addr v4, v6

    rsub-int/lit8 v6, p1, 0x1

    const v7, 0xffff

    and-int/2addr v6, v7

    sget v7, Ljava9/util/concurrent/ForkJoinPool;->COMMON_MAX_SPARES:I

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    if-le p1, v3, :cond_5

    add-int/lit8 v7, p1, -0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x1

    :goto_3
    ushr-int/lit8 v8, v7, 0x1

    or-int/2addr v7, v8

    ushr-int/lit8 v8, v7, 0x2

    or-int/2addr v7, v8

    ushr-int/lit8 v8, v7, 0x4

    or-int/2addr v7, v8

    ushr-int/lit8 v8, v7, 0x8

    or-int/2addr v7, v8

    ushr-int/lit8 v8, v7, 0x10

    or-int/2addr v7, v8

    add-int/2addr v7, v3

    shl-int/lit8 v3, v7, 0x1

    const-string v7, "ForkJoinPool.commonPool-worker-"

    iput-object v7, p0, Ljava9/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    new-array v3, v3, [Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    iput-object v3, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    iput-object v1, p0, Ljava9/util/concurrent/ForkJoinPool;->factory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    iput-object v2, p0, Ljava9/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v0, p0, Ljava9/util/concurrent/ForkJoinPool;->saturate:Ljava9/util/function/Predicate;

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Ljava9/util/concurrent/ForkJoinPool;->keepAlive:J

    iput v6, p0, Ljava9/util/concurrent/ForkJoinPool;->bounds:I

    iput p1, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    iput-wide v4, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 12

    sget-object v2, Ljava9/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x7fff

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/32 v9, 0xea60

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v11}, Ljava9/util/concurrent/ForkJoinPool;-><init>(ILjava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ZIIILjava9/util/function/Predicate;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(ILjava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 12

    const/4 v5, 0x0

    const/16 v6, 0x7fff

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/32 v9, 0xea60

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v11}, Ljava9/util/concurrent/ForkJoinPool;-><init>(ILjava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ZIIILjava9/util/function/Predicate;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(ILjava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ZIIILjava9/util/function/Predicate;JLjava/util/concurrent/TimeUnit;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            "ZIII",
            "Ljava9/util/function/Predicate<",
            "-",
            "Ljava9/util/concurrent/ForkJoinPool;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move/from16 v2, p6

    move-wide/from16 v3, p9

    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    if-lez v1, :cond_2

    const/16 v5, 0x7fff

    if-gt v1, v5, :cond_2

    if-lt v2, v1, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-lez v8, :cond_2

    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, p11

    invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    const-wide/16 v6, 0x14

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move/from16 v6, p5

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    neg-int v6, v6

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    const-wide v8, 0xffff00000000L

    and-long/2addr v6, v8

    neg-int v8, v1

    int-to-long v8, v8

    const/16 v10, 0x30

    shl-long/2addr v8, v10

    const-wide/high16 v10, -0x1000000000000L

    and-long/2addr v8, v10

    or-long/2addr v6, v8

    const/4 v8, 0x0

    if-eqz p4, :cond_0

    const/high16 v9, 0x10000

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    or-int/2addr v9, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v1

    move/from16 v10, p7

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v5, v1

    const v8, 0xffff

    and-int/2addr v5, v8

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v5

    const/4 v5, 0x1

    if-le v1, v5, :cond_1

    sub-int/2addr v1, v5

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    ushr-int/lit8 v8, v1, 0x1

    or-int/2addr v1, v8

    ushr-int/lit8 v8, v1, 0x2

    or-int/2addr v1, v8

    ushr-int/lit8 v8, v1, 0x4

    or-int/2addr v1, v8

    ushr-int/lit8 v8, v1, 0x8

    or-int/2addr v1, v8

    ushr-int/lit8 v8, v1, 0x10

    or-int/2addr v1, v8

    add-int/2addr v1, v5

    shl-int/2addr v1, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "ForkJoinPool-"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->nextPoolId()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "-worker-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Ljava9/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    new-array v1, v1, [Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    iput-object v1, v0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v1, p2

    iput-object v1, v0, Ljava9/util/concurrent/ForkJoinPool;->factory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-object v1, p3

    iput-object v1, v0, Ljava9/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object/from16 v1, p8

    iput-object v1, v0, Ljava9/util/concurrent/ForkJoinPool;->saturate:Ljava9/util/function/Predicate;

    iput-wide v3, v0, Ljava9/util/concurrent/ForkJoinPool;->keepAlive:J

    iput v2, v0, Ljava9/util/concurrent/ForkJoinPool;->bounds:I

    iput v9, v0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    iput-wide v6, v0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->checkPermission()V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private static checkPermission()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava9/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method

.method public static commonPool()Ljava9/util/concurrent/ForkJoinPool;
    .locals 1

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method static commonSubmitterQueue()Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 3

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    invoke-static {}, Ljava9/util/concurrent/TLRandom;->getProbe()I

    move-result v1

    if-eqz v0, :cond_0

    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x7e

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static varargs contextWithPermissions([Ljava/security/Permission;)Ljava/security/AccessControlContext;
    .locals 5

    new-instance v0, Ljava/security/Permissions;

    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    invoke-virtual {v0, v4}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/AccessControlContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    new-instance v3, Ljava/security/ProtectionDomain;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    return-object p0
.end method

.method private createWorker()Z
    .locals 3

    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool;->factory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0}, Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Ljava9/util/concurrent/ForkJoinPool;)Ljava9/util/concurrent/ForkJoinWorkerThread;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava9/util/concurrent/ForkJoinWorkerThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    invoke-virtual {p0, v0, v1}, Ljava9/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava9/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;)",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    iget-object v1, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    if-ne v1, p0, :cond_0

    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava9/util/concurrent/ForkJoinTask;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->externalPush(Ljava9/util/concurrent/ForkJoinTask;)V

    :goto_0
    return-object p1
.end method

.method static getAndAddLong(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v8

    add-long v6, v8, p3

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method static getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    :cond_0
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, v6

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava9/util/concurrent/ForkJoinPool$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v6
.end method

.method public static getCommonPoolParallelism()I
    .locals 1

    sget v0, Ljava9/util/concurrent/ForkJoinPool;->COMMON_PARALLELISM:I

    return v0
.end method

.method static getSurplusQueuedTaskCount()I
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    iget-object v1, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    if-eqz v1, :cond_4

    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v0, :cond_4

    iget v3, v1, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const v4, 0xffff

    and-int/2addr v3, v4

    iget-wide v4, v1, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v1, 0x30

    shr-long/2addr v4, v1

    long-to-int v1, v4

    add-int/2addr v1, v3

    iget v4, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget v0, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v4, v0

    const/4 v0, 0x1

    ushr-int/2addr v3, v0

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    ushr-int/lit8 v2, v3, 0x1

    if-le v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    ushr-int/2addr v2, v0

    if-le v1, v2, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    ushr-int/lit8 v0, v2, 0x1

    if-le v1, v0, :cond_3

    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    :goto_0
    sub-int/2addr v4, v2

    return v4

    :cond_4
    return v2
.end method

.method static helpAsyncBlocker(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .locals 10

    if-eqz p1, :cond_6

    instance-of v0, p0, Ljava9/util/concurrent/ForkJoinPool;

    if-eqz v0, :cond_6

    check-cast p0, Ljava9/util/concurrent/ForkJoinPool;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    iget-object v1, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    if-ne v1, p0, :cond_0

    iget-object p0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava9/util/concurrent/TLRandom;->getProbe()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x7e

    aget-object p0, p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_6

    :cond_2
    :goto_1
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget-object v3, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v3, :cond_6

    sub-int v1, v0, v1

    if-gez v1, :cond_6

    array-length v2, v3

    if-lez v2, :cond_6

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v0

    int-to-long v4, v2

    sget v2, Ljava9/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long/2addr v4, v2

    sget v2, Ljava9/util/concurrent/ForkJoinPool;->ABASE:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    sget-object v2, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava9/util/concurrent/ForkJoinTask;

    invoke-interface {p1}, Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v0, 0x1

    iget v6, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_2

    if-nez v8, :cond_4

    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    goto :goto_2

    :cond_4
    invoke-static {v8}, Ljava9/util/concurrent/ForkJoinPool;->isInstanceOfAsynCompTask(Ljava9/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    move-object v6, v8

    invoke-static/range {v2 .. v7}, Ljava9/util/concurrent/ForkJoinPool$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v9, p0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    invoke-virtual {v8}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method static isInstanceOfAsynCompTask(Ljava9/util/concurrent/ForkJoinTask;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->ACTCLASS:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static managedBlock(Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_5

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    iget-object v1, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    if-eqz v1, :cond_5

    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v0, :cond_5

    :cond_0
    invoke-interface {p0}, Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {v1, v0}, Ljava9/util/concurrent/ForkJoinPool;->tryCompensate(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)I

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const-wide/high16 v3, 0x1000000000000L

    const-wide/16 v5, 0x0

    :try_start_0
    invoke-interface {p0}, Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_2
    sget-wide v7, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    move-wide v3, v5

    :goto_0
    invoke-static {v1, v7, v8, v3, v4}, Ljava9/util/concurrent/ForkJoinPool;->getAndAddLong(Ljava/lang/Object;JJ)J

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-wide v7, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    if-lez v2, :cond_4

    goto :goto_1

    :cond_4
    move-wide v3, v5

    :goto_1
    invoke-static {v1, v7, v8, v3, v4}, Ljava9/util/concurrent/ForkJoinPool;->getAndAddLong(Ljava/lang/Object;JJ)J

    throw p0

    :cond_5
    invoke-interface {p0}, Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p0}, Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_6
    :goto_2
    return-void
.end method

.method private static newInstanceFromSystemProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final declared-synchronized nextPoolId()I
    .locals 2

    const-class v0, Ljava9/util/concurrent/ForkJoinPool;

    monitor-enter v0

    :try_start_0
    sget v1, Ljava9/util/concurrent/ForkJoinPool;->poolNumberSequence:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ljava9/util/concurrent/ForkJoinPool;->poolNumberSequence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private pollScan(Z)Ljava9/util/concurrent/ForkJoinTask;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p0

    :cond_0
    iget v1, v0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-nez v1, :cond_5

    iget-object v1, v0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_5

    array-length v2, v1

    if-lez v2, :cond_5

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Ljava9/util/concurrent/TLRandom;->nextSecondarySeed()I

    move-result v3

    ushr-int/lit8 v4, v3, 0x10

    if-eqz p1, :cond_1

    and-int/lit8 v3, v3, -0x2

    and-int/2addr v3, v2

    and-int/lit8 v4, v4, -0x2

    or-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_1
    and-int/2addr v3, v2

    or-int/lit8 v4, v4, 0x1

    :goto_0
    const/4 v5, 0x0

    move v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_2
    :goto_1
    aget-object v9, v1, v6

    if-eqz v9, :cond_3

    iget v10, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    add-int/2addr v7, v10

    iget v11, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v11, v10, v11

    if-gez v11, :cond_3

    iget-object v13, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v13, :cond_3

    array-length v11, v13

    if-lez v11, :cond_3

    add-int/lit8 v11, v11, -0x1

    and-int v1, v11, v10

    int-to-long v1, v1

    sget v3, Ljava9/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Ljava9/util/concurrent/ForkJoinPool;->ABASE:I

    int-to-long v3, v3

    add-long v14, v1, v3

    sget-object v12, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v12, v13, v14, v15}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_0

    add-int/lit8 v2, v10, 0x1

    iget v3, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v10, v3, :cond_0

    const/16 v17, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v12 .. v17}, Ljava9/util/concurrent/ForkJoinPool$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v2, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    return-object v1

    :cond_3
    add-int/2addr v6, v4

    and-int/2addr v6, v2

    if-ne v6, v3, :cond_2

    if-ne v8, v7, :cond_4

    goto :goto_2

    :cond_4
    move v8, v7

    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method static quiesceCommonPool()V
    .locals 4

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    const-wide v1, 0x7fffffffffffffffL

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava9/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method private tryAddWorker(J)V
    .locals 8

    move-wide v4, p1

    :cond_0
    const-wide/high16 p1, 0x1000000000000L

    add-long/2addr p1, v4

    const-wide/high16 v0, -0x1000000000000L

    and-long/2addr p1, v0

    const-wide v0, 0x100000000L

    add-long/2addr v0, v4

    const-wide v2, 0xffff00000000L

    and-long/2addr v0, v2

    or-long v6, p1, v0

    iget-wide p1, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v0, p1, v4

    if-nez v0, :cond_1

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinPool;->createWorker()Z

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    const-wide p1, 0x800000000000L

    and-long/2addr p1, v4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_2

    long-to-int p1, v4

    if-eqz p1, :cond_0

    :cond_2
    :goto_0
    return-void
.end method

.method private tryCompensate(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)I
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    iget-wide v4, v8, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    iget-object v1, v8, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    const/16 v2, 0x20

    ushr-long v2, v4, v2

    long-to-int v3, v2

    int-to-short v2, v3

    const/4 v9, 0x1

    if-ltz v2, :cond_11

    if-eqz v1, :cond_10

    array-length v3, v1

    if-lez v3, :cond_10

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    long-to-int v6, v4

    const-wide/high16 v11, 0x1000000000000L

    const/4 v13, -0x1

    if-eqz v6, :cond_5

    sub-int/2addr v3, v9

    and-int v2, v6, v3

    aget-object v14, v1, v2

    iget v15, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    if-gez v15, :cond_1

    add-long/2addr v11, v4

    goto :goto_0

    :cond_1
    move-wide v11, v4

    :goto_0
    const-wide v0, -0x100000000L

    and-long/2addr v0, v11

    const v2, 0x7fffffff

    and-int v11, v6, v2

    if-eqz v14, :cond_4

    iget v2, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    iget-object v12, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava9/util/concurrent/ForkJoinWorkerThread;

    iget v3, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v9, v3

    const-wide v16, 0xffffffffL

    and-long v9, v9, v16

    or-long/2addr v9, v0

    if-ne v2, v6, :cond_4

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-wide v6, v9

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v11, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    iget v0, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    if-gez v0, :cond_2

    invoke-static {v12}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_2
    if-gez v15, :cond_3

    const/4 v9, -0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    :goto_1
    return v9

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    const/16 v0, 0x30

    shr-long v6, v4, v0

    long-to-int v0, v6

    iget v6, v8, Ljava9/util/concurrent/ForkJoinPool;->bounds:I

    const v7, 0xffff

    and-int/2addr v6, v7

    int-to-short v6, v6

    sub-int/2addr v0, v6

    if-lez v0, :cond_6

    const-wide/high16 v0, -0x1000000000000L

    sub-long v2, v4, v11

    and-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v2, v4

    or-long v6, v0, v2

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0

    :cond_6
    iget v0, v8, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    and-int/2addr v0, v7

    add-int v6, v0, v2

    move v10, v6

    const/4 v7, 0x0

    const/4 v9, 0x1

    :goto_2
    if-ge v9, v3, :cond_a

    aget-object v11, v1, v9

    if-eqz v11, :cond_9

    iget v12, v11, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    if-nez v12, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v10, v10, -0x1

    iget-object v11, v11, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v11

    sget-object v12, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v11, v12, :cond_8

    sget-object v12, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v11, v12, :cond_9

    :cond_8
    add-int/lit8 v7, v7, 0x1

    :cond_9
    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_f

    if-nez v10, :cond_f

    iget-wide v9, v8, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v1, v9, v4

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_b
    const/16 v1, 0x7fff

    if-ge v6, v1, :cond_c

    iget v1, v8, Ljava9/util/concurrent/ForkJoinPool;->bounds:I

    ushr-int/lit8 v1, v1, 0x10

    if-lt v2, v1, :cond_11

    :cond_c
    iget-object v1, v8, Ljava9/util/concurrent/ForkJoinPool;->saturate:Ljava9/util/function/Predicate;

    if-eqz v1, :cond_d

    invoke-interface {v1, v8}, Ljava9/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v13

    :cond_d
    if-ge v7, v0, :cond_e

    invoke-static {}, Ljava/lang/Thread;->yield()V

    const/4 v9, 0x0

    return v9

    :cond_e
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Thread limit exceeded replacing blocked worker"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_4
    const/4 v9, 0x0

    return v9

    :cond_10
    :goto_5
    const/4 v9, 0x0

    return v9

    :cond_11
    const/4 v9, 0x0

    const-wide v0, 0x100000000L

    add-long/2addr v0, v4

    const-wide v2, 0xffff00000000L

    and-long/2addr v0, v2

    const-wide v2, -0xffff00000001L

    and-long/2addr v2, v4

    or-long v6, v0, v2

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct/range {p0 .. p0}, Ljava9/util/concurrent/ForkJoinPool;->createWorker()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v9, 0x1

    :cond_12
    return v9
.end method

.method private tryTerminate(ZZ)Z
    .locals 16

    move-object/from16 v7, p0

    :goto_0
    iget v5, v7, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const/high16 v0, 0x40000

    and-int v1, v5, v0

    const/4 v8, 0x0

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    sget-object v1, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    if-ne v7, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava9/util/concurrent/ForkJoinPool;->MODE:J

    or-int v6, v5, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    goto :goto_0

    :cond_1
    :goto_1
    return v8

    :cond_2
    :goto_2
    iget v0, v7, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    const v9, 0xffff

    const-wide/16 v10, 0x0

    const/16 v12, 0x20

    const/4 v13, 0x1

    if-nez v2, :cond_d

    if-nez p1, :cond_c

    :goto_3
    iget-wide v2, v7, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    iget-object v4, v7, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    and-int/2addr v0, v9

    const/16 v5, 0x30

    shr-long v14, v2, v5

    long-to-int v6, v14

    add-int/2addr v0, v6

    if-lez v0, :cond_3

    goto :goto_7

    :cond_3
    if-eqz v4, :cond_7

    const/4 v0, 0x0

    :goto_4
    array-length v6, v4

    if-ge v0, v6, :cond_7

    aget-object v6, v4, v0

    if-eqz v6, :cond_6

    iget v14, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    iget v15, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    iget v9, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    iget v8, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v6, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v8, v6, :cond_5

    and-int/lit8 v6, v9, 0x1

    if-ne v6, v13, :cond_4

    if-gez v14, :cond_5

    if-ltz v15, :cond_4

    goto :goto_5

    :cond_4
    int-to-long v13, v14

    shl-long/2addr v13, v5

    int-to-long v5, v15

    shl-long/2addr v5, v12

    add-long/2addr v13, v5

    int-to-long v5, v8

    const/16 v8, 0x10

    shl-long/2addr v5, v8

    add-long/2addr v13, v5

    int-to-long v5, v9

    add-long/2addr v13, v5

    add-long/2addr v2, v13

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v13, 0x1

    goto :goto_7

    :cond_6
    :goto_6
    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x30

    const/4 v8, 0x0

    const v9, 0xffff

    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    :goto_7
    iget v0, v7, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    and-int v5, v0, v1

    if-eqz v5, :cond_8

    const/4 v8, 0x0

    goto :goto_8

    :cond_8
    if-eqz v13, :cond_9

    const/4 v8, 0x0

    return v8

    :cond_9
    const/4 v8, 0x0

    iget-object v5, v7, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-ne v5, v4, :cond_b

    cmp-long v4, v10, v2

    if-nez v4, :cond_a

    :goto_8
    goto :goto_9

    :cond_a
    move-wide v10, v2

    :cond_b
    const v9, 0xffff

    const/4 v13, 0x1

    goto :goto_3

    :cond_c
    :goto_9
    move v5, v0

    and-int v0, v5, v1

    if-nez v0, :cond_2

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava9/util/concurrent/ForkJoinPool;->MODE:J

    or-int v6, v5, v1

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    goto/16 :goto_2

    :cond_d
    :goto_a
    iget v0, v7, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_17

    move-wide v2, v10

    :goto_b
    iget-wide v4, v7, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    iget-object v0, v7, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v0, :cond_10

    const/4 v6, 0x0

    :goto_c
    array-length v9, v0

    if-ge v6, v9, :cond_10

    aget-object v9, v0, v6

    if-eqz v9, :cond_f

    iget-object v13, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava9/util/concurrent/ForkJoinWorkerThread;

    invoke-virtual {v9}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    if-eqz v13, :cond_e

    :try_start_0
    invoke-virtual {v13}, Ljava9/util/concurrent/ForkJoinWorkerThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_e
    iget v13, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    int-to-long v13, v13

    shl-long/2addr v13, v12

    iget v9, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    int-to-long v8, v9

    add-long/2addr v13, v8

    add-long/2addr v4, v13

    :cond_f
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x0

    goto :goto_c

    :cond_10
    iget v6, v7, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    and-int v8, v6, v1

    if-nez v8, :cond_13

    iget-object v9, v7, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-ne v9, v0, :cond_12

    cmp-long v0, v2, v4

    if-nez v0, :cond_11

    goto :goto_d

    :cond_11
    move-wide v2, v4

    :cond_12
    const/4 v8, 0x0

    goto :goto_b

    :cond_13
    :goto_d
    if-eqz v8, :cond_14

    goto :goto_e

    :cond_14
    const v0, 0xffff

    and-int v2, v6, v0

    iget-wide v3, v7, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    ushr-long/2addr v3, v12

    long-to-int v4, v3

    int-to-short v3, v4

    add-int/2addr v2, v3

    if-lez v2, :cond_15

    goto :goto_e

    :cond_15
    sget-object v2, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava9/util/concurrent/ForkJoinPool;->MODE:J

    or-int v8, v6, v1

    move-object v1, v2

    move-object/from16 v2, p0

    move v5, v6

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_16

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_e

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_16
    const/4 v8, 0x0

    goto :goto_a

    :cond_17
    :goto_e
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method final awaitJoin(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;Ljava9/util/concurrent/ForkJoinTask;J)I
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;J)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    instance-of v4, v2, Ljava9/util/concurrent/CountedCompleter;

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Ljava9/util/concurrent/CountedCompleter;

    invoke-virtual {v1, v4, v3}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->localHelpCC(Ljava9/util/concurrent/CountedCompleter;I)I

    move-result v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto/16 :goto_5

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p2}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Ljava9/util/concurrent/ForkJoinTask;)V

    iget v4, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    iget v5, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    iget v6, v2, Ljava9/util/concurrent/ForkJoinTask;->status:I

    :goto_1
    if-ltz v6, :cond_c

    invoke-static {}, Ljava9/util/concurrent/TLRandom;->nextSecondarySeed()I

    move-result v6

    const/4 v7, 0x1

    or-int/2addr v6, v7

    iget-object v8, v0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v8, :cond_3

    array-length v9, v8

    add-int/lit8 v10, v9, -0x1

    neg-int v11, v9

    :goto_2
    if-ge v11, v9, :cond_3

    add-int v12, v6, v11

    and-int/2addr v12, v10

    if-ltz v12, :cond_2

    if-ge v12, v9, :cond_2

    aget-object v12, v8, v12

    if-eqz v12, :cond_2

    iget v13, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    if-ne v13, v5, :cond_2

    iget v13, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v14, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v14, v13, v14

    if-gez v14, :cond_2

    iget-object v14, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v14, :cond_2

    array-length v15, v14

    if-lez v15, :cond_2

    iget v6, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    add-int/lit8 v15, v15, -0x1

    and-int v8, v15, v13

    int-to-long v8, v8

    sget v10, Ljava9/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long/2addr v8, v10

    sget v10, Ljava9/util/concurrent/ForkJoinPool;->ABASE:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    sget-object v15, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v15, v14, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v10, :cond_4

    add-int/lit8 v11, v13, 0x1

    iget v3, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v13, v3, :cond_4

    iget v3, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    if-ne v5, v3, :cond_4

    const/16 v20, 0x0

    move-object/from16 v16, v14

    move-wide/from16 v17, v8

    move-object/from16 v19, v10

    invoke-static/range {v15 .. v20}, Ljava9/util/concurrent/ForkJoinPool$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput v11, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iput v6, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    invoke-virtual {v10}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    iput v4, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v11, 0x2

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :cond_4
    :goto_3
    iget v3, v2, Ljava9/util/concurrent/ForkJoinTask;->status:I

    if-gez v3, :cond_5

    goto :goto_5

    :cond_5
    if-nez v7, :cond_b

    const-wide/16 v6, 0x0

    cmp-long v8, p3, v6

    if-nez v8, :cond_6

    move-wide v8, v6

    goto :goto_4

    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v8, p3, v8

    cmp-long v10, v8, v6

    if-gtz v10, :cond_7

    goto :goto_5

    :cond_7
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-gtz v3, :cond_8

    const-wide/16 v8, 0x1

    :cond_8
    :goto_4
    invoke-direct/range {p0 .. p1}, Ljava9/util/concurrent/ForkJoinPool;->tryCompensate(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v8, v9}, Ljava9/util/concurrent/ForkJoinTask;->internalWait(J)V

    sget-wide v8, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    if-lez v3, :cond_9

    const-wide/high16 v6, 0x1000000000000L

    :cond_9
    invoke-static {v0, v8, v9, v6, v7}, Ljava9/util/concurrent/ForkJoinPool;->getAndAddLong(Ljava/lang/Object;JJ)J

    :cond_a
    iget v3, v2, Ljava9/util/concurrent/ForkJoinTask;->status:I

    :cond_b
    move v6, v3

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_c
    move v3, v6

    goto :goto_5

    :cond_d
    const/4 v3, 0x0

    :goto_5
    return v3
.end method

.method public awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z
    .locals 6

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    instance-of v0, p3, Ljava9/util/concurrent/ForkJoinWorkerThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p3, Ljava9/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, p3, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    if-ne v0, p0, :cond_0

    iget-object p1, p3, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)V

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :goto_0
    const/4 p3, 0x0

    invoke-direct {p0, p3}, Ljava9/util/concurrent/ForkJoinPool;->pollScan(Z)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinPool;->isQuiescent()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v0, v4, p1

    if-lez v0, :cond_3

    return p3

    :cond_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Ljava9/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    return v1

    :cond_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinPool;->isTerminated()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    return v0

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-gtz p3, :cond_2

    return v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, p1

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinPool;->isTerminated()Z

    move-result p3

    if-eqz p3, :cond_3

    monitor-exit p0

    return v0

    :cond_3
    cmp-long p3, p1, v2

    if-gtz p3, :cond_4

    monitor-exit p0

    return v1

    :cond_4
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-lez p3, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long p1, v4, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method final deregisterWorker(Ljava9/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    const-wide v10, 0xffffffffL

    const/4 v1, 0x0

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v0, :cond_3

    iget-object v2, v9, Ljava9/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    iget v3, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v3, v3

    and-long/2addr v3, v10

    iget v5, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    const v6, 0xffff

    and-int/2addr v5, v6

    if-eqz v2, :cond_1

    monitor-enter v2

    :try_start_0
    iget-object v6, v9, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v6, :cond_0

    array-length v7, v6

    if-le v7, v5, :cond_0

    aget-object v7, v6, v5

    if-ne v7, v0, :cond_0

    aput-object v1, v6, v5

    :cond_0
    iget-wide v5, v9, Ljava9/util/concurrent/ForkJoinPool;->stealCount:J

    add-long/2addr v5, v3

    iput-wide v5, v9, Ljava9/util/concurrent/ForkJoinPool;->stealCount:J

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget v1, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    goto :goto_1

    :cond_2
    move-object v0, v1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_5

    :cond_4
    sget-object v1, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    iget-wide v5, v9, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    const-wide/high16 v7, 0x1000000000000L

    sub-long v7, v5, v7

    const-wide/high16 v13, -0x1000000000000L

    and-long/2addr v7, v13

    const-wide v13, 0x100000000L

    sub-long v13, v5, v13

    const-wide v15, 0xffff00000000L

    and-long/2addr v13, v15

    or-long/2addr v7, v13

    and-long v13, v5, v10

    or-long/2addr v7, v13

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    :cond_6
    invoke-direct {v9, v12, v12}, Ljava9/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljava9/util/concurrent/ForkJoinPool;->signalWork()V

    :cond_7
    if-nez p2, :cond_8

    invoke-static {}, Ljava9/util/concurrent/ForkJoinTask;->helpExpungeStaleExceptions()V

    goto :goto_2

    :cond_8
    invoke-static/range {p2 .. p2}, Ljava9/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method protected drainTasksTo(Ljava/util/Collection;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;>;)I"
        }
    .end annotation

    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v3}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_0

    check-cast p1, Ljava9/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava9/util/concurrent/ForkJoinTask$RunnableExecuteAction;

    invoke-direct {v0, p1}, Ljava9/util/concurrent/ForkJoinTask$RunnableExecuteAction;-><init>(Ljava/lang/Runnable;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    return-void
.end method

.method public execute(Ljava9/util/concurrent/ForkJoinTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    return-void
.end method

.method final externalHelpComplete(Ljava9/util/concurrent/CountedCompleter;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;I)I"
        }
    .end annotation

    invoke-static {}, Ljava9/util/concurrent/TLRandom;->getProbe()I

    move-result v0

    iget-object v1, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x7e

    aget-object v0, v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->sharedHelpCC(Ljava9/util/concurrent/CountedCompleter;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final externalPush(Ljava9/util/concurrent/ForkJoinTask;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Ljava9/util/concurrent/TLRandom;->getProbe()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava9/util/concurrent/TLRandom;->localInit()V

    invoke-static {}, Ljava9/util/concurrent/TLRandom;->getProbe()I

    move-result v0

    :cond_0
    :goto_0
    iget v1, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    iget-object v2, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    const/high16 v3, 0x40000

    and-int/2addr v1, v3

    if-nez v1, :cond_a

    if-eqz v2, :cond_a

    array-length v1, v2

    if-lez v1, :cond_a

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    and-int/lit8 v1, v1, 0x7e

    aget-object v1, v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Ljava9/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    const/high16 v4, 0x40000000    # 2.0f

    or-int v5, v0, v4

    const v6, -0x10002

    and-int/2addr v5, v6

    new-instance v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava9/util/concurrent/ForkJoinPool;Ljava9/util/concurrent/ForkJoinWorkerThread;)V

    iput v5, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    iput v4, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    iput v3, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    if-eqz v1, :cond_2

    monitor-enter v1

    :try_start_0
    iget-object v4, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v4, :cond_1

    array-length v7, v4

    if-lez v7, :cond_1

    add-int/lit8 v7, v7, -0x1

    and-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x7e

    aget-object v7, v4, v5

    if-nez v7, :cond_1

    aput-object v6, v4, v5

    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    move-object v1, v6

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->tryLockSharedQueue()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v5, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget-object v6, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v6, :cond_5

    array-length v7, v6

    if-lez v7, :cond_5

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v4, v5

    add-int v8, v7, v4

    if-lez v8, :cond_5

    and-int/2addr v7, v5

    aput-object p1, v6, v7

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iput v2, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    if-gez v4, :cond_4

    iget v4, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v4, v5

    const/4 v5, -0x1

    if-ge v4, v5, :cond_4

    goto :goto_6

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    const/4 v5, 0x1

    :goto_3
    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    if-eqz v4, :cond_9

    if-eqz v5, :cond_8

    :try_start_1
    invoke-virtual {v1}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava9/util/concurrent/ForkJoinTask;

    iget v0, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget-object v4, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v4, :cond_7

    array-length v5, v4

    if-lez v5, :cond_7

    sub-int/2addr v5, v3

    and-int/2addr v5, v0

    aput-object p1, v4, v5

    add-int/2addr v0, v3

    iput v0, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_7
    iput v2, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    goto :goto_5

    :catchall_1
    move-exception p1

    iput v2, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    throw p1

    :cond_8
    :goto_5
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinPool;->signalWork()V

    :goto_6
    return-void

    :cond_9
    invoke-static {v0}, Ljava9/util/concurrent/TLRandom;->advanceProbe(I)I

    move-result v0

    goto/16 :goto_0

    :cond_a
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw p1
.end method

.method public getActiveThreadCount()I
    .locals 4

    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-wide v1, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v3, 0x30

    shr-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getAsyncMode()Z
    .locals 2

    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFactory()Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1

    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool;->factory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    return-object v0
.end method

.method public getParallelism()I
    .locals 2

    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const v1, 0xffff

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getPoolSize()I
    .locals 4

    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-wide v1, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v2, v1

    int-to-short v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getQueuedSubmissionCount()I
    .locals 4

    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public getQueuedTaskCount()J
    .locals 6

    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getRunningThreadCount()I
    .locals 4

    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getStealCount()J
    .locals 8

    iget-wide v0, p0, Ljava9/util/concurrent/ForkJoinPool;->stealCount:J

    iget-object v2, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    if-eqz v4, :cond_0

    iget v4, v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public hasQueuedSubmissions()Z
    .locals 4

    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method final helpComplete(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;Ljava9/util/concurrent/CountedCompleter;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;I)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->localHelpCC(Ljava9/util/concurrent/CountedCompleter;I)I

    move-result p1

    :goto_0
    return p1
.end method

.method final helpQuiescePool(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    iget v3, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    const/4 v4, -0x1

    move v6, v2

    const/4 v5, -0x1

    :goto_0
    const/4 v7, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v1, v7}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->localPollAndExec(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v7}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->localPopAndExec(I)V

    :goto_1
    if-ne v5, v4, :cond_1

    iget v9, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    if-ltz v9, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-static {}, Ljava9/util/concurrent/TLRandom;->nextSecondarySeed()I

    move-result v9

    iget-object v10, v0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    const-wide/high16 v11, 0x1000000000000L

    if-eqz v10, :cond_7

    array-length v14, v10

    add-int/lit8 v15, v14, -0x1

    move/from16 v16, v14

    const/16 v17, 0x1

    :goto_2
    if-lez v16, :cond_6

    sub-int v18, v9, v16

    and-int v4, v18, v15

    if-ltz v4, :cond_5

    if-ge v4, v14, :cond_5

    aget-object v4, v10, v4

    if-eqz v4, :cond_5

    iget v7, v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v8, v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v8, v7, v8

    if-gez v8, :cond_4

    iget-object v8, v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v8, :cond_4

    array-length v13, v8

    if-lez v13, :cond_4

    iget v9, v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    if-nez v5, :cond_2

    sget-wide v9, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    invoke-static {v0, v9, v10, v11, v12}, Ljava9/util/concurrent/ForkJoinPool;->getAndAddLong(Ljava/lang/Object;JJ)J

    const/4 v5, 0x1

    :cond_2
    add-int/lit8 v13, v13, -0x1

    and-int v9, v13, v7

    int-to-long v9, v9

    sget v13, Ljava9/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long/2addr v9, v13

    sget v13, Ljava9/util/concurrent/ForkJoinPool;->ABASE:I

    int-to-long v13, v13

    add-long/2addr v9, v13

    sget-object v13, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v13, v8, v9, v10}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v14, :cond_3

    add-int/lit8 v15, v7, 0x1

    iget v11, v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v7, v11, :cond_3

    const/16 v24, 0x0

    move-object/from16 v19, v13

    move-object/from16 v20, v8

    move-wide/from16 v21, v9

    move-object/from16 v23, v14

    invoke-static/range {v19 .. v24}, Ljava9/util/concurrent/ForkJoinPool$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iput v15, v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v4, v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    iput v4, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    invoke-virtual {v14}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    iput v2, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    move v6, v2

    :cond_3
    const/4 v4, 0x0

    const/16 v17, 0x0

    goto :goto_3

    :cond_4
    iget v4, v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v4, v7

    if-nez v4, :cond_5

    const/16 v17, 0x0

    :cond_5
    add-int/lit8 v16, v16, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    const-wide/high16 v11, 0x1000000000000L

    goto :goto_2

    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x1

    const/16 v17, 0x1

    :goto_3
    if-eqz v17, :cond_9

    if-nez v5, :cond_8

    sget-wide v3, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    const-wide/high16 v5, 0x1000000000000L

    invoke-static {v0, v3, v4, v5, v6}, Ljava9/util/concurrent/ForkJoinPool;->getAndAddLong(Ljava/lang/Object;JJ)J

    :cond_8
    iput v2, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    return-void

    :cond_9
    if-eqz v4, :cond_c

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v6, v4, :cond_a

    iput v4, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    const/4 v4, 0x1

    const/high16 v13, 0x40000000    # 2.0f

    goto :goto_4

    :cond_a
    move v13, v6

    const/4 v4, 0x1

    :goto_4
    if-ne v5, v4, :cond_b

    sget-wide v4, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    const-wide/high16 v6, -0x1000000000000L

    invoke-static {v0, v4, v5, v6, v7}, Ljava9/util/concurrent/ForkJoinPool;->getAndAddLong(Ljava/lang/Object;JJ)J

    move v6, v13

    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    move v6, v13

    :cond_c
    :goto_5
    const/4 v4, -0x1

    goto/16 :goto_0
.end method

.method public invoke(Ljava9/util/concurrent/ForkJoinTask;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/concurrent/ForkJoinTask;

    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    invoke-virtual {p1}, Ljava9/util/concurrent/ForkJoinTask;->join()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Callable;

    new-instance v3, Ljava9/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v3, v2}, Ljava9/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava9/util/concurrent/ForkJoinTask;

    invoke-virtual {v3}, Ljava9/util/concurrent/ForkJoinTask;->quietlyJoin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    throw p1
.end method

.method public isQuiescent()Z
    .locals 9

    :cond_0
    iget-wide v0, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    iget v2, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const v3, 0xffff

    and-int/2addr v3, v2

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    long-to-int v5, v4

    int-to-short v4, v5

    add-int/2addr v4, v3

    const/16 v5, 0x30

    shr-long v5, v0, v5

    long-to-int v6, v5

    add-int/2addr v3, v6

    const/high16 v5, -0x7ff80000

    and-int/2addr v2, v5

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    return v5

    :cond_1
    const/4 v2, 0x0

    if-lez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v3, :cond_5

    const/4 v6, 0x1

    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_5

    aget-object v7, v3, v6

    if-eqz v7, :cond_4

    iget v7, v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, v4, -0x1

    :cond_4
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_5
    if-nez v4, :cond_0

    iget-wide v2, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    return v5
.end method

.method public isShutdown()Z
    .locals 2

    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTerminated()Z
    .locals 2

    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTerminating()Z
    .locals 2

    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava9/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava9/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method final nextTaskFor(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)Ljava9/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinPool$WorkQueue;",
            ")",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget v0, p1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava9/util/concurrent/ForkJoinTask;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava9/util/concurrent/ForkJoinTask;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->pollScan(Z)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method protected pollSubmission()Ljava9/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinPool;->pollScan(Z)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method final registerWorker(Ljava9/util/concurrent/ForkJoinWorkerThread;)Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 14

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava9/util/concurrent/ForkJoinWorkerThread;->setDaemon(Z)V

    iget-object v1, p0, Ljava9/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava9/util/concurrent/ForkJoinWorkerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    new-instance v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-direct {v1, p0, p1}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava9/util/concurrent/ForkJoinPool;Ljava9/util/concurrent/ForkJoinWorkerThread;)V

    iget v2, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    iget-object v3, p0, Ljava9/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    if-eqz v3, :cond_9

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    iget v5, p0, Ljava9/util/concurrent/ForkJoinPool;->indexSeed:I

    const v6, -0x61c88647

    add-int/2addr v5, v6

    iput v5, p0, Ljava9/util/concurrent/ForkJoinPool;->indexSeed:I

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    array-length v7, v4

    if-le v7, v0, :cond_8

    add-int/lit8 v8, v7, -0x1

    and-int v9, v5, v8

    shl-int/lit8 v10, v5, 0x1

    or-int/2addr v10, v0

    and-int/2addr v10, v8

    ushr-int/lit8 v11, v7, 0x1

    :goto_0
    aget-object v12, v4, v10

    if-eqz v12, :cond_3

    iget v12, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    const/high16 v13, 0x40000000    # 2.0f

    if-ne v12, v13, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, -0x1

    if-nez v11, :cond_2

    or-int/lit8 v10, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v10, v10, 0x2

    and-int/2addr v10, v8

    goto :goto_0

    :cond_3
    :goto_1
    or-int/2addr v2, v10

    const/high16 v8, 0x3ffe0000    # 1.984375f

    and-int/2addr v5, v8

    or-int/2addr v2, v5

    iput v2, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    iput v2, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    if-ge v10, v7, :cond_4

    aput-object v1, v4, v10

    goto :goto_4

    :cond_4
    shl-int/lit8 v2, v7, 0x1

    new-array v5, v2, [Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    aput-object v1, v5, v10

    sub-int/2addr v2, v0

    :goto_2
    if-ge v6, v7, :cond_7

    aget-object v0, v4, v6

    if-eqz v0, :cond_5

    iget v8, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    and-int/2addr v8, v2

    and-int/lit8 v8, v8, 0x7e

    aput-object v0, v5, v8

    :cond_5
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v7, :cond_6

    goto :goto_3

    :cond_6
    aget-object v0, v4, v6

    aput-object v0, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    iput-object v5, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    :goto_4
    move v6, v9

    :cond_8
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava9/util/concurrent/ForkJoinWorkerThread;->setName(Ljava/lang/String;)V

    goto :goto_5

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_9
    :goto_5
    return-object v1
.end method

.method final runWorker(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava9/util/concurrent/ForkJoinTask;

    iget v0, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    invoke-static {}, Ljava9/util/concurrent/TLRandom;->nextSecondarySeed()I

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, v8, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v2, :cond_14

    array-length v3, v2

    add-int/lit8 v4, v3, -0x1

    move v12, v0

    move v0, v3

    const/4 v5, 0x0

    :goto_2
    if-lez v0, :cond_8

    and-int v7, v12, v4

    if-ltz v7, :cond_6

    if-ge v7, v3, :cond_6

    aget-object v7, v2, v7

    if-eqz v7, :cond_6

    iget v13, v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v14, v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v14, v13, v14

    if-gez v14, :cond_6

    iget-object v14, v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v14, :cond_6

    array-length v15, v14

    if-lez v15, :cond_6

    iget v5, v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    add-int/lit8 v15, v15, -0x1

    and-int/2addr v15, v13

    move/from16 v21, v12

    int-to-long v11, v15

    sget v15, Ljava9/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long/2addr v11, v15

    sget v15, Ljava9/util/concurrent/ForkJoinPool;->ABASE:I

    move-object/from16 v22, v7

    int-to-long v6, v15

    add-long/2addr v6, v11

    sget-object v15, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v15, v14, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v11, :cond_4

    add-int/lit8 v12, v13, 0x1

    move-object/from16 v10, v22

    move-object/from16 v22, v2

    iget v2, v10, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v13, v2, :cond_5

    const/16 v20, 0x0

    move-object/from16 v16, v14

    move-wide/from16 v17, v6

    move-object/from16 v19, v11

    invoke-static/range {v15 .. v20}, Ljava9/util/concurrent/ForkJoinPool$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput v12, v10, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v2, v10, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v12, v2

    if-gez v12, :cond_1

    if-eq v5, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava9/util/concurrent/ForkJoinPool;->signalWork()V

    :cond_1
    iput v5, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    invoke-virtual {v11}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    iget v1, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    const/16 v2, 0x400

    if-eqz v1, :cond_2

    invoke-virtual {v9, v2}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->localPollAndExec(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {v9, v2}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->localPopAndExec(I)V

    :goto_3
    iget-object v1, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava9/util/concurrent/ForkJoinWorkerThread;

    iget v2, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    const/4 v6, 0x1

    add-int/2addr v2, v6

    iput v2, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    const/4 v2, 0x0

    iput v2, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava9/util/concurrent/ForkJoinWorkerThread;->afterTopLevelExec()V

    :cond_3
    move v1, v5

    goto :goto_4

    :cond_4
    move-object/from16 v22, v2

    :cond_5
    :goto_4
    move/from16 v12, v21

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v22, v2

    move/from16 v21, v12

    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v12, v21, 0x1

    :goto_5
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v2, v22

    goto/16 :goto_2

    :cond_8
    move/from16 v21, v12

    :goto_6
    if-eqz v5, :cond_9

    shl-int/lit8 v0, v21, 0xd

    xor-int v0, v21, v0

    ushr-int/lit8 v2, v0, 0x11

    xor-int/2addr v0, v2

    shl-int/lit8 v2, v0, 0x5

    xor-int/2addr v0, v2

    goto/16 :goto_1

    :cond_9
    iget v10, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    const-wide v11, 0xffffffffL

    const-wide v13, -0x100000000L

    if-ltz v10, :cond_b

    const/high16 v0, 0x10000

    add-int/2addr v10, v0

    const/high16 v0, -0x80000000

    or-int v15, v10, v0

    iput v15, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    :cond_a
    iget-wide v4, v8, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    long-to-int v0, v4

    iput v0, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    const-wide/high16 v0, 0x1000000000000L

    sub-long v0, v4, v0

    and-long/2addr v0, v13

    int-to-long v2, v15

    and-long/2addr v2, v11

    or-long v6, v0, v2

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_b
    iget v15, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    const/high16 v0, -0x40000000    # -2.0f

    iput v0, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    const/4 v2, 0x0

    :goto_7
    iget v0, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    if-ltz v0, :cond_c

    const/4 v0, 0x0

    iput v0, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    :goto_8
    move/from16 v0, v21

    goto/16 :goto_0

    :cond_c
    iget v0, v8, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    if-gez v0, :cond_d

    return-void

    :cond_d
    const v1, 0xffff

    and-int/2addr v1, v0

    iget-wide v4, v8, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v3, 0x30

    shr-long v6, v4, v3

    long-to-int v3, v6

    add-int/2addr v1, v3

    if-gtz v1, :cond_e

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_e

    const/4 v6, 0x0

    invoke-direct {v8, v6, v6}, Ljava9/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_e
    const/4 v6, 0x0

    :cond_f
    const/16 v16, 0x1

    add-int/lit8 v17, v2, 0x1

    and-int/lit8 v0, v17, 0x1

    if-nez v0, :cond_11

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    :cond_10
    const/16 v20, 0x0

    goto :goto_9

    :cond_11
    if-gtz v1, :cond_12

    if-eqz v15, :cond_12

    long-to-int v0, v4

    if-ne v10, v0, :cond_12

    iget-wide v0, v8, Ljava9/util/concurrent/ForkJoinPool;->keepAlive:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v8, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    iget-wide v2, v8, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v7, v2, v4

    if-nez v7, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x14

    cmp-long v7, v0, v2

    if-gtz v7, :cond_10

    const-wide v0, 0x100000000L

    sub-long v0, v4, v0

    and-long/2addr v0, v13

    int-to-long v2, v15

    and-long/2addr v2, v11

    or-long v18, v0, v2

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    const/16 v20, 0x0

    move-wide/from16 v6, v18

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_13

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    return-void

    :cond_12
    const/16 v20, 0x0

    invoke-static/range {p0 .. p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    :cond_13
    :goto_9
    move/from16 v2, v17

    goto/16 :goto_7

    :cond_14
    return-void
.end method

.method public shutdown()V
    .locals 2

    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->checkPermission()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava9/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->checkPermission()V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Ljava9/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final signalWork()V
    .locals 14

    :cond_0
    iget-wide v4, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    long-to-int v2, v4

    if-nez v2, :cond_2

    const-wide v2, 0x800000000000L

    and-long/2addr v2, v4

    cmp-long v6, v2, v0

    if-eqz v6, :cond_6

    invoke-direct {p0, v4, v5}, Ljava9/util/concurrent/ForkJoinPool;->tryAddWorker(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    array-length v1, v0

    const v3, 0xffff

    and-int/2addr v3, v2

    if-gt v1, v3, :cond_4

    goto :goto_0

    :cond_4
    aget-object v8, v0, v3

    if-nez v8, :cond_5

    goto :goto_0

    :cond_5
    const v0, 0x7fffffff

    and-int v9, v2, v0

    iget v0, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    iget v1, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v6, v1

    const-wide v10, 0xffffffffL

    and-long/2addr v6, v10

    const-wide/high16 v10, 0x1000000000000L

    add-long/2addr v10, v4

    const-wide v12, -0x100000000L

    and-long/2addr v10, v12

    or-long/2addr v6, v10

    iget-object v10, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-ne v2, v0, :cond_0

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v9, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    iget v0, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    if-gez v0, :cond_6

    invoke-static {v10}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/Callable;)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;)Ljava9/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_0

    check-cast p1, Ljava9/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p1}, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava9/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava9/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava9/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava9/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;)",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-wide v0, p0, Ljava9/util/concurrent/ForkJoinPool;->stealCount:J

    iget-object v2, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    if-eqz v2, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    array-length v10, v2

    if-ge v8, v10, :cond_3

    aget-object v10, v2, v8

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v11

    and-int/lit8 v12, v8, 0x1

    if-nez v12, :cond_0

    int-to-long v10, v11

    add-long/2addr v6, v10

    goto :goto_1

    :cond_0
    int-to-long v11, v11

    add-long/2addr v3, v11

    iget v11, v10, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v11, v11

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    add-long/2addr v0, v11

    invoke-virtual {v10}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :cond_3
    iget v2, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const v8, 0xffff

    and-int/2addr v8, v2

    iget-wide v10, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v12, 0x20

    ushr-long v12, v10, v12

    long-to-int v13, v12

    int-to-short v12, v13

    add-int/2addr v12, v8

    const/16 v13, 0x30

    shr-long/2addr v10, v13

    long-to-int v11, v10

    add-int/2addr v11, v8

    if-gez v11, :cond_4

    goto :goto_2

    :cond_4
    move v5, v11

    :goto_2
    const/high16 v10, 0x80000

    and-int/2addr v10, v2

    if-eqz v10, :cond_5

    const-string v2, "Terminated"

    goto :goto_3

    :cond_5
    const/high16 v10, -0x80000000

    and-int/2addr v10, v2

    if-eqz v10, :cond_6

    const-string v2, "Terminating"

    goto :goto_3

    :cond_6
    const/high16 v10, 0x40000

    and-int/2addr v2, v10

    if-eqz v2, :cond_7

    const-string v2, "Shutting down"

    goto :goto_3

    :cond_7
    const-string v2, "Running"

    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", parallelism = "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size = "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", active = "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", running = "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", steals = "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", tasks = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", submissions = "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final tryExternalUnpush(Ljava9/util/concurrent/ForkJoinTask;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {}, Ljava9/util/concurrent/TLRandom;->getProbe()I

    move-result v0

    iget-object v1, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x7e

    aget-object v0, v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->trySharedUnpush(Ljava9/util/concurrent/ForkJoinTask;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method
