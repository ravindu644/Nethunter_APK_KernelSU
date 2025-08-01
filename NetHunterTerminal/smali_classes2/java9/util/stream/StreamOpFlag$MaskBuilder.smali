.class Ljava9/util/stream/StreamOpFlag$MaskBuilder;
.super Ljava/lang/Object;
.source "StreamOpFlag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamOpFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaskBuilder"
.end annotation


# instance fields
.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava9/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava9/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava9/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method build()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava9/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava9/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/concurrent/ConcurrentMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Ljava9/util/stream/StreamOpFlag$Type;->values()[Ljava9/util/stream/StreamOpFlag$Type;

    move-result-object v1

    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v1, v2

    invoke-interface {v0, v5, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava9/util/stream/StreamOpFlag$Type;->values()[Ljava9/util/stream/StreamOpFlag$Type;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    iget-object v5, p0, Ljava9/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    invoke-static {v5, v4, v3}, Ljava9/util/Maps;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ljava9/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    return-object v0
.end method

.method clear(Ljava9/util/stream/StreamOpFlag$Type;)Ljava9/util/stream/StreamOpFlag$MaskBuilder;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava9/util/stream/StreamOpFlag$MaskBuilder;->mask(Ljava9/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljava9/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method mask(Ljava9/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljava9/util/stream/StreamOpFlag$MaskBuilder;
    .locals 1

    iget-object v0, p0, Ljava9/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method set(Ljava9/util/stream/StreamOpFlag$Type;)Ljava9/util/stream/StreamOpFlag$MaskBuilder;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava9/util/stream/StreamOpFlag$MaskBuilder;->mask(Ljava9/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljava9/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method setAndClear(Ljava9/util/stream/StreamOpFlag$Type;)Ljava9/util/stream/StreamOpFlag$MaskBuilder;
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava9/util/stream/StreamOpFlag$MaskBuilder;->mask(Ljava9/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljava9/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object p1

    return-object p1
.end method
