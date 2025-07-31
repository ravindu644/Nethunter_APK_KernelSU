.class Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;
.super Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;
.source "PeriodFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegExAffix"
.end annotation


# static fields
.field private static final LENGTH_DESC_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final iPatterns:[Ljava/util/regex/Pattern;

.field private final iSuffixes:[Ljava/lang/String;

.field private final iSuffixesSortedDescByLength:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix$1;

    invoke-direct {v0}, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix$1;-><init>()V

    sput-object v0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->LENGTH_DESC_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;-><init>()V

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixes:[Ljava/lang/String;

    array-length p2, p1

    new-array p2, p2, [Ljava/util/regex/Pattern;

    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iPatterns:[Ljava/util/regex/Pattern;

    const/4 p2, 0x0

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_1

    invoke-static {}, Lorg/joda/time/format/PeriodFormatterBuilder;->access$200()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    aget-object v1, p1, p2

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    aget-object v0, p1, p2

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/format/PeriodFormatterBuilder;->access$200()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    aget-object v2, p1, p2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iPatterns:[Ljava/util/regex/Pattern;

    aput-object v0, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixes:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixesSortedDescByLength:[Ljava/lang/String;

    sget-object p2, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->LENGTH_DESC_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method private selectSuffixIndex(I)I
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iPatterns:[Ljava/util/regex/Pattern;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method


# virtual methods
.method public calculatePrintedLength(I)I
    .locals 1

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixes:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->selectSuffixIndex(I)I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method public getAffixes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixes:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/lang/String;I)I
    .locals 10

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixesSortedDescByLength:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v9, v0, v2

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, p1

    move v5, p2

    move-object v6, v9

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    not-int p1, p2

    return p1
.end method

.method public printTo(Ljava/io/Writer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixes:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->selectSuffixIndex(I)I

    move-result p2

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;I)V
    .locals 1

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixes:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->selectSuffixIndex(I)I

    move-result p2

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public scan(Ljava/lang/String;I)I
    .locals 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v7, p2

    :goto_0
    if-ge v7, v0, :cond_2

    iget-object v8, p0, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->iSuffixesSortedDescByLength:[Ljava/lang/String;

    array-length v9, v8

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v11, v8, v10

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p1

    move v3, v7

    move-object v4, v11

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1, p1, v7}, Lorg/joda/time/format/PeriodFormatterBuilder$RegExAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    return v7

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    not-int p1, p2

    return p1
.end method
