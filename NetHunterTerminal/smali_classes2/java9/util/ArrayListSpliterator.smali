.class final Ljava9/util/ArrayListSpliterator;
.super Ljava/lang/Object;
.source "ArrayListSpliterator.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final DATA_OFF:J

.field private static final MODCOUNT_OFF:J

.field private static final SIZE_OFF:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava9/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava9/util/ArrayListSpliterator;->U:Lsun/misc/Unsafe;

    :try_start_0
    const-class v1, Ljava/util/AbstractList;

    const-string v2, "modCount"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava9/util/ArrayListSpliterator;->MODCOUNT_OFF:J

    const-class v1, Ljava/util/ArrayList;

    const-string v2, "size"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava9/util/ArrayListSpliterator;->SIZE_OFF:J

    sget-boolean v1, Ljava9/util/Spliterators;->IS_HARMONY_ANDROID:Z

    if-eqz v1, :cond_0

    const-string v1, "array"

    goto :goto_0

    :cond_0
    const-string v1, "elementData"

    :goto_0
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava9/util/ArrayListSpliterator;->DATA_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/util/ArrayList;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TE;>;III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    iput p2, p0, Ljava9/util/ArrayListSpliterator;->index:I

    iput p3, p0, Ljava9/util/ArrayListSpliterator;->fence:I

    iput p4, p0, Ljava9/util/ArrayListSpliterator;->expectedModCount:I

    return-void
.end method

.method private static getData(Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava9/util/ArrayListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/ArrayListSpliterator;->DATA_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private getFence()I
    .locals 2

    iget v0, p0, Ljava9/util/ArrayListSpliterator;->fence:I

    if-gez v0, :cond_0

    iget-object v0, p0, Ljava9/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava9/util/ArrayListSpliterator;->getModCount(Ljava/util/ArrayList;)I

    move-result v1

    iput v1, p0, Ljava9/util/ArrayListSpliterator;->expectedModCount:I

    invoke-static {v0}, Ljava9/util/ArrayListSpliterator;->getSize(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Ljava9/util/ArrayListSpliterator;->fence:I

    :cond_0
    return v0
.end method

.method private static getModCount(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)I"
        }
    .end annotation

    sget-object v0, Ljava9/util/ArrayListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/ArrayListSpliterator;->MODCOUNT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method private static getSize(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)I"
        }
    .end annotation

    sget-object v0, Ljava9/util/ArrayListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/ArrayListSpliterator;->SIZE_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static spliterator(Ljava/util/ArrayList;)Ljava9/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava9/util/ArrayListSpliterator;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v1}, Ljava9/util/ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 2

    invoke-direct {p0}, Ljava9/util/ArrayListSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava9/util/ArrayListSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava9/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava9/util/ArrayListSpliterator;->getData(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, p0, Ljava9/util/ArrayListSpliterator;->fence:I

    if-gez v2, :cond_0

    invoke-static {v0}, Ljava9/util/ArrayListSpliterator;->getModCount(Ljava/util/ArrayList;)I

    move-result v2

    invoke-static {v0}, Ljava9/util/ArrayListSpliterator;->getSize(Ljava/util/ArrayList;)I

    move-result v3

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_0

    :cond_0
    iget v3, p0, Ljava9/util/ArrayListSpliterator;->expectedModCount:I

    :goto_0
    iget v4, p0, Ljava9/util/ArrayListSpliterator;->index:I

    if-ltz v4, :cond_2

    iput v2, p0, Ljava9/util/ArrayListSpliterator;->index:I

    array-length v5, v1

    if-gt v2, v5, :cond_2

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-interface {p1, v5}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava9/util/ArrayListSpliterator;->getModCount(Ljava/util/ArrayList;)I

    move-result p1

    if-ne v3, p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    invoke-static {p0}, Ljava9/util/Spliterator$-CC;->$default$getComparator(Ljava9/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Ljava9/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Ljava9/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Ljava9/util/Spliterator$-CC;->$default$hasCharacteristics(Ljava9/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava9/util/ArrayListSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava9/util/ArrayListSpliterator;->index:I

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Ljava9/util/ArrayListSpliterator;->index:I

    iget-object v0, p0, Ljava9/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava9/util/ArrayListSpliterator;->getData(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget p1, p0, Ljava9/util/ArrayListSpliterator;->expectedModCount:I

    iget-object v0, p0, Ljava9/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava9/util/ArrayListSpliterator;->getModCount(Ljava/util/ArrayList;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Ljava9/util/ArrayListSpliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/ArrayListSpliterator<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Ljava9/util/ArrayListSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava9/util/ArrayListSpliterator;->index:I

    add-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava9/util/ArrayListSpliterator;

    iget-object v3, p0, Ljava9/util/ArrayListSpliterator;->list:Ljava/util/ArrayList;

    iput v0, p0, Ljava9/util/ArrayListSpliterator;->index:I

    iget v4, p0, Ljava9/util/ArrayListSpliterator;->expectedModCount:I

    invoke-direct {v2, v3, v1, v0, v4}, Ljava9/util/ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava9/util/ArrayListSpliterator;->trySplit()Ljava9/util/ArrayListSpliterator;

    move-result-object v0

    return-object v0
.end method
