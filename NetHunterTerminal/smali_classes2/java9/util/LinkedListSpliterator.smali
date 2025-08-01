.class final Ljava9/util/LinkedListSpliterator;
.super Ljava/lang/Object;
.source "LinkedListSpliterator.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final BATCH_UNIT:I = 0x400

.field private static final FIRST_OFF:J

.field private static final IS_HARMONY:Z

.field private static final IS_JAVA6:Z

.field private static final MAX_BATCH:I = 0x2000000

.field private static final MODCOUNT_OFF:J

.field private static final NODE_ITEM_OFF:J

.field private static final NODE_NEXT_OFF:J

.field private static final SIZE_OFF:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private batch:I

.field private current:Ljava/lang/Object;

.field private final endOfList:Ljava/lang/Object;

.field private est:I

.field private expectedModCount:I

.field private final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-boolean v0, Ljava9/util/Spliterators;->IS_HARMONY_ANDROID:Z

    sput-boolean v0, Ljava9/util/LinkedListSpliterator;->IS_HARMONY:Z

    sget-boolean v1, Ljava9/util/Spliterators;->IS_JAVA6:Z

    sput-boolean v1, Ljava9/util/LinkedListSpliterator;->IS_JAVA6:Z

    sget-object v2, Ljava9/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v2, Ljava9/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    :try_start_0
    const-class v3, Ljava/util/AbstractList;

    const-string v4, "modCount"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Ljava9/util/LinkedListSpliterator;->MODCOUNT_OFF:J

    if-eqz v0, :cond_0

    const-string v3, "voidLink"

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "header"

    goto :goto_0

    :cond_1
    const-string v3, "first"

    :goto_0
    if-eqz v0, :cond_2

    const-string v4, "java.util.LinkedList$Link"

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const-string v4, "java.util.LinkedList$Entry"

    goto :goto_1

    :cond_3
    const-string v4, "java.util.LinkedList$Node"

    :goto_1
    if-eqz v0, :cond_4

    const-string v0, "data"

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    const-string v0, "element"

    goto :goto_2

    :cond_5
    const-string v0, "item"

    :goto_2
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v4, Ljava/util/LinkedList;

    const-string v5, "size"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava9/util/LinkedListSpliterator;->SIZE_OFF:J

    const-class v4, Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Ljava9/util/LinkedListSpliterator;->FIRST_OFF:J

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Ljava9/util/LinkedListSpliterator;->NODE_ITEM_OFF:J

    const-string v0, "next"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava9/util/LinkedListSpliterator;->NODE_NEXT_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/util/LinkedList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "TT;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/LinkedListSpliterator;->list:Ljava/util/LinkedList;

    iput p2, p0, Ljava9/util/LinkedListSpliterator;->est:I

    iput p3, p0, Ljava9/util/LinkedListSpliterator;->expectedModCount:I

    sget-boolean p2, Ljava9/util/LinkedListSpliterator;->IS_JAVA6:Z

    if-nez p2, :cond_1

    sget-boolean p2, Ljava9/util/LinkedListSpliterator;->IS_HARMONY:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava9/util/LinkedListSpliterator;->getHeader(Ljava/util/LinkedList;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Ljava9/util/LinkedListSpliterator;->endOfList:Ljava/lang/Object;

    return-void
.end method

.method private getEst()I
    .locals 2

    iget v0, p0, Ljava9/util/LinkedListSpliterator;->est:I

    if-gez v0, :cond_1

    iget-object v0, p0, Ljava9/util/LinkedListSpliterator;->list:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Ljava9/util/LinkedListSpliterator;->est:I

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava9/util/LinkedListSpliterator;->getModCount(Ljava/util/LinkedList;)I

    move-result v1

    iput v1, p0, Ljava9/util/LinkedListSpliterator;->expectedModCount:I

    invoke-direct {p0, v0}, Ljava9/util/LinkedListSpliterator;->getFirst(Ljava/util/LinkedList;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava9/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    invoke-static {v0}, Ljava9/util/LinkedListSpliterator;->getSize(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Ljava9/util/LinkedListSpliterator;->est:I

    :cond_1
    :goto_0
    return v0
.end method

.method private getFirst(Ljava/util/LinkedList;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-boolean v0, Ljava9/util/LinkedListSpliterator;->IS_JAVA6:Z

    if-nez v0, :cond_1

    sget-boolean v0, Ljava9/util/LinkedListSpliterator;->IS_HARMONY:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava9/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LinkedListSpliterator;->FIRST_OFF:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Ljava9/util/LinkedListSpliterator;->endOfList:Ljava/lang/Object;

    invoke-static {p1}, Ljava9/util/LinkedListSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static getHeader(Ljava/util/LinkedList;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Ljava9/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LinkedListSpliterator;->FIRST_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getModCount(Ljava/util/LinkedList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "*>;)I"
        }
    .end annotation

    sget-object v0, Ljava9/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LinkedListSpliterator;->MODCOUNT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method private static getNextNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-eqz p0, :cond_0

    sget-object v0, Ljava9/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LinkedListSpliterator;->NODE_NEXT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method private static getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Ljava9/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LinkedListSpliterator;->NODE_ITEM_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method private static getSize(Ljava/util/LinkedList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "*>;)I"
        }
    .end annotation

    sget-object v0, Ljava9/util/LinkedListSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/LinkedListSpliterator;->SIZE_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static spliterator(Ljava/util/LinkedList;)Ljava9/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/LinkedList<",
            "TE;>;)",
            "Ljava9/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava9/util/LinkedListSpliterator;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava9/util/LinkedListSpliterator;-><init>(Ljava/util/LinkedList;II)V

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

    invoke-direct {p0}, Ljava9/util/LinkedListSpliterator;->getEst()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava9/util/LinkedListSpliterator;->endOfList:Ljava/lang/Object;

    invoke-direct {p0}, Ljava9/util/LinkedListSpliterator;->getEst()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Ljava9/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    if-eq v2, v0, :cond_1

    iput-object v0, p0, Ljava9/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Ljava9/util/LinkedListSpliterator;->est:I

    :cond_0
    invoke-static {v2}, Ljava9/util/LinkedListSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava9/util/LinkedListSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    if-eq v2, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    :cond_1
    iget p1, p0, Ljava9/util/LinkedListSpliterator;->expectedModCount:I

    iget-object v0, p0, Ljava9/util/LinkedListSpliterator;->list:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava9/util/LinkedListSpliterator;->getModCount(Ljava/util/LinkedList;)I

    move-result v0

    if-ne p1, v0, :cond_2

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava9/util/LinkedListSpliterator;->endOfList:Ljava/lang/Object;

    invoke-direct {p0}, Ljava9/util/LinkedListSpliterator;->getEst()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Ljava9/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    if-eq v1, v0, :cond_1

    iget v0, p0, Ljava9/util/LinkedListSpliterator;->est:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Ljava9/util/LinkedListSpliterator;->est:I

    invoke-static {v1}, Ljava9/util/LinkedListSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Ljava9/util/LinkedListSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava9/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget p1, p0, Ljava9/util/LinkedListSpliterator;->expectedModCount:I

    iget-object v0, p0, Ljava9/util/LinkedListSpliterator;->list:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava9/util/LinkedListSpliterator;->getModCount(Ljava/util/LinkedList;)I

    move-result v0

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava9/util/LinkedListSpliterator;->endOfList:Ljava/lang/Object;

    invoke-direct {p0}, Ljava9/util/LinkedListSpliterator;->getEst()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    iget-object v2, p0, Ljava9/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    if-eq v2, v0, :cond_4

    iget v3, p0, Ljava9/util/LinkedListSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    if-le v3, v1, :cond_0

    move v3, v1

    :cond_0
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_1

    const/high16 v3, 0x2000000

    :cond_1
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2}, Ljava9/util/LinkedListSpliterator;->getNodeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v2}, Ljava9/util/LinkedListSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_3

    if-lt v7, v3, :cond_2

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_0

    :cond_3
    :goto_1
    iput-object v2, p0, Ljava9/util/LinkedListSpliterator;->current:Ljava/lang/Object;

    iput v7, p0, Ljava9/util/LinkedListSpliterator;->batch:I

    sub-int/2addr v1, v7

    iput v1, p0, Ljava9/util/LinkedListSpliterator;->est:I

    const/16 v0, 0x10

    invoke-static {v4, v5, v7, v0}, Ljava9/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava9/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method
