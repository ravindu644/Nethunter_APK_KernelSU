.class final Lcom/google/common/collect/Iterators$SingletonIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final SENTINEL:Ljava/lang/Object;


# instance fields
.field private valueOrSentinel:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/collect/Iterators$SingletonIterator;->SENTINEL:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
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
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Iterators$SingletonIterator;->valueOrSentinel:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Iterators$SingletonIterator;->valueOrSentinel:Ljava/lang/Object;

    sget-object v1, Lcom/google/common/collect/Iterators$SingletonIterator;->SENTINEL:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Iterators$SingletonIterator;->valueOrSentinel:Ljava/lang/Object;

    sget-object v1, Lcom/google/common/collect/Iterators$SingletonIterator;->SENTINEL:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lcom/google/common/collect/Iterators$SingletonIterator;->valueOrSentinel:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
