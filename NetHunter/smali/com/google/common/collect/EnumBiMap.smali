.class public final Lcom/google/common/collect/EnumBiMap;
.super Lcom/google/common/collect/AbstractBiMap;
.source "EnumBiMap.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum<",
        "TK;>;V:",
        "Ljava/lang/Enum<",
        "TV;>;>",
        "Lcom/google/common/collect/AbstractBiMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient keyTypeOrObjectUnderJ2cl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient valueTypeOrObjectUnderJ2cl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyTypeOrObjectUnderJ2cl",
            "valueTypeOrObjectUnderJ2cl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/google/common/collect/EnumBiMap;->keyTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/common/collect/EnumBiMap;->valueTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    return-void
.end method

.method public static create(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/common/collect/EnumBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyType",
            "valueType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Lcom/google/common/collect/EnumBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/EnumBiMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/EnumBiMap;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/EnumBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/EnumBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/EnumBiMap;->inferKeyTypeOrObjectUnderJ2cl(Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/EnumBiMap;->inferValueTypeOrObjectUnderJ2cl(Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/EnumBiMap;->create(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/common/collect/EnumBiMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/EnumBiMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method static inferKeyTypeOrObjectUnderJ2cl(Ljava/util/Map;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;>(",
            "Ljava/util/Map<",
            "TK;*>;)",
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/EnumBiMap;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/EnumBiMap;

    iget-object p0, p0, Lcom/google/common/collect/EnumBiMap;->keyTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/EnumHashBiMap;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/common/collect/EnumHashBiMap;

    iget-object p0, p0, Lcom/google/common/collect/EnumHashBiMap;->keyTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    invoke-static {p0}, Lcom/google/common/collect/Platform;->getDeclaringClassOrObjectForJ2cl(Ljava/lang/Enum;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static inferValueTypeOrObjectUnderJ2cl(Ljava/util/Map;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Ljava/util/Map<",
            "*TV;>;)",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/EnumBiMap;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/EnumBiMap;

    iget-object p0, p0, Lcom/google/common/collect/EnumBiMap;->valueTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    invoke-static {p0}, Lcom/google/common/collect/Platform;->getDeclaringClassOrObjectForJ2cl(Ljava/lang/Enum;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
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
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/collect/EnumBiMap;->keyTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    new-instance v0, Ljava/util/EnumMap;

    iget-object v1, p0, Lcom/google/common/collect/EnumBiMap;->keyTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/EnumMap;

    iget-object v2, p0, Lcom/google/common/collect/EnumBiMap;->valueTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/EnumBiMap;->setDelegates(Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMap(Ljava/util/Map;Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
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
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->keyTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMap(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method checkKey(Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method bridge synthetic checkKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumBiMap;->checkKey(Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method checkValue(Ljava/lang/Enum;)Ljava/lang/Enum;
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
            "(TV;)TV;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method bridge synthetic checkValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/EnumBiMap;->checkValue(Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clear()V
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
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
            "value"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->keyTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "map"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
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
            "key"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public valueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueTypeOrObjectUnderJ2cl:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
