.class public final Ljava9/util/OptionalLong;
.super Ljava/lang/Object;
.source "OptionalLong.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/OptionalLong$OLCache;
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava9/util/OptionalLong;


# instance fields
.field private final isPresent:Z

.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava9/util/OptionalLong;

    invoke-direct {v0}, Ljava9/util/OptionalLong;-><init>()V

    sput-object v0, Ljava9/util/OptionalLong;->EMPTY:Ljava9/util/OptionalLong;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava9/util/OptionalLong;->isPresent:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava9/util/OptionalLong;->value:J

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/OptionalLong;->isPresent:Z

    iput-wide p1, p0, Ljava9/util/OptionalLong;->value:J

    return-void
.end method

.method public static empty()Ljava9/util/OptionalLong;
    .locals 1

    sget-object v0, Ljava9/util/OptionalLong;->EMPTY:Ljava9/util/OptionalLong;

    return-object v0
.end method

.method public static of(J)Ljava9/util/OptionalLong;
    .locals 3

    const-wide/16 v0, -0x80

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x7f

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    sget-object v0, Ljava9/util/OptionalLong$OLCache;->cache:[Ljava9/util/OptionalLong;

    long-to-int p1, p0

    add-int/lit16 p1, p1, 0x80

    aget-object p0, v0, p1

    return-object p0

    :cond_0
    new-instance v0, Ljava9/util/OptionalLong;

    invoke-direct {v0, p0, p1}, Ljava9/util/OptionalLong;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava9/util/OptionalLong;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava9/util/OptionalLong;

    iget-boolean v1, p0, Ljava9/util/OptionalLong;->isPresent:Z

    if-eqz v1, :cond_2

    iget-boolean v3, p1, Ljava9/util/OptionalLong;->isPresent:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Ljava9/util/OptionalLong;->value:J

    iget-wide v5, p1, Ljava9/util/OptionalLong;->value:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    iget-boolean p1, p1, Ljava9/util/OptionalLong;->isPresent:Z

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAsLong()J
    .locals 2

    invoke-virtual {p0}, Ljava9/util/OptionalLong;->orElseThrow()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Ljava9/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava9/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Ljava9/lang/Longs;->hashCode(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ifPresent(Ljava9/util/function/LongConsumer;)V
    .locals 2

    iget-boolean v0, p0, Ljava9/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava9/util/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Ljava9/util/function/LongConsumer;->accept(J)V

    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Ljava9/util/function/LongConsumer;Ljava/lang/Runnable;)V
    .locals 2

    iget-boolean v0, p0, Ljava9/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava9/util/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Ljava9/util/function/LongConsumer;->accept(J)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Ljava9/util/OptionalLong;->isPresent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPresent()Z
    .locals 1

    iget-boolean v0, p0, Ljava9/util/OptionalLong;->isPresent:Z

    return v0
.end method

.method public orElse(J)J
    .locals 1

    iget-boolean v0, p0, Ljava9/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide p1, p0, Ljava9/util/OptionalLong;->value:J

    :cond_0
    return-wide p1
.end method

.method public orElseGet(Ljava9/util/function/LongSupplier;)J
    .locals 2

    iget-boolean v0, p0, Ljava9/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava9/util/OptionalLong;->value:J

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava9/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public orElseThrow()J
    .locals 2

    iget-boolean v0, p0, Ljava9/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava9/util/OptionalLong;->value:J

    return-wide v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orElseThrow(Ljava9/util/function/Supplier;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava9/util/function/Supplier<",
            "+TX;>;)J^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Ljava9/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava9/util/OptionalLong;->value:J

    return-wide v0

    :cond_0
    invoke-interface {p1}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public stream()Ljava9/util/stream/LongStream;
    .locals 2

    iget-boolean v0, p0, Ljava9/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava9/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Ljava9/util/stream/LongStream$-CC;->of(J)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava9/util/stream/LongStream$-CC;->empty()Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Ljava9/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Ljava9/util/OptionalLong;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OptionalLong[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "OptionalLong.empty"

    :goto_0
    return-object v0
.end method
