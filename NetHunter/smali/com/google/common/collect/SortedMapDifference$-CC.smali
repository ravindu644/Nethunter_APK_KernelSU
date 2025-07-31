.class public final synthetic Lcom/google/common/collect/SortedMapDifference$-CC;
.super Ljava/lang/Object;
.source "SortedMapDifference.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x8
    versionHash = "7a5b85d3ee2e0991ca3502602e9389a98f55c0576b887125894a7ec03823f8d3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static bridge synthetic $default$entriesDiffering(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .locals 1
    .param p0, "_this"    # Lcom/google/common/collect/SortedMapDifference;

    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesDiffering()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$entriesInCommon(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .locals 1
    .param p0, "_this"    # Lcom/google/common/collect/SortedMapDifference;

    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesInCommon()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$entriesOnlyOnLeft(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .locals 1
    .param p0, "_this"    # Lcom/google/common/collect/SortedMapDifference;

    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesOnlyOnLeft()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$entriesOnlyOnRight(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .locals 1
    .param p0, "_this"    # Lcom/google/common/collect/SortedMapDifference;

    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesOnlyOnRight()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
