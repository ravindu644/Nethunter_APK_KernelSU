.class final Ljava9/util/ImmutableCollections$List12;
.super Ljava9/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "List12"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/ImmutableCollections$AbstractImmutableList<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final e0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final e1:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava9/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    sget-object p1, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    iput-object p1, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava9/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "not serial proxy"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava9/util/ColSer;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-direct {v0, v3, v1}, Ljava9/util/ColSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava9/util/ColSer;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v4, v1, v2

    iget-object v2, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-direct {v0, v3, v1}, Ljava9/util/ColSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    iget-object p1, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Ljava9/util/ImmutableCollections$List12;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object p1

    throw p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    sget-object v1, Ljava9/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v1, v0, v3

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v1, v0, v3

    iget-object v1, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    aput-object v1, v0, v2

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava9/util/ImmutableCollections$List12;->size()I

    move-result v0

    array-length v1, p1

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Ljava9/util/ImmutableCollections$List12;->e0:Ljava/lang/Object;

    aput-object v2, p1, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Ljava9/util/ImmutableCollections$List12;->e1:Ljava/lang/Object;

    aput-object v2, p1, v1

    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_2
    return-object p1
.end method
