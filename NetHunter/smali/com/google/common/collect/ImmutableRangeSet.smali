.class public final Lcom/google/common/collect/ImmutableRangeSet;
.super Lcom/google/common/collect/AbstractRangeSet;
.source "ImmutableRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;,
        Lcom/google/common/collect/ImmutableRangeSet$Builder;,
        Lcom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;,
        Lcom/google/common/collect/ImmutableRangeSet$AsSet;,
        Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/AbstractRangeSet<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final EMPTY:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private transient complement:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final transient ranges:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableRangeSet;->EMPTY:Lcom/google/common/collect/ImmutableRangeSet;

    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableRangeSet;->ALL:Lcom/google/common/collect/ImmutableRangeSet;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ranges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/AbstractRangeSet;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableRangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ranges",
            "complement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/AbstractRangeSet;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableRangeSet;->complement:Lcom/google/common/collect/ImmutableRangeSet;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static all()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/ImmutableRangeSet;->ALL:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/ImmutableRangeSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/ImmutableRangeSet$Builder<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rangeSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/common/collect/RangeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/common/collect/RangeSet;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->all()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/google/common/collect/ImmutableRangeSet;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableRangeSet;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-interface {p0}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ranges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->build()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0
.end method

.method private intersectRanges(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    new-instance v1, Lcom/google/common/collect/ImmutableRangeMap$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableRangeMap$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    sget-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    new-instance v2, Lcom/google/common/collect/ImmutableRangeMap$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableRangeMap$$ExternalSyntheticLambda0;-><init>()V

    iget-object v3, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    :goto_1
    sub-int/2addr v1, v0

    if-nez v1, :cond_4

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v2, Lcom/google/common/collect/ImmutableRangeSet$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/common/collect/ImmutableRangeSet$1;-><init>(Lcom/google/common/collect/ImmutableRangeSet;IILcom/google/common/collect/Range;)V

    return-object v2

    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public static of()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/ImmutableRangeSet;->EMPTY:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method

.method public static of(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->all()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static toImmutableRangeSet()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>()",
            "Ljava/util/stream/Collector<",
            "Lcom/google/common/collect/Range<",
            "TE;>;*",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TE;>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/CollectCollectors;->toImmutableRangeSet()Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static unionOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ranges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/TreeRangeSet;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeRangeSet;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableRangeSet;->copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Lcom/google/common/collect/RangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public asDescendingSetOfRanges()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Range;->rangeLexOrdering()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic asDescendingSetOfRanges()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->asDescendingSetOfRanges()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public asRanges()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/Range;->rangeLexOrdering()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic asRanges()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->asRanges()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public asSet(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "domain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->of()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/DiscreteDomain;->maxValue()Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Neither the DiscreteDomain nor this range set are bounded above"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;-><init>(Lcom/google/common/collect/ImmutableRangeSet;Lcom/google/common/collect/DiscreteDomain;)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Neither the DiscreteDomain nor this range set are bounded below"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic clear()V
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/AbstractRangeSet;->clear()V

    return-void
.end method

.method public complement()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->complement:Lcom/google/common/collect/ImmutableRangeSet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->all()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->complement:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->complement:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;-><init>(Lcom/google/common/collect/ImmutableRangeSet;)V

    new-instance v1, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-direct {v1, v0, p0}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableRangeSet;)V

    iput-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->complement:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v1
.end method

.method public bridge synthetic complement()Lcom/google/common/collect/RangeSet;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->complement()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public difference(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/TreeRangeSet;->create(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/TreeRangeSet;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/RangeSet;->removeAll(Lcom/google/common/collect/RangeSet;)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method

.method public encloses(Lcom/google/common/collect/Range;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherRange"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    new-instance v1, Lcom/google/common/collect/ImmutableRangeMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableRangeMap$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic enclosesAll(Lcom/google/common/collect/RangeSet;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->enclosesAll(Lcom/google/common/collect/RangeSet;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic enclosesAll(Ljava/lang/Iterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ranges"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->enclosesAll(Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public intersection(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/TreeRangeSet;->create(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/TreeRangeSet;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->complement()Lcom/google/common/collect/RangeSet;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/collect/RangeSet;->removeAll(Lcom/google/common/collect/RangeSet;)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method

.method public intersects(Lcom/google/common/collect/Range;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherRange"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    new-instance v1, Lcom/google/common/collect/ImmutableRangeMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableRangeMap$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    new-instance v1, Lcom/google/common/collect/ImmutableRangeMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableRangeMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v2

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v2, v0

    :cond_0
    return-object v2
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Lcom/google/common/collect/RangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public span()Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet;->intersectRanges(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "range"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet;->subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method

.method public union(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->asRanges()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableRangeSet;->unionOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method
