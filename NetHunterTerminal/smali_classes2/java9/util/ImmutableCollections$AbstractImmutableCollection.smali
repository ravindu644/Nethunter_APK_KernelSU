.class abstract Ljava9/util/ImmutableCollections$AbstractImmutableCollection;
.super Ljava/util/AbstractCollection;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractImmutableCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public clear()V
    .locals 1

    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method
