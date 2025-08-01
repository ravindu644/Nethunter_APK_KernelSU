.class final Ljava9/util/ImmutableCollections$ListItr;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private final isListIterator:Z

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    iput p2, p0, Ljava9/util/ImmutableCollections$ListItr;->size:I

    const/4 p1, 0x0

    iput p1, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    iput-boolean p1, p0, Ljava9/util/ImmutableCollections$ListItr;->isListIterator:Z

    return-void
.end method

.method constructor <init>(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    iput p2, p0, Ljava9/util/ImmutableCollections$ListItr;->size:I

    iput p3, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljava9/util/ImmutableCollections$ListItr;->isListIterator:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    iget v1, p0, Ljava9/util/ImmutableCollections$ListItr;->size:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    iget-boolean v0, p0, Ljava9/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_1

    iget v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :try_start_0
    iget v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    iget-object v1, p0, Ljava9/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    iget-boolean v0, p0, Ljava9/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    return v0

    :cond_0
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-boolean v0, p0, Ljava9/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Ljava9/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    iget-boolean v0, p0, Ljava9/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava9/util/ImmutableCollections$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public remove()V
    .locals 1

    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method
